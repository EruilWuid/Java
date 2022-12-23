package com.PropertyLeasing.mapper;

import com.PropertyLeasing.entity.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface UserMapper {
    /**
     * 根据用户名查询用户对象
     * @param username
     * @return
     */
    @Select("select * from t_user where username = #{username}")
    User selectByUsername(String username);

    @Select("select * from t_user where username = #{username} and password = #{password}")
    User select(@Param("username") String username, @Param("password")  String password);


    /**
     * 添加用户
     * @param user
     */
    @Insert("INSERT INTO t_user (username,password) VALUES(#{username},#{password})")
    void add(User user);
}
