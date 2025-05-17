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
</head>
<body>
<header>
    <div class="container">
        <h1>Restaurant Management System</h1>
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="restaurants.jsp">Restaurants</a></li>
                <li><a href="bookings.jsp">Bookings</a></li>
            </ul>
        </nav>
    </div>
</header>

<main class="container">
    <section class="welcome">
        <h2>Welcome to our Restaurant Management System</h2>
        <p>This system allows you to manage restaurants and bookings.</p>
    </section>

    <section class="quick-links">
        <div class="card">
            <h3>Restaurants</h3>
            <p>View and manage all restaurants in our system.</p>
            <a href="restaurants.jsp" class="button">View Restaurants</a>
        </div>

        <div class="card">
            <h3>Bookings</h3>
            <p>Manage all bookings for our restaurants.</p>
            <a href="bookings.jsp" class="button">View Bookings</a>
        </div>
    </section>
</main>

<footer>
    <div class="container">
        <p>NOMBRE DEL RESTAURANTE</p>
    </div>
</footer>
</body>
</html>