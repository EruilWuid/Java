package com.PropertyLeasing.service.impl;

import com.PropertyLeasing.entity.House;
import com.PropertyLeasing.entity.User;
import com.PropertyLeasing.mapper.HouseMapper;
import com.PropertyLeasing.service.HouseService;
import com.PropertyLeasing.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.ArrayList;
import java.util.List;

public class HouseServiceImpl implements HouseService {
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();
    @Override
    public int AddHouseInfo(House house) {
        SqlSession sqlSession = factory.openSession();
        HouseMapper mapper = sqlSession.getMapper(HouseMapper.class);

        mapper.AddHouse(house);
       // System.out.println("加入数据了朝向为"+house.getOrientation());
        int id = house.getHouseid();
        sqlSession.commit();
        sqlSession.close();

        return id;
    }

    @Override
    public void AddrentalRelattion(int houseid, int userid) {
        SqlSession sqlSession = factory.openSession();
        HouseMapper mapper = sqlSession.getMapper(HouseMapper.class);

        mapper.CreateRelation(houseid,userid);
        sqlSession.commit();

        sqlSession.close();
    }


//    @Override
//    public Page<House> selectByPage(int currentPage, int pageSize) {
//        SqlSession sqlSession = factory.openSession();
//        //3. 获取BrandMapper
//        HouseMapper mapper = sqlSession.getMapper(HouseMapper.class);
//
//        //4. 计算开始索引
//        int begin = (currentPage - 1) * pageSize;
//        // 计算查询条目数
//        int size = pageSize;
//
//        //5. 查询当前页数据
//        List<House> rows = mapper.selectbyPage(begin,size);
//
//        //6. 查询总记录数
//        int totalCount = mapper.selectTotalCount();
//
//        //7. 封装PageBean对象
//
//        Page page = new Page(totalCount,rows);
//
//        //8. 释放资源
//        sqlSession.close();
//
//        return page;
//    }


    @Override
    public List<House> SelectAll() {
        SqlSession sqlSession = factory.openSession();
        HouseMapper mapper = sqlSession.getMapper(HouseMapper.class);

        List<House> houses = mapper.selectAll();
        sqlSession.close();

        return houses;
    }

    @Override
    public List<House> SelectByCondition(House house) {
        SqlSession sqlSession = factory.openSession();
        HouseMapper mapper = sqlSession.getMapper(HouseMapper.class);

        List<House> houses = mapper.selectByCondition(house);
        sqlSession.close();

        return houses;
    }

    @Override
    public void DeleteHouse(int houseid) {
        SqlSession sqlSession = factory.openSession();
        HouseMapper mapper = sqlSession.getMapper(HouseMapper.class);

        mapper.DeleteRelation(houseid);
        mapper.DeleteHouseInfo(houseid);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public void UpdateHouseInfo(House house) {

        SqlSession sqlSession = factory.openSession();
        HouseMapper mapper = sqlSession.getMapper(HouseMapper.class);

        mapper.UpdateHouseInfo(house);
        sqlSession.commit();
        sqlSession.close();
    }

    @Override
    public List<House> SelectByUserid(int userid) {
        SqlSession sqlSession = factory.openSession();
        HouseMapper mapper = sqlSession.getMapper(HouseMapper.class);

        List<House> houses = mapper.selectByuserid(userid);
        sqlSession.close();
        return houses;
    }

    @Override
    public House FindDetail(int houseid) {
        SqlSession sqlSession = factory.openSession();
        HouseMapper mapper = sqlSession.getMapper(HouseMapper.class);

        House house = mapper.SelectByhouseid(houseid);
        sqlSession.close();
        return house;
    }

    @Override
    public User FindUser(int houseid) {
        SqlSession sqlSession = factory.openSession();
        HouseMapper mapper = sqlSession.getMapper(HouseMapper.class);

        User user = mapper.SelectUserByHouseid(houseid);
        sqlSession.close();
        return user;
    }

    @Override
    public List<House> Order(int type, int state) {
        SqlSession sqlSession = factory.openSession();
        HouseMapper mapper = sqlSession.getMapper(HouseMapper.class);

        List<House> houses = new ArrayList<>();
        if(type == 1){
            houses = mapper.OrderByrent(state);
        }
        else houses = mapper.OrderByarea(state);

        sqlSession.close();

        return houses;
    }
}
