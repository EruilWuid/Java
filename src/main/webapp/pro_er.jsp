<%--
  Created by IntelliJ IDEA.
  User: verdictor
  Date: 2022/12/31
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta name="Author" contect="http://www.webqin.net">
  <title>XXX</title>
  <link rel="shortcut icon" href="images/favicon.ico"/>
  <link type="text/css" href="${pageContext.request.contextPath}/css/css.css" rel="stylesheet"/>
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/js.js"></script>
<%--  <script type="text/javascript">--%>
<%--    $(function () {--%>
<%--      //导航定位--%>
<%--      $(".nav li:eq(3)").addClass("navCur");--%>

<%--      q(0)--%>
<%--      w(0)--%>
<%--      r(0)--%>
<%--      t(0)--%>
<%--      newHorse();--%>
<%--    })--%>

<%--    var qq = "";--%>
<%--    var ww = "";--%>
<%--    var rr = "";--%>
<%--    var tt = "";--%>

<%--    function q(x) {--%>
<%--      qq = x;--%>
<%--      $.ajax({--%>
<%--        type: "post",--%>
<%--        url: "SelectedServlet",--%>
<%--        data: {"qq": qq, "ww": ww, "rr": rr, "tt": tt, "categoryid": 3},--%>
<%--        dataType: "json",--%>
<%--        success: function (msg) {--%>
<%--          if (msg.horse != null) {--%>
<%--            let html = "";--%>
<%--            for (let h of msg.horse) {--%>
<%--              html += "<dl><dt><a href='FindHorseDetailServlet?horseid=" + h.horseid + "'><img src='" + h.img + "' width='286' height='188'/></a></dt>";--%>
<%--              html += "<dd><h3><a href='FindHorseDetailServlet?horseid=" + h.horseid + "'>" + h.describe + "</a></h3><div class=' pro-wei'>";--%>
<%--              html += "<img src='images/weizhi.png' width='12' height='16'/><strong class='red'>" + h.communityname + "</strong></div>";--%>
<%--              html += "<div class='pro-fang'>" + h.housetype + " " + h.area + "平 " + h.orientation + " " + h.floor + "</div><div class='pra-fa'>发布人：张先生 发布时间：" + h.createtime + "</div></dd>";--%>
<%--              html += "<div class='price'>¥ <strong>" + h.rent + "</strong><span class='font12'>元/月</span></div><div class='clears'></div></dl>";--%>
<%--            }--%>
<%--            $("div[class='pro-left']").empty()--%>
<%--            $("div[class='pro-left']").html(html);--%>
<%--          }--%>
<%--        }--%>
<%--      })--%>
<%--    }--%>

<%--    function w(x, y) {--%>
<%--      ww = x + "," + y;--%>
<%--      $.ajax({--%>
<%--        type: "post",--%>
<%--        url: "SelectedServlet",--%>
<%--        data: {"qq": qq, "ww": ww, "rr": rr, "tt": tt, "categoryid": 3},--%>
<%--        dataType: "json",--%>
<%--        success: function (msg) {--%>
<%--          if (msg.horse != null) {--%>
<%--            if (msg.horse != null) {--%>
<%--              let html = "";--%>
<%--              for (let h of msg.horse) {--%>
<%--                html += "<dl><dt><a href='FindHorseDetailServlet?horseid=" + h.horseid + "'><img src='" + h.img + "' width='286' height='188'/></a></dt>";--%>
<%--                html += "<dd><h3><a href='FindHorseDetailServlet?horseid=" + h.horseid + "'>" + h.describe + "</a></h3><div class=' pro-wei'>";--%>
<%--                html += "<img src='images/weizhi.png' width='12' height='16'/><strong class='red'>" + h.communityname + "</strong></div>";--%>
<%--                html += "<div class='pro-fang'>" + h.housetype + " " + h.area + "平 " + h.orientation + " " + h.floor + "</div><div class='pra-fa'>发布人：张先生 发布时间：" + h.createtime + "</div></dd>";--%>
<%--                html += "<div class='price'>¥ <strong>" + h.rent + "</strong><span class='font12'>元/月</span></div><div class='clears'></div></dl>";--%>
<%--              }--%>
<%--              $("div[class='pro-left']").empty()--%>
<%--              $("div[class='pro-left']").html(html);--%>
<%--            }--%>
<%--          }--%>
<%--        }--%>
<%--      })--%>
<%--    }--%>

