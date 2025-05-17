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
  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container py-4">
  <header class="bg-primary text-white py-3 mb-4 rounded">
    <div class="container">
      <h1 class="text-white">Restaurant Management System</h1>
      <nav>
        <ul class="nav">
          <li class="nav-item"><a class="nav-link text-white" href="index.jsp">Home</a></li>
          <li class="nav-item"><a class="nav-link text-white" href="restaurants.jsp">Restaurants</a></li>
          <li class="nav-item"><a class="nav-link text-white" href="list_bookings.jsp">Bookings</a></li>
        </ul>
      </nav>
    </div>
  </header>

  <main class="container bg-white p-4 rounded shadow-sm">
    <h2>Add New Restaurant</h2>

    <form action="create-restaurant" method="post" class="form bg-light p-4 rounded shadow-sm">
      <div class="form-group mb-3">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required class="form-control">
      </div>

      <div class="form-group mb-3">
        <label for="address">Address:</label>
        <input type="text" id="address" name="address" required class="form-control">
      </div>

      <div class="form-group mb-3">
        <label for="phone">Phone:</label>
        <input type="tel" id="phone" name="phone" required class="form-control">
      </div>

      <div class="form-group mb-3">
        <label for="capacity">Capacity:</label>
        <input type="number" id="capacity" name="capacity" min="1" required class="form-control">
      </div>

      <div class="form-actions">
        <a href="restaurants.jsp" class="btn btn-secondary">Cancel</a>
        <button type="submit" class="btn btn-primary">Create Restaurant</button>
      </div>
    </form>
  </main>

  <footer class="bg-light text-center py-3 mt-5 rounded">
    <div class="container">
      <p>Restaurant Management System</p>
    </div>
  </footer>
</div>
</body>
</html>