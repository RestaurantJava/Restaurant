package com.svalero.restaurants.servlet;

import com.svalero.restaurants.dao.RestaurantDao;
import com.svalero.restaurants.database.Database;
import com.svalero.restaurants.model.Restaurant;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/restaurants")
public class ListRestaurantsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Database database = new Database();
            database.connect();

            RestaurantDao restaurantDao = new RestaurantDao(database.getConnection());
            List<Restaurant> restaurants = restaurantDao.getAllRestaurants();

            request.setAttribute("restaurants", restaurants);
            request.getRequestDispatcher("restaurants.jsp").forward(request, response);

            database.disconnect();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