<%--    function r(x, y) {--%>
<%--      rr = x + "," + y;--%>
<%--      $.ajax({--%>
<%--        type: "post",--%>
<%--        url: "SelectedServlet",--%>
<%--        data: {"qq": qq, "ww": ww, "rr": rr, "tt": tt, "categoryid": 3},--%>
<%--        dataType: "json",--%>
<%--        success: function (msg) {--%>
<%--          if (msg.horse != null) {--%>
<%--            if (msg.horse != null) {--%>
<%--              let html = "";--%>
<%--              for (let h of msg.horse) {--%>
<%--                html += "<dl><dt><a href='FindHorseDetailServlet?horseid=" + h.horseid + "'><img src='" + h.img + "' width='286' height='188'/></a></dt>";--%>
<%--                html += "<dd><h3><a href='FindHorseDetailServlet?horseid=" + h.horseid + "'>" + h.describe + "</a></h3><div class=' pro-wei'>";--%>
<%--                html += "<img src='images/weizhi.png' width='12' height='16'/><strong class='red'>" + h.communityname + "</strong></div>";--%>
<%--                html += "<div class='pro-fang'>" + h.housetype + " " + h.area + "平 " + h.orientation + " " + h.floor + "</div><div class='pra-fa'>发布人：张先生 发布时间：" + h.createtime + "</div></dd>";--%>
<%--                html += "<div class='price'>¥ <strong>" + h.rent + "</strong><span class='font12'>元/月</span></div><div class='clears'></div></dl>";--%>
<%--              }--%>
<%--              $("div[class='pro-left']").empty()--%>
<%--              $("div[class='pro-left']").html(html);--%>
<%--            }--%>
<%--          }--%>
<%--        }--%>
<%--      })--%>
<%--    }--%>

<%--    function t(x) {--%>
<%--      tt = x;--%>
<%--      $.ajax({--%>
<%--        type: "post",--%>
<%--        url: "SelectedServlet",--%>
<%--        data: {"qq": qq, "ww": ww, "rr": rr, "tt": tt, "categoryid": 3},--%>
<%--        dataType: "json",--%>
<%--        success: function (msg) {--%>
<%--          if (msg.horse != null) {--%>
<%--            if (msg.horse != null) {--%>
<%--              let html = "";--%>
<%--              for (let h of msg.horse) {--%>
<%--                html += "<dl><dt><a href='FindHorseDetailServlet?horseid=" + h.horseid + "'><img src='" + h.img + "' width='286' height='188'/></a></dt>";--%>
<%--                html += "<dd><h3><a href='FindHorseDetailServlet?horseid=" + h.horseid + "'>" + h.communityname + "</a></h3><div class=' pro-wei'>";--%>
<%--                html += "<img src='images/weizhi.png' width='12' height='16'/><strong class='red'>" + h.communityname + "</strong></div>";--%>
<%--                html += "<div class='pro-fang'>" + h.typename + " " + h.area + "平 " + h.orientation + " " + h.floor + "</div><div class='pra-fa'>发布人：张先生 发布时间：" + h.createtime + "</div></dd>";--%>
<%--                html += "<div class='price'>¥ <strong>" + h.rent + "</strong><span class='font12'>元/月</span></div><div class='clears'></div></dl>";--%>
<%--              }--%>
<%--              $("div[class='pro-left']").empty()--%>
<%--              $("div[class='pro-left']").html(html);--%>
<%--            }--%>
<%--          }--%>
<%--        }--%>
<%--      })--%>
<%--    }--%>


<%--    function sort(x) {--%>
<%--      let method = x;--%>
<%--      $.ajax({--%>
<%--        type: "get",--%>
<%--        url: "SortHorseServlet",--%>
<%--        data: {"method": method, "categoryid": 3},--%>
<%--        dataType: "json",--%>
<%--        success: function (msg) {--%>
<%--          if (msg.horse != null) {--%>
<%--            let html = "";--%>
<%--            for (let h of msg.horse) {--%>
<%--              html += "<dl><dt><a href='FindHorseDetailServlet?horseid=" + h.horseid + "'><img src='" + h.img + "' width='286' height='188'/></a></dt>";--%>
<%--              html += "<dd><h3><a href='FindHorseDetailServlet?horseid=" + h.horseid + "'>" + h.communityname + "</a></h3><div class=' pro-wei'>";--%>
<%--              html += "<img src='images/weizhi.png' width='12' height='16'/><strong class='red'>" + h.communityname + "</strong></div>";--%>
<%--              html += "<div class='pro-fang'>" + h.housetype + " " + h.area + "平 " + h.orientation + " " + h.floor + "</div><div class='pra-fa'>发布人：张先生 发布时间：" + h.createtime + "</div></dd>";--%>
<%--              html += "<div class='price'>¥ <strong>" + h.rent + "</strong><span class='font12'>元/月</span></div><div class='clears'></div></dl>";--%>
<%--            }--%>
<%--            $("div[class='pro-left']").empty()--%>
<%--            $("div[class='pro-left']").html(html);--%>
<%--          }--%>
<%--        }--%>
<%--      })--%>
<%--    }--%>

