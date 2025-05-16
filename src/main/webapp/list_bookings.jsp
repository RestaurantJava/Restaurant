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
    <title>Booking List</title>
</head>
<body>

<h1>Bookings</h1>

<!-- Search form -->
<form action="searchBooking" method="get">
    <input type="text" name="query" placeholder="Search by ID, user or restaurant" />
    <button type="submit">Search</button>
</form>

<hr>

<%
    List<Booking> bookings = (List<Booking>) request.getAttribute("bookings");
    if (bookings != null && !bookings.isEmpty()) {
        for (Booking booking : bookings) {
%>
    <p>
        <strong>ID:</strong> <%= booking.getIdBooking() %><br>
        <strong>Date:</strong> <%= booking.getDate() %><br>
        <strong>Time:</strong> <%= booking.getHour() %><br>
        <strong>People:</strong> <%= booking.getNPeople() %><br>
        <strong>User ID:</strong> <%= booking.getIdUser() %><br>
        <strong>Restaurant ID:</strong> <%= booking.getIdRestaurant() %>
    </p>
    <hr>
<%
        }
    } else {
%>
    <p>No bookings found.</p>
<%
    }
%>

</body>
</html>
