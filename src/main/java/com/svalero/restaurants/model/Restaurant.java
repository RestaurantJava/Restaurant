package com.svalero.restaurants.model;

import lombok.Data;

@Data
    public class Restaurant {
    private int id;
    private String name;
    private String address;
    private String phone;
    private String type;

    public Restaurant() {
    }

    public Restaurant(int id, String name, String address, String phone, String description) {
        this.id = id;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.description = description;
    }

    // Getters y Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getType() {
        return type;
    }

    public void setDescription(String description) {
        this.type = description;
    }

    @Override
    public String toString() {
        return "Restaurant [id=" + id + ", name=" + name + ", address=" + address +
                ", phone=" + phone + ", description=" + type + "]";
    }
}