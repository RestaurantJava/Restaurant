package com.svalero.restaurants.servlet;

import com.svalero.restaurants.dao.BookingDao;
import com.svalero.restaurants.database.Database;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/delete_booking")
public class DeleteBookingServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int idBooking = Integer.parseInt(request.getParameter("id"));

            Database database = new Database();
            database.connect();

            BookingDao bookingDao = new BookingDao(database.getConnection());
            bookingDao.deleteBooking(idBooking);

            database.disconnect();
            response.sendRedirect("bookings.jsp");

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
