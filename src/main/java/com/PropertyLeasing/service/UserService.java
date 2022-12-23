package com.PropertyLeasing.service;

import com.PropertyLeasing.entity.User;

public interface UserService {
    public boolean register(User user);
    public User login(String username, String password);
    public User findUserById(int userid);

    public boolean updatePwd(int userid,String password);
}
