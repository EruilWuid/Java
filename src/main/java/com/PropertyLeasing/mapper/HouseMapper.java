package com.PropertyLeasing.mapper;

import com.PropertyLeasing.entity.House;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface HouseMapper {
    void AddHouse(House house);

    @Insert("insert into renting_house (houseid, userid) VALUES (#{houseid},#{userid})")
    void CreateRelation(@Param("houseid") int houseid,@Param("userid") int userid);

    @Select("select * from t_house ")
    List<House> selectAll();

    List<House> selectByCondition(House house);

    void UpdateHouseInfo(House house);

    List<House> selectByuserid(@Param("userid") int userid);

    @Delete("delete  from renting_house where houseid = #{houseid}")
    void DeleteRelation(@Param("houseid") int houseid);
    @Delete("delete from t_house where houseid = #{houseid}")
    void DeleteHouseInfo(@Param("houseid") int houseid);




//    @Select("select * from t_house limit #{begin},#{size}")
//    List<House> selectbyPage(@Param("begin") int begin,@Param("size") int size);
//
//    @Select("select count(*) from t_house")
//    int selectTotalCount();
}
