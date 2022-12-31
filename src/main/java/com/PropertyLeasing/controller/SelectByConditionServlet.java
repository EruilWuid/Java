package com.PropertyLeasing.controller;

import com.PropertyLeasing.entity.House;
import com.PropertyLeasing.service.HouseService;
import com.PropertyLeasing.service.impl.HouseServiceImpl;
import com.alibaba.fastjson.JSON;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SelectByConditionServlet", value = "/SelectByConditionServlet")
public class SelectByConditionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String communityname = request.getParameter("communityname");
        double area = Double.parseDouble(request.getParameter("area"));
        double rent = Double.parseDouble(request.getParameter("rent"));

        House house = new House(rent,area,communityname);

        HouseService service = new HouseServiceImpl();
        List<House> houses = service.SelectByCondition(house);

        String jsonString = JSON.toJSONString(houses);

        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }


}
