package com.svalero.restaurants.model;

import lombok.Data;

@Data
public class User {
    private String idUser;
    private String name;
    private String surname;
    private int phone;
    private String email;
}
