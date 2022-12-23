package com.PropertyLeasing.service.impl;

import com.PropertyLeasing.entity.User;
import com.PropertyLeasing.mapper.UserMapper;
import com.PropertyLeasing.service.UserService;
import com.PropertyLeasing.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class UserServiceImpl implements UserService {
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();


    public boolean register(User user){

        SqlSession sqlSession = factory.openSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);
        User u = mapper.selectByUsername(user.getUsername());
        if(u == null){
            // 用户名不存在，注册
            mapper.add(user);
            sqlSession.commit();
        }
        sqlSession.close();

        return u == null;
    }

     public User login(String username,String password){
         SqlSession sqlSession = factory.openSession();
         UserMapper mapper = sqlSession.getMapper(UserMapper.class);
         User user = mapper.select(username,password);
         sqlSession.close();
         return user;
    }
}
