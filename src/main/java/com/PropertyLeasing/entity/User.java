package com.PropertyLeasing.entity;

public class User {
    private int userId;
    private String name;
    private String username;
    private String password;
    private String qq_number;
    private String signature;
    private String phone;
    private String uimg;


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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getUimg() {
        return uimg;
    }

    public void setUimg(String uimg) {
        this.uimg = uimg;
    }

    public User(int userId, String name, String qq_number, String signature, String phone) {
        this.userId = userId;
        this.name = name;
        this.qq_number = qq_number;
        this.signature = signature;
        this.phone = phone;
    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public  User(){

    }


    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", name='" + name + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", qq_number='" + qq_number + '\'' +
                ", signature='" + signature + '\'' +
                ", phone='" + phone + '\'' +
                ", uimg='" + uimg + '\'' +
                '}';
    }
}
