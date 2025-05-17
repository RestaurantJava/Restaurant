package com.svalero.restaurants.model;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Data
public class Users {
    private int idUser;
    private String name;
    private String surname;
    private int phone;
    private String email;

}
