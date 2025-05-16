package com.svalero.restaurants.model;

import lombok.Data;

@Data
public class Restaurant {
    private String idRestaurant;
    private String name;
    private String address;
    private String type;
}
