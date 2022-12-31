package com.PropertyLeasing.controller;

import com.PropertyLeasing.entity.House;
import com.PropertyLeasing.service.HouseService;
import com.PropertyLeasing.service.impl.HouseServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateHouseInfoServlet", value = "/UpdateHouseInfoServlet")
public class UpdateHouseInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double rent = Double.parseDouble(request.getParameter("rent"));
        double area = Double.parseDouble(request.getParameter("area"));
        int floor = Integer.parseInt(request.getParameter("floor"));
        String orientation = request.getParameter("orientation");
        String address = request.getParameter("address");
        String housedescribe = request.getParameter("housedescribe");
        String communityName = request.getParameter("communityname");
        String uimg = request.getParameter("uimg");

        House house = new House(rent,area,orientation,floor,address,housedescribe,communityName,uimg);

        HouseService service = new HouseServiceImpl();
        service.UpdateHouseInfo(house);

        response.sendRedirect("");
    }
}
