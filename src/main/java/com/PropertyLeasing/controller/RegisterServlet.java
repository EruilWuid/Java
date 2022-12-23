package com.PropertyLeasing.controller;

import com.PropertyLeasing.entity.User;
import com.PropertyLeasing.service.UserService;
import com.PropertyLeasing.service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
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
        UserService service = new UserServiceImpl();
        User user = new User(username,password);

        boolean res = service.register(user);
        if (res) {
            response.sendRedirect("login.jsp");
        } else {
            request.setAttribute("register_msg","改邮箱已被注册");
            request.getRequestDispatcher("/reg.jsp").forward(request,response);
        }



    }
}
