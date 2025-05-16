package com.svalero.restaurants.dao;

import com.svalero.restaurants.model.Users;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    private final Connection connection;

    public UserDao(Connection connection) {
        this.connection = connection;
    }

    public List<Users> getAllUsers() throws SQLException {
        List<Users> users = new ArrayList<>();
        String sql = "SELECT * FROM Users";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                Users user = new Users();
                users.add(user);
            }
        }
        return users;
    }

    public boolean addUser(Users user) throws SQLException {
        String sql = "INSERT INTO Users (id_user, name, surname, phone, email) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, user.getIdUser());
            statement.setString(2, user.getName());
            statement.setString(3, user.getSurname());
            statement.setInt(4, user.getPhone());
            statement.setString(5, user.getEmail());
            return statement.executeUpdate() == 1;
        }
    }

    public boolean deleteUser(String idUser) throws SQLException {
        String sql = "DELETE FROM Users WHERE id_user = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, idUser);
            return statement.executeUpdate() == 1;
        }
    }
}
