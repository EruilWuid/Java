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
  <el-form :inline="true" :model="house" class="demo-form-inline">
    <el-form-item label="区名">
      <el-select v-model="house.communityname" placeholder="区名">
        <el-option label="浦东新区" value="浦东新区"></el-option>
        <el-option label="黄浦区" value="黄浦区"></el-option>
        <el-option label="青浦区" value="青浦区"></el-option>
        <el-option label="宝山区" value="宝山区"></el-option>
        <el-option label="金山区" value="金山区"></el-option>
        <el-option label="普陀区" value="普陀区"></el-option>
        <el-option label="静安区" value="静安区"></el-option>
        <el-option label="徐汇区" value="徐汇区"></el-option>
        <el-option label="长宁区" value="长宁区"></el-option>
        <el-option label="虹口区" value="虹口区"></el-option>
        <el-option label="杨浦区" value="杨浦区"></el-option>
        <el-option label="闵行区" value="闵行区"></el-option>
        <el-option label="嘉定区" value="嘉定区"></el-option>
        <el-option label="奉贤区" value="奉贤区"></el-option>
        <el-option label="松江区" value="松江区"></el-option>
        <el-option label="崇明区" value="崇明区"></el-option>

      </el-select>
    </el-form-item>
    <el-form-item label="租金">
      <el-select v-model="house.rent" placeholder="租金">
        <el-option label="1-1000" value="1"></el-option>
        <el-option label="1001-2000" value="1001"></el-option>
        <el-option label="2001-3000" value="2001"></el-option>
        <el-option label="3001-4000" value="3001"></el-option>
        <el-option label="大于4000" value="4001"></el-option>
      </el-select>
    </el-form-item>

    <el-form-item label="面积">
      <el-select v-model="house.area" placeholder="面积">
        <el-option label="1-20平方" value="1"></el-option>
        <el-option label="21-40平方" value="21"></el-option>
        <el-option label="41-60平方" value="41"></el-option>
        <el-option label="61-80平方" value="61"></el-option>
        <el-option label="81平方以上" value="81"></el-option>
      </el-select>
    </el-form-item>

    <el-form-item>
      <el-button type="primary" @click="onSubmit">查询</el-button>
    </el-form-item>
  </el-form>


  <a href="rentalhouse.jsp"><input type="button" value="新增"></a><br>

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
            prop="address"
            label="操作"
            align="center">
      <template slot-scope="scope">
        <el-button type="primary"  @click="jump(scope.row)" name="houseid">查看详情</el-button>
      </template>



    </el-table-column>
  </el-table>




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
        housetable:[],
        house: {
          communityname: "",
          rent: "",
          area: ""
        },

      }
    },
    methods: {
      jump(row){
        console.log(row);
        var _this=this;
        axios({
          method: "post",
          url:"http://localhost:8080/Java_BW_war/SaveDetailServlet",
          data:row
        })
      },
      onSubmit() {
        var _this=this;
        axios({
          method: "post",
          url:"http://localhost:8080/Java_BW_war/SelectByConditionServlet",
          data:this.house
        }).then(function(resp){
          _this.housetable = resp.data;
        })
        console.log(this.house);
      },
      selectAll(){
        var _this=this;
        axios({
          method: "get",
          url:"http://localhost:8080/Java_BW_war/SelectAllServlet"
        }).then(function(resp){
          _this.housetable = resp.data;
        })
      },
      tableRowClassName({row, rowIndex}) {
        if (rowIndex === 1) {
          return 'warning-row';
        } else if (rowIndex === 3) {
          return 'success-row';
        }
        return '';
      }
    },
    mounted(){
      this.selectAll();

    }
  })

</script>


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

</body>
</html>
