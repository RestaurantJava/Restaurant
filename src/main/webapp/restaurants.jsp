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
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Bootstrap Bundle JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<header class="bg-primary text-white py-3 mb-4 rounded">
  <div class="container">
    <h1 class="text-white">Restaurant Management System</h1>
    <nav>
      <ul class="nav">
        <li class="nav-item"><a class="nav-link text-white" href="index.jsp">Home</a></li>
        <li class="nav-item"><a class="nav-link text-white active" href="restaurants.jsp">Restaurants</a></li>
        <li class="nav-item"><a class="nav-link text-white" href="bookings.jsp">Bookings</a></li>
      </ul>
    </nav>
  </div>
</header>

<main class="container py-4">
  <h2>Restaurants List</h2>
  <a href="add-restaurant.jsp" class="btn btn-success mb-3">Add New Restaurant</a>
  <div class="restaurant-list">
    <table class="table table-striped table-bordered">
      <thead>
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Address</th>
        <th>Type</th>
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
        <td><%= restaurant.getType() %></td>
        <td>
          <a href="restaurant-detail.jsp?id=<%= restaurant.getIdRestaurant() %>" class="btn btn-sm btn-info">Details</a>
          <a href="delete-restaurant?id=<%= restaurant.getIdRestaurant() %>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this restaurant?')">Delete</a>
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

<footer class="bg-light text-center py-3 mt-5 rounded">
  <div class="container">
    <p>Restaurant Management System</p>
  </div>
</footer>
</body>
</html>