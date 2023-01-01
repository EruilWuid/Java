package com.PropertyLeasing.Filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;


@WebFilter("/*")
public class LoginFilter implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req = (HttpServletRequest) request;
        //判断访问资源路径是否和登录注册相关
        String[] urls = {"/login.jsp","/css/","/images","/js","/upload","/LoginServlet","/reg.jsp","/RegisterServlet"};
        // 获取当前访问的资源路径
        String url = req.getRequestURL().toString();


        for (String u : urls) {
            if(url.contains(u)){
                chain.doFilter(request, response);
                return;
            }
        }


        // 判断session中是否有user
        HttpSession session = req.getSession();
        Object user = session.getAttribute("USER");

        // 判断user是否为null
        if(user != null){

            chain.doFilter(request, response);
        }else {
            // 没有登陆，存储提示信息，跳转到登录页面

            req.setAttribute("msg","您尚未登陆！");
            req.getRequestDispatcher("/login.jsp").forward(req,response);
        }


    }


    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }


}
