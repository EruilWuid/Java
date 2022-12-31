package com.PropertyLeasing.controller;

import com.PropertyLeasing.entity.User;
import com.PropertyLeasing.service.UserService;
import com.PropertyLeasing.service.impl.UserServiceImpl;
import com.alibaba.fastjson.JSONObject;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;

@WebServlet(name = "UploadImgServlet", value = "/UploadImgServlet")
@MultipartConfig(maxFileSize = 1024 * 1024 * 2)
public class UploadImgServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");  //请求的编码
        response.setContentType("text/html; charset=utf-8");  //响应编码
     //   System.out.print("进来了");
        int userid = ((User) request.getSession().getAttribute("USER")).getUserId();
        Part file = request.getPart("file");

        String path = "F:\\Java BW\\Java_BW\\src\\main\\webapp\\upload";
        File f = new File(path);

        String fn = file.getSubmittedFileName();

        if (fn.toLowerCase().endsWith(".jpg") || fn.toLowerCase().endsWith(".png")) {

            String nfn = userid + fn;
            file.write(path + "/" + nfn);
            System.out.println("nfn" + nfn);

            String fileName = "upload/" + nfn;

            UserService service = new UserServiceImpl();
            boolean res = service.uploadImg(fileName, userid);

            if (res) {
                JSONObject obj = new JSONObject();
                obj.put("file", fileName);
                response.getWriter().println(obj);

            }
        } else {
            JSONObject obj = new JSONObject();
            obj.put("file", "文件上传失败，必须为jpg或png图像文件");
            response.getWriter().println(obj);
        }
    }
}
