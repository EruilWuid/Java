package com.PropertyLeasing.mapper;

import com.PropertyLeasing.entity.House;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Update;

public interface HouseMapper {
    void AddHouse(House house);

    @Insert("insert into renting_house (houseid, userid) VALUES (#{houseid},#{userid})")
    void CreateRelation(int houseid,int userid);

}
