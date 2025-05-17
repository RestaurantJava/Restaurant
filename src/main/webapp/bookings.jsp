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
          <option value="12:00">12:00</option>
          <option value="12:30">12:30</option>
          <option value="13:00">13:00</option>
          <option value="13:30">13:30</option>
          <option value="14:00">14:00</option>
          <option value="14:30">14:30</option>
          <option value="15:00">15:00</option>
          <option value="20:00">20:00</option>
          <option value="20:30">20:30</option>
          <option value="21:00">21:00</option>
          <option value="21:30">21:30</option>
          <option value="22:00">22:00</option>
          <option value="22:30">22:30</option>
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
          <option value="U001">Juan García</option>
          <option value="U002">María López</option>
          <option value="U003">Carlos Martínez</option>
          <option value="U004">Ana Rodríguez</option>
          <option value="U005">David Sánchez</option>
          <!-- En una aplicación real, estos valores vendrían de la base de datos -->
        </select>
      </div>

      <div class="form-group">
        <label for="idRestaurant">Restaurant:</label>
        <select id="idRestaurant" name="idRestaurant" required>
          <option value="" disabled selected>Select restaurant</option>
          <option value="R001">La Madrileña (Madrid)</option>
          <option value="R002">Mar Mediterráneo (Barcelona)</option>
          <option value="R003">El Rincón Andaluz (Sevilla)</option>
          <option value="R004">Paella Valenciana (Valencia)</option>
          <option value="R005">Pintxos & Txakoli (Bilbao)</option>
          <option value="R006">El Tubo (Zaragoza)</option>
          <option value="R007">Sabor Malagueño (Málaga)</option>
          <option value="R008">Camino Gourmet (Santiago)</option>
          <option value="R009">Sabores de Mallorca (Palma)</option>
          <option value="R010">La Ciudad Imperial (Toledo)</option>
          <!-- En una aplicación real, estos valores vendrían de la base de datos -->
        </select>
      </div>

      <div class="form-actions">
        <button type="submit" class="button">Make Reservation</button>
        <button type="reset" class="button button-secondary">Clear Form</button>
      </div>
    </form>
  </section>

  <section class="bookings-list-section">
    <h3>Current Bookings</h3>
    <table class="bookings-table">
      <thead>
      <tr>
        <th>Booking ID</th>
        <th>Date</th>
        <th>Time</th>
        <th>People</th>
        <th>Restaurant</th>
        <th>User</th>
        <th>Actions</th>
      </tr>
      </thead>
      <tbody>
      <!-- En una aplicación real, estos datos vendrían de la base de datos -->
      <tr>
        <td>B1684321456</td>
        <td>17/05/2025</td>
        <td>20:30</td>
        <td>4</td>
        <td>La Madrileña</td>
        <td>Juan García</td>
        <td>
          <a href="#" class="action-link">Edit</a>
          <a href="#" class="action-link action-delete">Cancel</a>
        </td>
      </tr>
      <tr>
        <td>B1684322789</td>
        <td>18/05/2025</td>
        <td>14:00</td>
        <td>2</td>
        <td>El Tubo</td>
        <td>María López</td>
        <td>
          <a href="#" class="action-link">Edit</a>
          <a href="#" class="action-link action-delete">Cancel</a>
        </td>
      </tr>
      <tr>
        <td>B1684325431</td>
        <td>19/05/2025</td>
        <td>21:00</td>
        <td>6</td>
        <td>Pintxos & Txakoli</td>
        <td>Carlos Martínez</td>
        <td>
          <a href="#" class="action-link">Edit</a>
          <a href="#" class="action-link action-delete">Cancel</a>
        </td>
      </tr>
      </tbody>
    </table>
  </section>
</main>

<footer>
  <div class="container">
    <p>Restaurant Management System</p>
  </div>
</footer>
</body>
</html>