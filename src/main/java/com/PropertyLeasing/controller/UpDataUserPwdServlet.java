package com.PropertyLeasing.controller;

import com.PropertyLeasing.entity.User;
import com.PropertyLeasing.service.UserService;
import com.PropertyLeasing.service.impl.UserServiceImpl;
import com.alibaba.fastjson.JSONObject;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "UpDataUserPwdServlet", value = "/UpDataUserPwdServlet")
public class UpDataUserPwdServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user1 = (User) request.getSession().getAttribute("USER");
        int userid = user1.getUserId();

        UserService service = new UserServiceImpl();
        User user = service.findUserById(userid);

        request.setAttribute("user", user);
        request.getRequestDispatcher("user_pwd.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password = request.getParameter("password");
        User user =  (User) request.getSession().getAttribute("USER");
        int userid = user.getUserId();

        UserService service = new UserServiceImpl();
        boolean res = service.updatePwd(userid,password);

        JSONObject obj = new JSONObject();
        obj.put("res", res);

        response.getWriter().println(obj);
    }
}
