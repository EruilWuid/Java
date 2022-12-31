package com.PropertyLeasing.mapper;

import com.PropertyLeasing.entity.House;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface HouseMapper {
    void AddHouse(House house);

    @Insert("insert into renting_house (houseid, userid) VALUES (#{houseid},#{userid})")
    void CreateRelation(int houseid,int userid);

    @Select("select * from t_house limit #{begin},#{size}")
    List<House> selectbyPage(@Param("begin") int begin,@Param("size") int size);

    @Select("select count(*) from t_house")
    int selectTotalCount();
}
