package com.PropertyLeasing.service.impl;

import com.PropertyLeasing.entity.House;
import com.PropertyLeasing.mapper.HouseMapper;
import com.PropertyLeasing.mapper.UserMapper;
import com.PropertyLeasing.service.HouseService;
import com.PropertyLeasing.util.SqlSessionFactoryUtils;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class HouseServiceImpl implements HouseService {
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();
    @Override
    public int AddHouseInfo(House house) {
        SqlSession sqlSession = factory.openSession();
        HouseMapper mapper = sqlSession.getMapper(HouseMapper.class);

        mapper.AddHouse(house);
        sqlSession.commit();
        sqlSession.close();

        return house.getHouseid();
    }

    @Override
    public void AddrentalRelattion(int houseid, int userid) {
        SqlSession sqlSession = factory.openSession();
        HouseMapper mapper = sqlSession.getMapper(HouseMapper.class);

        mapper.CreateRelation(houseid,userid);
        sqlSession.commit();

        sqlSession.close();

    }
}
