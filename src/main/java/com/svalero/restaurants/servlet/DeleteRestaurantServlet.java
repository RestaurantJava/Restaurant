package com.svalero.restaurants.servlet;

import com.svalero.restaurants.dao.RestaurantDao;
import com.svalero.restaurants.database.Database;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/delete-restaurant")
public class DeleteRestaurantServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        Database database = new Database();

        try {
            database.connect();
            RestaurantDao restaurantDao = new RestaurantDao(database.getConnection());
            restaurantDao.deleteRestaurant(id);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
            return;
        } finally {
            try {
                database.disconnect();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        response.sendRedirect("restaurants.jsp");
    }
}
