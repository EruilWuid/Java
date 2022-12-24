package com.PropertyLeasing.mapper;

import com.PropertyLeasing.entity.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface UserMapper {
    /**
     * 根据用户名查询用户对象
     * @param username
     * @return
     */
    @Select("select * from t_user where username = #{username}")
    User selectByUsername(String username);

    @Select("select * from t_user where userid = #{userid}")
    User selectByUserid(@Param("userid") int userid);


    @Select("select * from t_user where username = #{username} and password = #{password}")
    User select(@Param("username") String username, @Param("password")  String password);

    /**
     * 添加用户
     * @param user
     */
    @Insert("INSERT INTO t_user (username,password) VALUES(#{username},#{password})")
    void add(User user);

    @Update("UPDATE t_user SET password = #{password}  WHERE userid = #{userid}")
    void Upadatapwd(@Param("userid")int userid,@Param("password") String password);


    @Update("UPDATE t_user Set uimg = #{uimg} WHERE userid = #{userid}")
    void uploadImg(@Param("uimg") String uimg,@Param("userid") int userid);

    @Update("UPDATE t_user SET phone = #{phone},name = #{name},qq_number = #{qq_number},signature = #{signature}  WHERE userid = #{userId}")
    void UploadUserIfo(User user);
}
