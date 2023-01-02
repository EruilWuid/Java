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
import javax.sound.midi.Soundbank;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "FindDetailServlet", value = "/FindDetailServlet")
public class FindDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int houseid = (int) request.getSession().getAttribute("houseid");
        HouseService service = new HouseServiceImpl();

        System.out.println("有了"+houseid);
        House house = service.FindDetail(houseid);
        User user = service.FindUser(houseid);

        Detail detail = new Detail(house,user);

        List<Detail> details = new ArrayList<>();
        details.add(detail);
       // System.out.println("username:"+detail.getUsername());
        String jsonString = JSON.toJSONString(details);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
