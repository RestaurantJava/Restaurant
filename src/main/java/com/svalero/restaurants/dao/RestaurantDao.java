package com.svalero.restaurants.dao;


import com.svalero.restaurants.model.Restaurant;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class RestaurantDao {
    private final Connection connection;

    public RestaurantDao(Connection connection) {
        this.connection = connection;
    }

    public List<Restaurant> getAllRestaurants() throws SQLException {
        List<Restaurant> restaurants = new ArrayList<>();
        String sql = "SELECT * FROM Restaurants";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                Restaurant restaurant = new Restaurant();
                restaurants.add(restaurant);
            }
        }
        return restaurants;
    }

    public boolean addRestaurant(Restaurant restaurant) throws SQLException {
        String sql = "INSERT INTO Restaurants (id_restaurants, name, address, type) VALUES (?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, restaurant.getIdRestaurant());
            statement.setString(2, restaurant.getName());
            statement.setString(3, restaurant.getAddress());
            statement.setString(4, restaurant.getType());
            return statement.executeUpdate() == 1;
        }
    }

    public boolean deleteRestaurant(String idRestaurant) throws SQLException {
        String sql = "DELETE FROM Restaurants WHERE id_restaurants = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, idRestaurant);
            return statement.executeUpdate() == 1;
        }
    }
}
