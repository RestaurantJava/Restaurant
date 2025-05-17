<%--
  Created by IntelliJ IDEA.
  User: cristianalonsomartinez
  Date: 16/5/25
  Time: 19:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.svalero.restaurants.model.Booking" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant</title>
    <link rel="stylesheet" href="css/styles.css">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<header class="bg-primary text-white py-3 mb-4 rounded">
    <div class="container">
        <h1 class="text-white">Restaurant Management System</h1>
        <nav>
            <ul class="nav">
                <li class="nav-item"><a class="nav-link text-white" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link text-white" href="restaurants.jsp">Restaurants</a></li>
                <li class="nav-item"><a class="nav-link text-white active" href="list_bookings.jsp">Bookings</a></li>
            </ul>
        </nav>
    </div>
</header>
<div class="container py-4">
    <h1 class="text-primary mb-4">Bookings</h1>

    <!-- Search form -->
    <form action="searchBooking" method="get" class="mb-4 d-flex">
        <input type="text" name="query" class="form-control me-2" placeholder="Search by ID, user or restaurant" />
        <button type="submit" class="btn btn-outline-primary">Search</button>
    </form>

    <hr>

    <%
        List<Booking> bookings = (List<Booking>) request.getAttribute("bookings");
        if (bookings != null && !bookings.isEmpty()) {
            for (Booking booking : bookings) {
    %>
    <div class="card mb-3">
        <div class="card-body">
            <p><strong>ID:</strong> <%= booking.getIdBooking() %></p>
            <p><strong>Date:</strong> <%= booking.getDate() %></p>
            <p><strong>Time:</strong> <%= booking.getHour() %></p>
            <p><strong>People:</strong> <%= booking.getNPeople() %></p>
            <p><strong>User ID:</strong> <%= booking.getIdUser() %></p>
            <p><strong>Restaurant ID:</strong> <%= booking.getIdRestaurant() %></p>
        </div>
    </div>
    <%
        }
    } else {
    %>
    <div class="alert alert-warning">No bookings found.</div>
    <%
        }
    %>

</div>
<footer class="bg-light text-center py-3 mt-5 rounded">
    <div class="container">
        <p>Restaurant Management System</p>
    </div>
</footer>
</body>
</html>

