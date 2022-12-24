package com.PropertyLeasing.service;

import com.PropertyLeasing.entity.User;

import java.util.Map;

public interface UserService {
    public boolean register(User user);
    public User login(String username, String password);
    public User findUserById(int userid);

    public boolean updatePwd(int userid,String password);

    public boolean uploadImg(String fileName,int userid);

    public boolean updateUserInfo(User user);
}
