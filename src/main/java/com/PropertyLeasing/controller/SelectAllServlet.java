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

@WebServlet(name = "SelectAllServlet", value = "/SelectAllServlet")
public class SelectAllServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HouseService service = new HouseServiceImpl();
        List<House> houses = service.SelectAll();


        String jsonString = JSON.toJSONString(houses);

       // System.out.println("进入了severlet");

        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
