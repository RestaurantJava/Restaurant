package com.svalero.restaurants.model;

import lombok.Data;
import java.sql.Date;
import java.sql.Time;

@Data
public class Booking {
    private String idBooking;
    private Date date;
    private Time hour;
    private int nPeople;
    private String idUser;
    private String idRestaurant;
}
