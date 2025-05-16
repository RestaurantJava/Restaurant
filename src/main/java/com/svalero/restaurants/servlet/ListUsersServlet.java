package com.svalero.restaurants.servlet;

import com.svalero.restaurants.dao.UserDao;
import com.svalero.restaurants.database.Database;
import com.svalero.restaurants.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/list_users")

public class ListUsersServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Database database = new Database();
            database.connect();

            UserDao userDao = new UserDao(database.getConnection());
            List<User> users = userDao.getAllUsers();

            request.setAttribute("users", users);
            request.getRequestDispatcher("list_users.jsp").forward(request, response);

            database.disconnect();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