<%--    function sort1() {--%>
<%--      q(0)--%>
<%--      w(0)--%>
<%--      r(0)--%>
<%--      t(0)--%>
<%--    }--%>

<%--    function newHorse() {--%>
<%--      $.ajax({--%>
<%--        type: "post",--%>
<%--        url: "NewHorseServlet",--%>
<%--        data: {"categoryid": 3},--%>
<%--        dataType: "json",--%>
<%--        success: function (msg) {--%>
<%--          let html = "";--%>
<%--          for (let h of msg.horse) {--%>
<%--            html += "<dl><dt><a href='FindHorseDetailServlet?horseid=" + h.horseid + "'><img style='width: 300px;height: 100px' src='" + h.img + "'/></a></dt><dd>";--%>
<%--            html += "<h3><a href='FindHorseDetailServlet?horseid=" + h.horseid + "'>" + h.communityname + "</a></h3>";--%>
<%--            html += "<div class='pro-fang'>" + h.housetype + " " + h.area + "平 " + h.orientation + " " + h.floor + "</div>";--%>
<%--            html += "<div class='right-price'>" + h.rent + "元/月</div></dd></dl>"--%>
<%--          }--%>
<%--          $("div[class='right-pro']").empty();--%>
<%--          $("div[class='right-pro']").html(html);--%>
<%--        },--%>
<%--        error: function () {--%>
<%--          alert("错误")--%>
<%--        }--%>
<%--      })--%>
<%--    }--%>
<%--  </script>--%>

</head>

<body>
<script src="js/axios-0.18.0.js"></script>

<script>
  window.onload=function (){
    axios({
      method: "get",
      url:"http://localhost:8080/Java_BW_war/SelectAllServlet"
    }).then(function (resp){
      let houses=resp.data;

      let tabledata="<tr>\n"+
              "   <th>房屋地址</th>\n"+
              "<th>租金</th>\n"+
              "<th>面积</th>\n"+
              "</tr>\n";



      for(let i=0;i<houses.length;i++)
      {
        let house = houses[i];

        tabledata+="\n"+" <tr align=\"center\">\n"+ "<td>"+house.address+"</td>\n"+ "<td>"+house.rent+"</td>\n"+ "<td>"+house.area+"</td>\n"+ "<td><a href=\"#\">修改</a> <a href=\"#\">删除</a></td>\n"+"</tr>";


      }
      document.getElementById("housetable").innerHTML=tabledata;


    })
  }


</script>




