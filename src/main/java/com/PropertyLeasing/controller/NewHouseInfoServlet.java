package com.PropertyLeasing.controller;

import com.PropertyLeasing.entity.House;
import com.PropertyLeasing.entity.User;
import com.PropertyLeasing.service.HouseService;
import com.PropertyLeasing.service.impl.HouseServiceImpl;
import com.sun.javaws.IconUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "NewHouseInfoServlet", value = "/NewHouseInfoServlet")
public class NewHouseInfoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("进入了servlet");
        doPost(req,resp);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("USER");
        int userid = user.getUserId();
        // 获取前台提交的房屋信息
        double rent = Double.parseDouble(request.getParameter("rent"));
        double area = Double.parseDouble(request.getParameter("area"));
        int floor = Integer.parseInt(request.getParameter("floor"));
        String orientation = request.getParameter("orientation");
        String address = request.getParameter("address");
        String housedescribe = request.getParameter("housedescribe");
        String communityName = request.getParameter("communityname");
        String uimg = request.getParameter("uimg");

        // 将房屋信息封装到 House 对象中
        House house = new House();
        house.setRent(rent);
        house.setArea(area);
        house.setFloor(floor);
        house.setAddress(address);
        house.setOrientation(orientation);
        house.setHousedescribe(housedescribe);
        house.setCommunityname(communityName);
        house.setUimg(uimg);


        System.out.println("进入了severlet");
        // 使用 HouseDAO 将房屋信息保存到数据库中
        HouseService service = new HouseServiceImpl();
        int houseid = service.AddHouseInfo(house);
        System.out.println("房屋id为："+houseid);
        service.AddrentalRelattion(houseid,userid);


        response.sendRedirect("rentalhouse.jsp");



// 向前台返回成功消息
        response.getWriter().write("房屋信息保存成功！");
    }
}
