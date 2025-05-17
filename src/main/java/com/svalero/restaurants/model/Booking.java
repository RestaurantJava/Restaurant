package com.svalero.restaurants.model;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.sql.Time;

@Setter
@Getter
@Data
public class Booking {
    private int idBooking;
    private Date date;
    private Time hour;
    private int nPeople;
    private int idUser;
    private int idRestaurant;

}
