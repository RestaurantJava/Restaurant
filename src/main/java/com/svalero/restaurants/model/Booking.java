package com.svalero.restaurants.model;

package com.sviatero.restaurants.model;

import java.util.Date;

public class Booking {
    private int id;
    private Date date;
    private String time;
    private int guests;
    private int userId;
    private int restaurantId;
    private String status;

    public Booking() {
    }

    public Booking(int id, Date date, String time, int guests, int userId, int restaurantId, String status) {
        this.id = id;
        this.date = date;
        this.time = time;
        this.guests = guests;
        this.userId = userId;
        this.restaurantId = restaurantId;
        this.status = status;
    }

    // Getters y Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getGuests() {
        return guests;
    }

    public void setGuests(int guests) {
        this.guests = guests;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getRestaurantId() {
        return restaurantId;
    }

    public void setRestaurantId(int restaurantId) {
        this.restaurantId = restaurantId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Booking [id=" + id + ", date=" + date + ", time=" + time +
                ", guests=" + guests + ", userId=" + userId +
                ", restaurantId=" + restaurantId + ", status=" + status + "]";
    }
}