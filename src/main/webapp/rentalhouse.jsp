<%--
  Created by IntelliJ IDEA.
  User: verdictor
  Date: 2022/12/28
  Time: 23:34
  To change this template use File | Settings | File Templates.
--%>
<%--<head>--%>
<%--    <meta charset="utf-8">--%>
<%--    <link type="text/css" href="css/css.css" rel="stylesheet"/>--%>
<%--    <title>房屋信息上传页面</title>--%>
<%--</head>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta name="Author" contect="http://www.webqin.net">
  <title>XXX</title>
  <link rel="shortcut icon" href="images/favicon.ico"/>
  <link type="text/css" href="css/css.css" rel="stylesheet"/>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.5.1.js"></script>
  <script type="text/javascript">
    $(function () {
      //导航定位
      $(".nav li:eq(6)").addClass("navCur");
    })

    function uploadImg() {
      let formData = new FormData(document.getElementById("form"));
      $.ajax({
        type: "post",
        url: "UploadImgServlet",
        async: false,
        processData: false,
        contentType: false,
        data: formData,
        dataType: "json",
        success: function (msg) {
          alert("上传成功")
          if (msg.file != null) {
            let html = "<img src='" + msg.file + "' width='100' height='100'/>";
            $("div[class='imgUpload']").empty();
            $("div[class='imgUpload']").html(html);
          }
        },
        error: function () {
          alert("当前服务繁忙，请稍后再试");
        }
      })
    }

  </script>
</head>

<body>
<%@ include file="header.jsp" %>
<link type="text/css" href="css/css.css" rel="stylesheet"/>
<div class="content">
  <div class="width1190">
    <div class="vip-left">
      <%@ include file="left.jsp" %>
    </div><!--vip-left/-->
    <div class="vip-right">
      <h3 class="vipright-title">上传房屋信息</h3>
      <form id="form_1" action="NewHouseInfoServlet" method="post">
        <%--获取用户Id--%>
        <table class="grinfo">
          <tbody>
          <tr>
            <th>租金：</th>
            <td><input class="inp inw" type="text" name="rent" >
            </td>
          </tr>
          <tr>
            <th> 面积：</th>
            <td>
              <input class="inp inw" name="area" type="text" >
            </td>
          </tr>
          <tr>
            <th>&nbsp;阳台朝向：</th>
            <td>
              <input class="inp inw" type="text" maxlength="20"  name="orientation">
            </td>
          </tr>
          <tr>
            <th> 楼层：</th>
            <td>
              <input class="inp inw" name="floor" type="text" >
            </td>
          </tr>
          <tr>
            <th>&nbsp;地址：</th>
            <td>
              <input class="inp inw" type="text" maxlength="200"  name="address">
            </td>
          </tr>

          <tr>
            <th> 所处区：</th>
            <td>
              <select name = "communityname">
                <option value="浦东新区">浦东新区</option>
                <option value="黄浦区">黄浦区</option>
                <option value="青浦区">青浦区</option>
                <option value="宝山区">宝山区</option>
                <option value="金山区">金山区</option>
                <option value="普陀区">普陀区</option>
                <option value="静安区">静安区</option>
                <option value="徐汇区">徐汇区</option>
                <option value="长宁区">长宁区</option>
                <option value="虹口区">虹口区</option>
                <option value="杨浦区">杨浦区</option>
                <option value="闵行区">闵行区</option>
                <option value="嘉定区">嘉定区</option>
                <option value="奉贤区">奉贤区</option>
                <option value="松江区">松江区</option>
                <option value="崇明区">崇明区</option>
              </select>
            </td>

          </tr>
          <tr>
            <th valign="top">房屋描述：</th>
            <td>
              <input class="inp inw" id="housedescribe" name="housedescribe" ></input>
              <br>
              <span class="fgrey">(100字以内)</span>
            </td>
          </tr>
          <tr>
            <th>&nbsp;</th>
            <td colspan="2">
              <label class="butt" id="butt">
                <input class="submit"  type="submit" value="立即上传"/>
              </label>
            </td>
          </tr>
          <span style="color: red;margin-left: 94px;font-size: 13px;margin-bottom: 10px">${requestScope.House_msg}</span>
          </tbody>
        </table>
      </form>
    </div>
  </div>
</div>
</body>
</html>