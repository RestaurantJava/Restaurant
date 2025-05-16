package com.svalero.restaurants.servlet;

import com.svalero.restaurants.dao.BookingDao;
import com.svalero.restaurants.database.Database;
import com.svalero.restaurants.model.Booking;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Date;
import java.sql.Time;
import java.sql.SQLException;
import java.util.UUID;

@WebServlet("/create_booking")

public class CreateBookingServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String idBooking = UUID.randomUUID().toString().substring(0, 8); // ID generado automáticamente
            Date date = Date.valueOf(request.getParameter("date"));
            Time hour = Time.valueOf(request.getParameter("hour"));
            int nPeople = Integer.parseInt(request.getParameter("nPeople"));
            String idUser = request.getParameter("idUser");
            String idRestaurant = request.getParameter("idRestaurant");

            Booking booking = new Booking(idBooking, date, hour, nPeople, idUser, idRestaurant);

            Database database = new Database();
            database.connect();

            BookingDao bookingDao = new BookingDao(database.getConnection());
            bookingDao.addBooking(booking);

            database.disconnect();

            response.sendRedirect("list_bookings");

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
