<%--
  Created by IntelliJ IDEA.
  User: S2-PC157
  Date: 16/05/2025
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add New Restaurant</title>
  <link rel="stylesheet" href="css/styles.css">
</head>
<body>
<header>
  <div class="container">
    <h1>Restaurant Management System</h1>
    <nav>
      <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="restaurants.jsp">Restaurants</a></li>
        <li><a href="list_bookings.jsp">Bookings</a></li>
      </ul>
    </nav>
  </div>
</header>

<main class="container">
  <h2>Add New Restaurant</h2>

  <form action="create-restaurant" method="post" class="form">
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required>
    </div>

    <div class="form-group">
      <label for="address">Address:</label>
      <input type="text" id="address" name="address" required>
    </div>

    <div class="form-group">
      <label for="phone">Phone:</label>
      <input type="tel" id="phone" name="phone" required>
    </div>

    <div class="form-group">
      <label for="capacity">Capacity:</label>
      <input type="number" id="capacity" name="capacity" min="1" required>
    </div>

    <div class="form-actions">
      <a href="restaurants.jsp" class="button secondary">Cancel</a>
      <button type="submit" class="button">Create Restaurant</button>
    </div>
  </form>
</main>

<footer>
  <div class="container">
    <p>NOMBRE DEL RESTAURANTE</p>
  </div>
</footer>
</body>
</html>