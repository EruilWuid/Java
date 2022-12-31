package com.PropertyLeasing.controller;

import com.PropertyLeasing.service.HouseService;
import com.PropertyLeasing.service.impl.HouseServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteHouseServlet", value = "/DeleteHouseServlet")
public class DeleteHouseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int houseid = Integer.parseInt(request.getParameter("houseid"));

        HouseService service = new HouseServiceImpl();
        service.DeleteHouse(houseid);


    }
}
