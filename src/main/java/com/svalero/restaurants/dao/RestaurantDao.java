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

        String sql = "SELECT * FROM Restaurants";
        PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery();
        List<Restaurant> restaurants = new ArrayList<>();
            while (resultSet.next()) {
                Restaurant restaurant = new Restaurant();
                restaurant.setIdRestaurant(resultSet.getInt("id_restaurant"));
                restaurant.setName(resultSet.getString("name"));
                restaurant.setAddress(resultSet.getString("address"));
                restaurant.setType(resultSet.getString("type"));
                restaurants.add(restaurant);
            }
        return restaurants;
    }
    public boolean addRestaurant(Restaurant restaurant) throws SQLException {
        String sql = "INSERT INTO Restaurants (name, address, type) VALUES (?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, restaurant.getName());
            statement.setString(2, restaurant.getAddress());
            statement.setString(3, restaurant.getType());
            return statement.executeUpdate() == 1;
        }
    }

    public boolean deleteRestaurant(int idRestaurant) throws SQLException {
        String sql = "DELETE FROM Restaurants WHERE id_restaurant = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, idRestaurant);
            return statement.executeUpdate() == 1;
        }
    }
}
