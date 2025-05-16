package com.svalero.restaurants.servlet;

import com.svalero.restaurants.dao.UserDao;
import com.svalero.restaurants.database.Database;
import com.svalero.restaurants.model.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.UUID;

@WebServlet("/create_user")

public class CreateUserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String idUser = UUID.randomUUID().toString().substring(0, 8);
            String name = request.getParameter("name");
            String surname = request.getParameter("surname");
            int phone = Integer.parseInt(request.getParameter("phone"));
            String email = request.getParameter("email");

            Users user = new Users();

            Database database = new Database();
            database.connect();

            UserDao userDao = new UserDao(database.getConnection());
            userDao.addUser(user);

            database.disconnect();

            response.sendRedirect("list_users");

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
