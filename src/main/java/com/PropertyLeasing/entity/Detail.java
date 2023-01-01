package com.PropertyLeasing.entity;

import javax.jws.soap.SOAPBinding;

public class Detail {
    private House house;
    private User user;

    public House getHouse() {
        return house;
    }

    public void setHouse(House house) {
        this.house = house;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Detail() {
    }

    public Detail(House house, User user) {
        this.house = house;
        this.user = user;
    }

    @Override
    public String toString() {
        return "Detail{" +
                "house=" + house +
                ", user=" + user +
                '}';
    }
}
