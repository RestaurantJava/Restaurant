<%--
  Created by IntelliJ IDEA.
  User: S2-PC157
  Date: 17/05/2025
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bookings - Restaurant Management</title>
  <link rel="stylesheet" href="css/styles.css">
  <link rel="stylesheet" href="css/bookings.css">
</head>
<body>
<header>
  <div class="container">
    <h1>Restaurant Management System</h1>
    <nav>
      <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="restaurants.jsp">Restaurants</a></li>
        <li><a href="bookings.jsp" class="active">Bookings</a></li>
      </ul>
    </nav>
  </div>
</header>

<main class="container">
  <section class="page-heading">
    <h2>Restaurant Bookings</h2>
    <p>Make a new reservation or view existing bookings</p>
  </section>

  <section class="booking-form-section">
    <h3>Make a Reservation</h3>
    <form action="<%=request.getContextPath()%>/create_booking" method="post" class="booking-form">
      <!-- El ID de reserva se generará automáticamente en el servlet -->
      <input type="hidden" name="idBooking" value="B<%=System.currentTimeMillis() %>">

      <div class="form-group">
        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required>
      </div>

      <div class="form-group">
        <label for="hour">Time:</label>
        <select id="hour" name="hour" required>
          <option value="" disabled selected>Select time</option>
          <option value="12:00:00">12:00</option>
          <option value="12:30:00">12:30</option>
          <option value="13:00:00">13:00</option>
          <option value="13:30:00">13:30</option>
          <option value="14:00:00">14:00</option>
          <option value="14:30:00">14:30</option>
          <option value="15:00:00">15:00</option>
          <option value="20:00:00">20:00</option>
          <option value="20:30:00">20:30</option>
          <option value="21:00:00">21:00</option>
          <option value="21:30:00">21:30</option>
          <option value="22:00:00">22:00</option>
          <option value="22:30:00">22:30</option>
        </select>
      </div>

      <div class="form-group">
        <label for="nPeople">Number of People:</label>
        <select id="nPeople" name="nPeople" required>
          <option value="" disabled selected>Select number of people</option>
          <option value="1">1 person</option>
          <option value="2">2 people</option>
          <option value="3">3 people</option>
          <option value="4">4 people</option>
          <option value="5">5 people</option>
          <option value="6">6 people</option>
          <option value="7">7 people</option>
          <option value="8">8 people</option>
          <option value="9">9 people</option>
          <option value="10">10 people</option>
        </select>
      </div>

      <div class="form-group">
        <label for="idUser">User:</label>
        <select id="idUser" name="idUser" required>
          <option value="" disabled selected>Select user</option>
          <option value="1">Andrea Fernández</option>
          <option value="2">Luis Martínez</option>
          <option value="3">María López</option>
          <option value="4">Jorge Sanz</option>
          <option value="5">Lucía Pérez</option>
          <option value="6">Carlos García</option>

        </select>
      </div>

      <div class="form-group">
        <label for="idRestaurant">Restaurant:</label>
        <select id="idRestaurant" name="idRestaurant" required>
          <option value="" disabled selected>Select restaurant</option>
          <option value="1">El Buen Sabor (Tradicional)</option>
          <option value="2">PizzaTop (Italiana)</option>
          <option value="3">SushiZen (Japonesa)</option>
          <option value="4">La Parrilla (Barbacoa)</option>
          <option value="5">VeggieLife (Vegana)</option>
          <option value="6">Tapas & Más (Tapas)</option>

          <!-- estos valores vendrían de la base de datos -->
        </select>
      </div>

      <button type="submit" class="button" formaction="<%=request.getContextPath()%>/create_booking">Make Reservation</button>
      <a href="<%=request.getContextPath()%>/list_bookings" class="button">View Bookings</a>


      </div>
    </form>
  </section>

</main>

<footer>
  <div class="container">
    <p>Restaurant Management System</p>
  </div>
</footer>
</body>
</html>