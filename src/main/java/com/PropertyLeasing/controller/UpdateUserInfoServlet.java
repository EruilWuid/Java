package com.PropertyLeasing.controller;

import com.PropertyLeasing.entity.User;
import com.PropertyLeasing.service.UserService;
import com.PropertyLeasing.service.impl.UserServiceImpl;
import com.alibaba.fastjson.JSONObject;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpdateUserInfoServlet", value = "/UpdateUserInfoServlet")
public class UpdateUserInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user1 = (User) request.getSession().getAttribute("USER");
        int userid = user1.getUserId();
        UserService service = new UserServiceImpl();
        User user = service.findUserById(userid);
        request.setAttribute("user", user);
        request.getRequestDispatcher("user.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("进入severlet");

        String userid = request.getParameter("userid");
        String phone = request.getParameter("phone");
        String name = request.getParameter("name");
        String qq_number = request.getParameter("qq_number");
        String signature = request.getParameter("signature");

        User user = new User(Integer.parseInt(userid),name,qq_number,signature,phone);
        UserService service = new UserServiceImpl();

        boolean res = service.updateUserInfo(user);
        JSONObject obj = new JSONObject();
        obj.put("res", res);
        response.getWriter().println(obj);
    }
}
