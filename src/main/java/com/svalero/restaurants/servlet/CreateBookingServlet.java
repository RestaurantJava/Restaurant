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
            String idBooking = UUID.randomUUID().toString().substring(0,10);
            Date date = Date.valueOf(request.getParameter("date"));
            String rawHour = request.getParameter("hour");

            if (rawHour != null && rawHour.length() == 5) {
                rawHour += ":00"; // añade los segundos si solo vienen horas y minutos
            }

            Time hour = Time.valueOf(rawHour); // ahora es seguro

            int nPeople = Integer.parseInt(request.getParameter("nPeople"));
            int idUser = Integer.parseInt(request.getParameter("idUser"));
            int idRestaurant = Integer.parseInt(request.getParameter("idRestaurant"));

            Booking booking = new Booking();
            booking.setDate(date);
            booking.setHour(hour);
            booking.setNPeople(nPeople);
            booking.setIdUser(idUser);
            booking.setIdRestaurant(idRestaurant);

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
