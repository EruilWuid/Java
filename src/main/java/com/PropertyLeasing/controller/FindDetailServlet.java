package com.PropertyLeasing.controller;

import com.PropertyLeasing.entity.Detail;
import com.PropertyLeasing.entity.House;
import com.PropertyLeasing.entity.User;
import com.PropertyLeasing.service.HouseService;
import com.PropertyLeasing.service.impl.HouseServiceImpl;
import com.alibaba.fastjson.JSON;

import javax.jws.soap.SOAPBinding;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "FindDetailServlet", value = "/FindDetailServlet")
public class FindDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int houseid = Integer.parseInt(request.getParameter("houseid"));

        HouseService service = new HouseServiceImpl();
        House house = service.FindDetail(houseid);
        User user = service.FindUser(houseid);
        Detail detail = new Detail(house,user);

        String jsonString = JSON.toJSONString(detail);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);

    }
}
