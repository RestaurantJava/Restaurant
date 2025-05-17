<%--
  Created by IntelliJ IDEA.
  User: S2-PC157
  Date: 16/05/2025
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Management</title>
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
                <li class="nav-item"><a class="nav-link text-white active" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="restaurants.jsp">Restaurants</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="bookings.jsp">Bookings</a></li>
            </ul>
        </nav>
    </div>
</header>

<main class="container py-4">
    <section class="welcome bg-white p-4 rounded shadow-sm mb-4">
        <h2>Welcome to our Restaurant Management System</h2>
        <p>This system allows you to manage restaurants and bookings.</p>
    </section>

    <section class="quick-links row g-4">
        <div class="card p-4 col-md-6 shadow-sm">
            <h3>Restaurants</h3>
            <p>View and manage all restaurants in our system.</p>
            <a href="restaurants.jsp" class="btn btn-primary mt-3">View Restaurants</a>
        </div>
        <div class="card p-4 col-md-6 shadow-sm">
            <h3>Bookings</h3>
            <p>Manage all bookings for our restaurants.</p>
            <a href="bookings.jsp" class="btn btn-secondary mt-3">View Bookings</a>
        </div>
    </section>
</main>

<footer class="bg-light text-center py-3 mt-5 rounded">
    <div class="container">
      <p>Restaurant Management System</p>
    </div>
</footer>
</body>
</html>