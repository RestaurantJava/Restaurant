package com.svalero.restaurants.dao;

import com.svalero.restaurants.model.Booking;
import com.svalero.restaurants.model.Restaurant;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookingDao {
    private final Connection connection;

    public BookingDao(Connection connection) {
        this.connection = connection;
    }

    public List<Booking> getAllBookings() throws SQLException {

        String sql = "SELECT * FROM Bookings";
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery();
        List<Booking> bookings = new ArrayList<>();
        while (resultSet.next()) {
            Booking booking = new Booking();
            booking.setIdBooking(resultSet.getInt("id_booking"));
            booking.setDate(resultSet.getDate("date"));
            booking.setHour(resultSet.getTime("hour"));
            booking.setNPeople(resultSet.getInt("n_people"));
            booking.setIdUser(resultSet.getInt("id_user"));
            booking.setIdRestaurant(resultSet.getInt("id:restaurant"));
        }
        return bookings;
    }

    public boolean addBooking(Booking booking) throws SQLException {
        String sql = "INSERT INTO Bookings (id_booking, date, hour, n_people, id_user, id_restaurant) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setInt(1, booking.getIdBooking());
            statement.setDate(2, booking.getDate());
            statement.setTime(3, booking.getHour());
            statement.setInt(4, booking.getNPeople());
            statement.setInt(5, booking.getIdUser());
            statement.setInt(6, booking.getIdRestaurant());
            return statement.executeUpdate() == 1;
        }
    }

    /*public boolean deleteBooking(String idBooking) throws SQLException {
        String sql = "DELETE FROM Bookings WHERE id_booking = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, idBooking);
            return statement.executeUpdate() == 1;
        }
    }*/

    public List<Booking> searchBookings(String query) throws SQLException {
        List<Booking> bookings = new ArrayList<>();
        String sql = "SELECT * FROM Bookings WHERE id_booking LIKE ? OR id_user LIKE ? OR id_restaurant LIKE ?";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            String search = "%" + query + "%";
            statement.setString(1, search);
            statement.setString(2, search);
            statement.setString(3, search);
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Booking booking = new Booking();
                bookings.add(booking);
            }
        }
        return bookings;
    }

}
