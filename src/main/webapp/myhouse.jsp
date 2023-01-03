<%--
  Created by IntelliJ IDEA.
  User: verdictor
  Date: 2023/1/2
  Time: 1:15
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: leo
  Date: 2023/1/1
  Time: 22:05
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


</head>

<body>


<%@ include file="header.jsp" %>


<div id="app">


    <template>
        <el-table
                :data="housetable"
                style="width: 100%"
                :row-class-name="tableRowClassName">
            <el-table-column
                    prop="address"
                    label="地址"
                    align="center">
            </el-table-column>
            <el-table-column
                    prop="rent"
                    label="租金"
                    align="center">
            </el-table-column>
            <el-table-column
                    prop="area"
                    label="面积"
                    align="center">
            </el-table-column>
            <el-table-column
                    prop="floor"
                    label="楼层"
                    align="center">
            </el-table-column>
            <el-table-column
                    prop="communityname"
                    label="区名"
                    align="center">
            </el-table-column>
            <el-table-column
                    prop="orientation"
                    label="朝向"
                    align="center">
            </el-table-column>
            <el-table-column
                    prop="housedescribe"
                    label="房屋描述"
                    align="center">
            </el-table-column>
            <el-table-column
                    prop="address"
                    label="操作"
                    align="center">
                <template slot-scope="scope">
                    <el-button @click="change(scope.row)" type="primary" size="small">修改</el-button>
                    <el-button @click="shanchu(scope.row);refresh()" type="primary" size="small">删除</el-button>
                </template>

            </el-table-column>
        </el-table>
    </template>



</div>

<style>
    .el-table .warning-row {
        background: oldlace;
    }

    .el-table .success-row {
        background: #f0f9eb;
    }
</style>

<script src="js/axios-0.18.0.js"></script>
<script src="js/vue.js"></script>
<script src="element-ui/lib/index.js"></script>
<link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">





<script>
    new Vue({
        el:"#app",
        data() {
            return {
                houses:[],
                housetable:[]
            }
        },
        methods: {
            refresh(){
                console.log("点击刷新页面")
                window.location.reload() // 第一种方式
            },
            shanchu(row){
                var _this=this;
                axios({
                    method: "post",
                    url:"http://localhost:8080/Java_BW_war/DeleteHouseServlet",
                    data:row
                }).then(function(resp){
                    _this.housetable = resp.data;
                })
            },
            change(row){
                var _this=this;
                axios({
                    method: "post",
                    url:"http://localhost:8080/Java_BW_war/TranChangeServlet",
                    data:row
                }).then(function(resp){
                    _this.housetable = resp.data;
                }).then(response => {
                    window.location.assign('/Java_BW_war/changeinfo.jsp')
                })

            },
            show(){
                var _this=this;
                axios({
                    method: "get",
                    url:"http://localhost:8080/Java_BW_war/SelectByUseridServlet"
                }).then(function(resp){
                    _this.housetable = resp.data;
                })
            },
            tableRowClassName({row, rowIndex}) {
                if ((rowIndex %4)== 1) {
                    return 'warning-row';
                } else if ((rowIndex %4)== 3) {
                    return 'success-row';
                }
                return '';
            }
        },
        mounted(){
            this.show();
        }



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