<%@ include file="header.jsp" %>
<div class="content">
  <div class="width1190">
    <form action="#" method="get" class="pro-search">

      <table>
        <tr>
          <th>房源区域：</th>
          <td>
            <a href="javascript:;" onclick="q(0)" class="pro-cur">不限</a>
            <a href="javascript:;" onclick="q(1)">浦东新区</a>
            <a href="javascript:;" onclick="q(2)">黄浦区</a>
            <a href="javascript:;" onclick="q(3)">青浦区</a>
            <a href="javascript:;" onclick="q(4)">宝山区</a>
            <a href="javascript:;" onclick="q(5)">金山区</a>
            <a href="javascript:;" onclick="q(6)">普陀区</a>
            <a href="javascript:;" onclick="q(7)">静安区</a>
            <a href="javascript:;" onclick="q(8)">徐汇区</a>
            <a href="javascript:;" onclick="q(9)">长宁区</a>
            <a href="javascript:;" onclick="q(10)">虹口区</a>
            <a href="javascript:;" onclick="q(11)">杨浦区</a>
            <a href="javascript:;" onclick="q(12)">闵行区</a>
            <a href="javascript:;" onclick="q(13)">嘉定区</a>
            <a href="javascript:;" onclick="q(14)">奉贤区</a>
            <a href="javascript:;" onclick="q(15)">松江区</a>
            <a href="javascript:;" onclick="q(16)">崇明区</a>
          </td>
        </tr>
        <tr>
          <th>价格：</th>
          <td>
            <a href="javascript:;" onclick="w(0)" class="pro-cur">不限</a>
            <a href="javascript:;" onclick="w(500,1000)">500-1000</a>
            <a href="javascript:;" onclick="w(1001,3000)">1001-3000</a>
            <a href="javascript:;" onclick="w(3001,4000)">3001-4000</a>
            <a href="javascript:;" onclick="w(4000,9999)">大于4000</a>
          </td>
        </tr>
        <tr>
          <th>面积：</th>
          <td>
            <a href="javascript:;" onclick="r(0)" class="pro-cur">不限</a>
            <a href="javascript:;" onclick="r(1,10)">10平方</a>
            <a href="javascript:;" onclick="r(20,40)">20-40平方</a>
            <a href="javascript:;" onclick="r(41,60)">41-60平方</a>
            <a href="javascript:;" onclick="r(61,80)">61-80平方</a>
            <a href="javascript:;" onclick="r(81,500)">81平方以上</a>
          </td>
        </tr>
      </table>
      <div class="paixu">
        <strong>排序：</strong>
        <a href="javascript:;" onclick="sort1()" class="pai-cur">默认</a>
        <a href="javascript:;" onclick="sort(1)">价格 &or;</a>
        <a href="javascript:;" onclick="sort(2)">最新 &or;</a>
      </div>
    </form><!--pro-search/-->
  </div><!--width1190/-->

  <a href="rentalhouse.jsp"><input type="button" value="新增"></a><br>
  <hr>
  <table id="housetable" border="1" cellspacing="0" width="100%">

  </table>





  <div class="width1190">
    <div class="pro-left">
      <c:forEach var="h" items="${requestScope.lists}">
      <dl>
        <dt><a href="FindHorseDetailServlet?horseid=${h.horseid}"><img src="${h.img}" width="286"
                                                                       height="200"/></a></dt>
        <dd>
          <h3><a href="FindHorseDetailServlet?horseid=${h.horseid}">${h.describe}</a></h3>
          <div class="pro-wei">
            <img src="images/weizhi.png" width="12" height="16"/> <strong
                  class="red">${h.communityid}</strong>
          </div>
          <div class="pro-fang">${h.housetype} ${h.area}平 ${h.orientation} ${h.floor}</div>
          <div class="pra-fa">发布人：张先生 发布时间：2015-12-03</div>
        </dd>
        <div class="price">¥ <strong>${h.rent}</strong><span class="font12">元/月</span></div>
        <div class="clears"></div>
      </dl>
      </c:forEach>



      <div class="footer">
        <div class="width1190">
          <div class="fl"><a href="index.html"><strong>XXX</strong></a><a href="about.jsp">关于我们</a><a
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
      <div class="copy">Copyright@ 2020 XXX 版权所有 沪ICP备XXX号-0&nbsp;&nbsp;&nbsp;&nbsp;技术支持：<a target="_blank" href="/">XXX</a>
      </div>
      <div class="bg100"></div>
      <div class="zhidinggoufang">
        <h2>指定购房 <span class="close">X</span></h2>
        <form action="#" method="get">
          <div class="zhiding-list">
            <label>选择区域：</label>
            <select>
              <option>智慧园</option>
              <option>立民村</option>
              <option>塘口村</option>
              <option>勤劳村</option>
              <option>芦胜村</option>
              <option>知新村</option>
            </select>
          </div>
          <div class="zhiding-list">
            <label>方式：</label>
            <select>
              <option>租房</option>
              <option>新房</option>
              <option>二手房</option>
            </select>
          </div>
          <div class="zhiding-list">
            <label>联系方式：</label>
            <input type="text"/>
          </div>
          <div class="zhidingsub"><input type="submit" value="提交"/></div>
        </form>
        <div class="zhidingtext">
          <h3>指定购房注意事宜：</h3>
          <p>1、请详细输入您所需要购买的房源信息(精确到小区)</p>
          <p>2、制定购房申请提交后，客服中心会在24小时之内与您取得联系</p>
          <p>3、如有任何疑问，请随时拨打我们的电话：400-000-0000</p>
        </div><!--zhidingtext/-->
      </div><!--zhidinggoufang/-->
</body>
</html>
