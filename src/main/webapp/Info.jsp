<%--
  Created by IntelliJ IDEA.
  User: leo
  Date: 2023/1/1
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>



<script src="js/axios-0.18.0.js"></script>
<script src="js/vue.js"></script>
<script src="element-ui/lib/index.js"></script>
<link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">

<%@ include file="header.jsp" %>
<div id="app">
  <template>
    <el-table
            :data="housetable"
            style="width: 100%"
            :row-class-name="tableRowClassName">
      <el-table-column
              prop="houseId"
              label="房屋id"
              align="center">
      </el-table-column>
      <el-table-column
              prop="address"
              label="地址"
              align="center">
      </el-table-column>
      <el-table-column
              prop="communityname"
              label="区域"
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
              prop="orientation"
              label="朝向"
              align="center">
      </el-table-column>
      <el-table-column
              prop="name"
              label="所有者用户名"
              align="center">
      </el-table-column>
      <el-table-column
              prop="phone"
              label="所有者手机号"
              align="center">
      </el-table-column>
      <el-table-column
              prop="qq_number"
              label="所有者qq号"
              align="center">
      </el-table-column>

      <%--    <hr>--%>
      <%--    <table id="housetable" border="1" cellspacing="0" width="100%">--%>
      <%--        <tr>--%>
      <%--            <th>id</th>--%>
      <%--            <th>房屋地址</th>--%>
      <%--            <th>区域</th>--%>
      <%--            <th>租金</th>--%>
      <%--            <th>面积</th>--%>
      <%--            <th>楼层</th>--%>
      <%--            <th>朝向</th>--%>
      <%--            <th>所有者用户名</th>--%>
      <%--            <th>所有者手机号</th>--%>
      <%--            <th>所有者qq号</th>--%>
      <%--        </tr>--%>

      <%--        <!----%>
      <%--        使用v-for遍历tr--%>
      <%--        -->--%>
      <%--        <tr  align="center">--%>
      <%--            <td>{{houses.houseid}}</td>--%>
      <%--            <td>{{houses.address}}</td>--%>
      <%--            <td>{{houses.communityname}}</td>--%>
      <%--            <td>{{houses.rent}}元/月</td>--%>
      <%--            <td>{{houses.area}}平方米</td>--%>
      <%--            <td>{{houses.floor}}层</td>--%>
      <%--            <td>{{houses.orientation}}</td>--%>
      <%--            <td>{{houses.name}}</td>--%>
      <%--            <td>{{houses.phone}}</td>--%>
      <%--            <td>{{houses.qq_number}}</td>--%>
      <%--        </tr>--%>


      <%--    </table>--%>



</div>
<script>
  new Vue({
    el:"#app",
    data(){
      return{
        houses:[],
        housetable:[]
      }
    },
    methods:{
      show(){
        var _this=this;
        axios({
          method: "get",
          url:"http://localhost:8080/Java_BW_war/FindDetailServlet"
        }).then(function(resp){
          _this.housetable = resp.data;
        })
      }
    },
    mounted(){
      var _this=this;
      axios({
        method: "get",
        url:"http://localhost:8080/Java_BW_war/FindDetailServlet"
      }).then(function(resp){
        _this.houses = resp.data;
      })


    }



  })

</script>
</body>
</html>