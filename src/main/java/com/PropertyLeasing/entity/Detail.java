package com.PropertyLeasing.entity;

import javax.jws.soap.SOAPBinding;

public class Detail {
    int houseid;
    double rent;
    double area;
    String orientation;
    int floor;
    String address;
    String housedescribe;
    String communityname;
    private int userId;
    private String name;
    private String username;
    private String qq_number;
    private String signature;
    private String phone;

    public Detail(House house, User user){
        this.houseid = house.getHouseid();
        this.rent = house.getRent();
        this.area = house.getArea();
        this.orientation = house.getOrientation();
        this.communityname = house.getCommunityname();
        this.address = house.getAddress();
        this.housedescribe = house.getHousedescribe();

        this.username = user.getUsername();
        this.userId = user.getUserId();
        this.name = user.getName();
        this.qq_number = user.getQq_number();
        this.signature = user.getSignature();
        this.phone = user.getPhone();

    }

    public int getHouseid() {
        return houseid;
    }

    public void setHouseid(int houseid) {
        this.houseid = houseid;
    }

    public double getRent() {
        return rent;
    }

    public void setRent(double rent) {
        this.rent = rent;
    }

    public double getArea() {
        return area;
    }

    public void setArea(double area) {
        this.area = area;
    }

    public String getOrientation() {
        return orientation;
    }

    public void setOrientation(String orientation) {
        this.orientation = orientation;
    }

    public int getFloor() {
        return floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getHousedescribe() {
        return housedescribe;
    }

    public void setHousedescribe(String housedescribe) {
        this.housedescribe = housedescribe;
    }

    public String getCommunityname() {
        return communityname;
    }

    public void setCommunityname(String communityname) {
        this.communityname = communityname;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getQq_number() {
        return qq_number;
    }

    public void setQq_number(String qq_number) {
        this.qq_number = qq_number;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
