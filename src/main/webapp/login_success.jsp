<%--
  Created by IntelliJ IDEA.
  User: verdictor
  Date: 2023/1/1
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: leo
  Date: 2023/1/1
  Time: 13:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>welcom</title>
</head>
<body>
<div>
    欢迎用户
    登录成功！！！！

    <p style="text-indent: 2em; margin-top: 30px;">
        系统将在 <span id="time">5</span> 秒钟后自动跳转至新网址，如果未能跳转，<a href="pro_er.jsp" title="点击访问">请点击</a>。</p>

    <script type="text/javascript">

        delayURL();

        function delayURL() {

            var delay = document.getElementById("time").innerHTML;

            var t = setTimeout("delayURL()", 1000);

            if (delay > 0) {

                delay--;

                document.getElementById("time").innerHTML = delay;

            } else {

                clearTimeout(t);

                window.location.href = "http://localhost:8080/Java_BW_war/pro_er";

            }

        }

    </script>


    </script>
</div>
</body>
</html>

