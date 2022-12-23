package com.PropertyLeasing.service;

import com.PropertyLeasing.entity.User;

public interface UserService {
    public boolean register(User user);
    User login(String username, String password);
}
