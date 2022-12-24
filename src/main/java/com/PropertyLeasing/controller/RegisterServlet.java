package com.PropertyLeasing.controller;

import com.PropertyLeasing.entity.User;
import com.PropertyLeasing.service.UserService;
import com.PropertyLeasing.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        //service判断
        UserService service = new UserServiceImpl();
        User user = new User(username,password);
        boolean res = service.register(user);
        //判断是否存在该用户，有返回1，无返回0


        if (res) {
            response.sendRedirect("login.jsp");
        } else {
            request.setAttribute("register_msg","改邮箱已被注册");
            request.getRequestDispatcher("/reg.jsp").forward(request,response);
        }



    }
}
