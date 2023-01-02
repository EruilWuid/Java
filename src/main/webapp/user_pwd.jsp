<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="js/jquery.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="Author" contect="http://www.webqin.net">
    <title>XXX</title>
    <link rel="shortcut icon" href="images/favicon.ico"/>
    <link type="text/css" href="css/css.css" rel="stylesheet"/>
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/js.js"></script>
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
        <div class="vip-left">
            <%@ include file="left.jsp" %>
        </div><!--vip-left/-->
        <div class="vip-right">
            <h3 class="vipright-title">修改资料</h3>
            <table class="grinfo">
                <tbody>
<%--                <tr>--%>
<%--                    <th>原手机号：</th>--%>
<%--                    <td><strong>${user.phone}</strong></td>--%>
<%--                </tr>--%>
<%--                <tr>--%>
<%--                    <th>账号：</th>--%>
<%--                    <td><input class="inp inw" type="text" id="new_username" maxlength="15"--%>
<%--                               placeholder="不少于3位中英文即可"--%>
<%--                               value="${user.username}" onkeyup="return only_py_num(this)">--%>

<%--                    </td>--%>
<%--                </tr>--%>
                <tr>
                    <th>新密码：</th>
                    <td>
                        <input class="inp inw" type="password" id="new_password" placeholder="请输入新密码">
                    </td>
                </tr>
                <tr>
                    <th>重复新密码：</th>
                    <td>
                        <input class="inp inw" type="password" id="new_password1" placeholder="请再次输入新密码">
                    </td>
                </tr>
                <tr>
                    <th>&nbsp;</th>
                    <td colspan="2">
                        <label class="butt" id="butt">
                            <div class="member_mod_buttom" id="update" onclick="sub_username()">完成修改</div>
                        </label>
                    </td>
                </tr>
                </tbody>
            </table>
        </div><!--vip-right/-->
        <div class="clearfix"></div>
    </div><!--width1190/-->
</div><!--content/-->
<script>
    $(function () {
        $("#update").click(function () {
            //let username = $("#new_username").val();
            let password = $("#new_password1").val();
            $.ajax({
                type: "post",
                url: "UpDataUserPwdServlet",
                data: {"password": password},
                dataType: "json",
                success: function (msg) {
                    if (msg.res) {
                        alert("修改成功");
                    }
                }
            })
        })
    })
</script>

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
