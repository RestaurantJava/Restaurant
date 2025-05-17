package com.svalero.restaurants.servlet;

import com.svalero.restaurants.dao.BookingDao;
import com.svalero.restaurants.database.Database;
import com.svalero.restaurants.model.Booking;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.Time;
import java.sql.SQLException;

@WebServlet("/create_booking")

public class CreateBookingServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Database database = new Database();
        Connection connection = null;

        try {
            Date date = Date.valueOf(request.getParameter("date"));

            String rawHour = request.getParameter("hour");
            if (rawHour != null && rawHour.length() == 5) {
                rawHour += ":00";
            }
            Time hour = Time.valueOf(rawHour);

            int nPeople = Integer.parseInt(request.getParameter("nPeople"));
            int idUser = Integer.parseInt(request.getParameter("idUser"));
            int idRestaurant = Integer.parseInt(request.getParameter("idRestaurant"));

            Booking booking = new Booking();
            booking.setDate(date);
            booking.setHour(hour);
            booking.setNPeople(nPeople);
            booking.setIdUser(idUser);
            booking.setIdRestaurant(idRestaurant);

            database.connect();
            connection = database.getConnection();

            BookingDao bookingDao = new BookingDao(connection);
            bookingDao.addBooking(booking);

            response.sendRedirect("bookings.jsp"); // o list_bookings si usas un servlet de listado

        } catch (SQLException | ClassNotFoundException | IllegalArgumentException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        } finally {
            if (connection != null) {
                try {
                    database.disconnect();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
