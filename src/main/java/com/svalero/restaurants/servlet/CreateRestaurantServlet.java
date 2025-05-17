package com.svalero.restaurants.servlet;

import com.svalero.restaurants.dao.RestaurantDao;
import com.svalero.restaurants.database.Database;
import com.svalero.restaurants.model.Restaurant;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet("/create-restaurant")
public class CreateRestaurantServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String type = request.getParameter("type");

        Database database = new Database();
        Connection connection = null;

        try {
            database.connect();
            connection = database.getConnection();

            Restaurant newRestaurant = new Restaurant(); // 0 porque es AUTO_INCREMENT
            RestaurantDao restaurantDao = new RestaurantDao(connection);
            restaurantDao.addRestaurant(newRestaurant);

            response.sendRedirect("restaurants.jsp"); // o "list_restaurants" si lo tienes como servlet

        } catch (ClassNotFoundException | SQLException e) {
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
