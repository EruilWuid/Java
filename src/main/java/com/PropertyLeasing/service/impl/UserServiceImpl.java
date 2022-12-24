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

    @Override
    public User findUserById(int userid) {
        SqlSession sqlSession = factory.openSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);

        User user = mapper.selectByUserid(userid);

        sqlSession.close();
        return user;
    }


    @Override
    public boolean updatePwd(int userid, String password) {
        SqlSession sqlSession = factory.openSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);

        User user = findUserById(userid);
        if(user != null){
            mapper.Upadatapwd(userid,password);
            sqlSession.commit();
        }
        sqlSession.close();

        return user != null;
    }


    @Override
    public boolean uploadImg(String fileName, int userid) {
        SqlSession sqlSession = factory.openSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);

        User user = findUserById(userid);
        if(user != null){
            mapper.uploadImg(fileName,userid);
            sqlSession.commit();
        }

        sqlSession.close();
        return user != null;

    }

    @Override
    public boolean updateUserInfo(User user) {
        SqlSession sqlSession = factory.openSession();
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);

        int userid = user.getUserId();
        User flag = findUserById(userid);

        if(flag != null){
            mapper.UploadUserIfo(user);
            sqlSession.commit();
            sqlSession.close();
        }

        return user != null;

    }
}
