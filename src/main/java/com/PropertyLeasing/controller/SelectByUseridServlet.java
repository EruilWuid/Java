package com.PropertyLeasing.controller;

import com.PropertyLeasing.entity.House;
import com.PropertyLeasing.entity.User;
import com.PropertyLeasing.mapper.HouseMapper;
import com.PropertyLeasing.service.HouseService;
import com.PropertyLeasing.service.impl.HouseServiceImpl;
import com.alibaba.fastjson.JSON;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SelectByUseridServlet", value = "/SelectByUseridServlet")
public class SelectByUseridServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = (User) request.getSession().getAttribute("USER");
        int userid = user.getUserId();

        HouseService service = new HouseServiceImpl();
        List<House> houses = service.SelectByUserid(userid);

        String jsonString = JSON.toJSONString(houses);

        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
