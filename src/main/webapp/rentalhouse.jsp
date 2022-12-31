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
              <select>
                <option value="pudong">浦东新区</option>
                <option value="huangpu">黄浦区</option>
                <option value="qingpu">青浦区</option>
                <option value="baoshan">宝山区</option>
                <option value="jinshan">金山区</option>
                <option value="putuo">普陀区</option>
                <option value="jingan">静安区</option>
                <option value="xuhui">徐汇区</option>
                <option value="changning">长宁区</option>
                <option value="hongkou">虹口区</option>
                <option value="yangpu">杨浦区</option>
                <option value="minhang">闵行区</option>
                <option value="jiading">嘉定区</option>
                <option value="fengxian">奉贤区</option>
                <option value="songjiang">松江区</option>
                <option value="chongming">崇明区</option>
              </select>
            </td>

          </tr>
          <tr>
            <th valign="top">房屋描述：</th>
            <td>
              <input class="inp inw" id="horsedescribe" name="horsedescribe" ></input>
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
          </tbody>
        </table>
      </form>
    </div>
  </div>
</div>
</body>
</html>