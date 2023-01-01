package com.PropertyLeasing.controller;

import com.PropertyLeasing.entity.House;
import com.PropertyLeasing.service.HouseService;
import com.PropertyLeasing.service.impl.HouseServiceImpl;
import com.alibaba.fastjson.JSON;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.BufferedReader;
import java.io.IOException;

@WebServlet(name = "DeleteHouseServlet", value = "/DeleteHouseServlet")
public class DeleteHouseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedReader br = request.getReader();
        String params = br.readLine();//json字符串
        //转为 House
        House house = JSON.parseObject(params, House.class);
        int houseid = house.getHouseid();

        HouseService service = new HouseServiceImpl();
        service.DeleteHouse(houseid);

        response.sendRedirect(request.getRequestURI());
    }
}
