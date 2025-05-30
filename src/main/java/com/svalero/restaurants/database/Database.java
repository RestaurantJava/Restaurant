package com.svalero.restaurants.database;

import lombok.Getter;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
    @Getter
    private Connection connection;

    private final String url = "jdbc:mariadb://localhost:3306/RESTAURANTS";
    private final String user = "admin";
    private final String password = "admin";

    public void connect() throws SQLException, ClassNotFoundException {
        Class.forName("org.mariadb.jdbc.Driver");
        connection = DriverManager.getConnection(url, user, password);
    }

    public void disconnect() throws SQLException {
        if (connection != null && !connection.isClosed()) {
            connection.close();
        }
    }
}

