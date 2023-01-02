<%--
  Created by IntelliJ IDEA.
  User: verdictor
  Date: 2023/1/2
  Time: 18:02
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: leo
  Date: 2023/1/2
  Time: 17:10
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
    <div class="contleft">
      <ul class="leftNav">
        <li class="leftNavCur"><a href="about.jsp">关于我们</a></li>
        <li><a href="contact.jsp">联系我们</a></li>
      </ul><!--leftNav/-->
    </div><!--contleft/-->
    <div class="contright">
      <h2 class="rightat">公司简介</h2>
      <div class="about">
        <img src="images/about.jpg"/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;从创立之初，百度便将“让人们最平等、便捷地获取信息，找到所求”作为自己的使命，成立以来，公司秉承“以用户为导向”的理念，不断坚持技术创新，致力于为用户提供“简单，可依赖”的互联网搜索产品及服务，其中包括：以网络搜索为主的功能性搜索，以贴吧为主的社区搜索，针对各区域、行业所需的垂直搜索，Mp3搜索，以及门户频道、IM等，全面覆盖了中文网络世界所有的搜索需求，根据第三方权威数据，百度在中国的搜索份额超过80%。
        <br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在面对用户的搜索产品不断丰富的同时，百度还创新性地推出了基于搜索的营销推广服务，并成为最受企业青睐的互联网营销推广平台。如今，中国已有数十万家企业使用了百度的搜索推广服务，不断提升企业自身的品牌及运营效率。通过持续的商业模式创新，百度正进一步带动整个互联网行业和中小企业的经济增长，推动社会经济的发展和转型。
        <br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;为推动中国数百万中小网站的发展，百度借助超大流量的平台优势，联合所有优质的各类网站，建立了世界上最大的网络联盟，使各类企业的搜索推广、品牌营销的价值、覆盖面均大面积提升。与此同时，各网站也在联盟大家庭的互助下，获得最大的生存与发展机会。
        <br/><br/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作为国内的一家知名企业，百度也一直秉承“弥合信息鸿沟，共享知识社会”的责任理念，坚持履行企业公民的社会责任。成立来，百度利用自身优势积极投身公益事业，先后投入巨大资源，为盲人、少儿、老年人群体打造专门的搜索产品，解决了特殊群体上网难问题,极大地弥补了社会信息鸿沟问题。此外，在加速推动中国信息化进程、净化网络环境、搜索引擎教育及提升大学生就业率等方面，百度也一直走在行业领先的地位。2011年初，百度还特别成立了百度基金会，围绕知识教育、环境保护、灾难救助等领域，更加系统规范地管理和践行公益事业。

      </div>
    </div><!--contright/-->
    <div class="clears"></div>
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
<div class="copy">Copyright@ 2023 房屋租赁系统 版权所有 上海海洋大学 技术支持：<a target="_blank" href="/">csdn</a>
</div>