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

        String t_rent = request.getParameter("rent");
        String t_area = request.getParameter("area");
        String t_floor = request.getParameter("floor");
        String orientation = request.getParameter("orientation");
        String address = request.getParameter("address");
        String housedescribe = request.getParameter("housedescribe");
        String communityName = request.getParameter("communityname");
        String uimg = request.getParameter("uimg");
        int houseid = (int) request.getSession().getAttribute("Houseid");

        double rent = 0.00;
        double area = 0.00;
        int floor = 0;
        if(t_rent != ""){
             //System.out.println(t_rent);
             rent = Double.parseDouble(t_rent);
        }

        if(t_area != ""){
             area = Double.parseDouble(t_area);
        }
        if(t_floor != ""){
            floor = Integer.parseInt(t_floor);
        }



        House house = new House(houseid,rent,area,orientation,floor,address,housedescribe,communityName,uimg);

        HouseService service = new HouseServiceImpl();
        service.UpdateHouseInfo(house);

        response.sendRedirect("myhouse.jsp");


    }
}
