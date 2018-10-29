<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <head>
      <base href="http://localhost:8080/">
      <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="./CSS/font.css">
    <link rel="stylesheet" href="./CSS/xadmin.css">
      <script src="/js/jquery-3.1.1.js"></script>
    <script type="text/javascript" src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>
      <link rel="stylesheet" href="./lib/layui/css/layui.css"  media="all">
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <![endif]-->
  </head>
  
  <body>
    <div class="x-body">
        <form class="layui-form" action="carseries/update_carseries" id="form1">
          <div class="layui-form-item">
              <label for="carseriesname" class="layui-form-label">
                  <span class="x-red">*</span>车系名
              </label>
              <div class="layui-input-inline">
                  <input type="text" name="carseriesid" value="${carseries[0].carseriesid}" style="opacity:0">
                  <input type="text" id="carseriesname" name="carseriesname" required="" lay-verify="required"
                  autocomplete="off" class="layui-input" value="${carseries[0].carseriesname}">
              </div>
          </div>

            <div class="layui-form-item">
              <label  class="layui-form-label">
                  <span class="x-red">*</span>选择品牌
              </label>
              <div class="layui-input-inline">
                  <select name="carbrandid">
                      <c:forEach items="${carbrand}" var="c">
                          <option value="${c.carbrandid}"
                          <c:if test="${c.carbrandid == carseries[0].car.carbrandid}">
                              selected="selected"
                          </c:if>
                          >${c.carbrandname}</option>
                      </c:forEach>
                  </select>
              </div>
          </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                </label>
                <button  class="layui-btn" lay-filter="add" id="insert_carseries">
                    修改
                </button>
            </div>
      </form>

    </div>
  </body>
</html>
<script>
    $("#insert_carseries").click(function(){
       document.getElementById("form1").submit();
       alert("修改成功");
       x_admin_close();
    })
</script>