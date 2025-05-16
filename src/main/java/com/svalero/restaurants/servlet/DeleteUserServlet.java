package com.svalero.restaurants.servlet;

import com.svalero.restaurants.dao.UserDao;
import com.svalero.restaurants.database.Database;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/delete_user")

public class DeleteUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idUser = request.getParameter("id");

        try {
            Database database = new Database();
            database.connect();

            UserDao userDao = new UserDao(database.getConnection());
            userDao.deleteUser(idUser);

            database.disconnect();

            response.sendRedirect("list_users");

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
