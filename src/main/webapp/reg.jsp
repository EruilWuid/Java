<%--
  Created by IntelliJ IDEA.
  User: verdictor
  Date: 2022/12/23
  Time: 0:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="Author" contect="http://www.webqin.net">
    <title>XXX</title>
    <link rel="shortcut icon" href="images/favicon.ico"/>
    <link type="text/css" href="css/css.css" rel="stylesheet"/>
    <script type="text/javascript" src="../js/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            //导航定位
            $(".nav li:eq(6)").addClass("navCur");

        })
    </script>
</head>

<body>
<%@ include file="header.jsp" %>
<div class="content">
    <div class="width1190">
        <div class="reg-logo">
            <form id="signupForm" method="post" action="RegisterServlet" class="zcform">
                <p class="clearfix">
                    <label class="one" for="agent">用户名：</label>
                    <input id="agent" name="username" type="text" class="required"
                           value placeholder="请输入您的用户名"/>
                </p>
                <span style="color: red;margin-left: 94px;font-size: 13px;margin-bottom: 10px">${requestScope.register_msg}</span>
                <p class="clearfix">
                    <label class="one" for="password">登录密码：</label>
                    <input id="password" name="password" type="password" class="{required:true,rangelength:[8,20],}"
                           value placeholder="请输入密码"/>
                </p>
                <p class="clearfix">
                    <label class="one" for="confirm_password">确认密码：</label>
                    <input id="confirm_password" name="confirm_password" type="password"
                           class="{required:true,equalTo:'#password'}" value placeholder="请再次输入密码"/>
                </p>
                <p class="clearfix agreement">
                    <input type="checkbox"/>
                    <b class="left">已阅读并同意<a href="#">《用户协议》</a></b>
                </p>
                <p class="clearfix"><input class="submit" type="submit" value="立即注册"/></p>
            </form>
            <div class="reg-logo-right">
                <h3>如果您已有账号，请</h3>
                <a href="login.jsp" class="logo-a">立即登录</a>
            </div><!--reg-logo-right/-->
            <div class="clears"></div>
        </div><!--reg-logo/-->
    </div><!--width1190/-->
</div><!--content/-->

<div class="footer">
    <div class="width1190">
        <div class="fl"><a href="about.jsp">关于我们</a><a
                href="contact.jsp">联系我们</a><a href="user.jsp">个人中心</a></div>
        <div class="fr">
            <dl>
                <dt><img src="images/erweima.png" width="76" height="76"/></dt>
                <dd>微信扫一扫<br/>房价点评，精彩发布</dd>
            </dl>
            <dl>
                <dt><img src="images/erweima.png" width="76" height="76"/></dt>
                <dd>微信扫一扫<br/>房价点评，精彩发布</dd>
            </dl>
            <div class="clears"></div>
        </div>
        <div class="clears"></div>
    </div><!--width1190/-->
</div><!--footer/-->
<div class="copy">Copyright@ 2023 房屋租赁系统 版权所有 上海海洋大学&nbsp;&nbsp;&nbsp;&nbsp;技术支持：<a target="_blank" href="https://www.csdn.net">CSDN</a>
</div>
<div class="bg100"></div>
</body>
</html>