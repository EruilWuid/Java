package com.PropertyLeasing.service;

import com.PropertyLeasing.entity.House;
import com.PropertyLeasing.mapper.UserMapper;
import org.apache.ibatis.session.SqlSession;

public interface HouseService {
    //添加租房信息，返回houseid
    public int AddHouseInfo(House house);

    //将houseid与userid绑定，知道user发布了哪些房屋
    public void AddrentalRelattion(int houseid,int userid);
}
