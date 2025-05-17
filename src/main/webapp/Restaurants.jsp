<%--
  Created by IntelliJ IDEA.
  User: S2-PC157
  Date: 16/05/2025
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.svalero.restaurants.dao.RestaurantDao" %>
<%@ page import="com.svalero.restaurants.model.Restaurant" %>
<%@ page import="java.util.List" %>
<%@ page import="com.svalero.restaurants.database.Database" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Restaurants</title>
  <link rel="stylesheet" href="css/styles.css">
</head>
<body>
<header>
  <div class="container">
    <h1>Restaurant Management System</h1>
    <nav>
      <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="restaurants.jsp" class="active">Restaurants</a></li>
        <li><a href="bookings.jsp">Bookings</a></li>
      </ul>
    </nav>
  </div>
</header>

<main class="container">
  <h2>Restaurants List</h2>

  <div class="action-buttons">
    <a href="add-restaurant.jsp" class="button">Add New Restaurant</a>
  </div>

  <div class="restaurant-list">
    <table>
      <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Address</th>
        <th>Action</th>
      </tr>
      </thead>
      <tbody>
      <%
        try {
          // Create database connection
          Database database = new Database();
          database.connect();

          // Initialize RestaurantDao and get all restaurants
          RestaurantDao restaurantDao = new RestaurantDao(database.getConnection());
          List<Restaurant> restaurants = restaurantDao.getAllRestaurants();

          // Close database connection
          database.disconnect();

          // Display each restaurant in the table
          for (Restaurant restaurant : restaurants) {
      %>
      <tr>
        <td><%= restaurant.getIdRestaurant() %></td>
        <td><%= restaurant.getName() %></td>
        <td><%= restaurant.getAddress() %></td>
        <td>
          <a href="restaurant-detail.jsp?id=<%= restaurant.getIdRestaurant() %>" class="button small">Details</a>
          <a href="delete-restaurant?id=<%= restaurant.getIdRestaurant() %>" class="button small danger" onclick="return confirm('Are you sure you want to delete this restaurant?')">Delete</a>
        </td>
      </tr>
      <%
          }
        } catch (Exception e) {
          e.printStackTrace();
        }
      %>
      </tbody>
    </table>
  </div>
</main>

<footer>
  <div class="container">
    <p>NOMBRE DEL RESTAURANTE</p>
  </div>
</footer>
</body>
</html>