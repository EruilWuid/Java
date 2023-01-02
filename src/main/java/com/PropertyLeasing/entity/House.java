package com.PropertyLeasing.entity;

public class House {
    int houseid;
    double rent;
    double area;
    String orientation;
    int floor;
    String address;
    String housedescribe;
    String communityname;
    String uimg;

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

    public String getUimg() {
        return uimg;
    }

    public void setUimg(String uimg) {
        this.uimg = uimg;
    }

    public House() {
    }

    public House(double rent, double area, String communityname) {
        this.rent = rent;
        this.area = area;
        this.communityname = communityname;
    }

    public House(int houseid,double rent, double area, String orientation, int floor, String address, String housedescribe, String communityname, String uimg) {
        this.houseid = houseid;
        this.rent = rent;
        this.area = area;
        this.orientation = orientation;
        this.floor = floor;
        this.address = address;
        this.housedescribe = housedescribe;
        this.communityname = communityname;
        this.uimg = uimg;
    }

    @Override
    public String toString() {
        return "House{" +
                "houseid=" + houseid +
                ", rent=" + rent +
                ", area=" + area +
                ", orientation='" + orientation + '\'' +
                ", floor=" + floor +
                ", address='" + address + '\'' +
                ", housedescribe='" + housedescribe + '\'' +
                ", communityname='" + communityname + '\'' +
                ", uimg='" + uimg + '\'' +
                '}';
    }
}
