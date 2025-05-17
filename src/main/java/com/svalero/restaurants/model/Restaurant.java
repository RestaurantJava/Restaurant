package com.svalero.restaurants.model;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Data
public class Restaurant {
    private int idRestaurant;
    private String name;
    private String address;
    private String type;

}
