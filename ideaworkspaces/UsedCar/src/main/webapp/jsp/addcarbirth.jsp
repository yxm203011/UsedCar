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
        <form class="layui-form" action="/carbirth/insert_carbirth" id="form1">
          <div class="layui-form-item">
              <label for="carbirthname" class="layui-form-label">
                  <span class="x-red">*</span>年款
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="carbirthname" name="carbirthname" required="" lay-verify="required"
                  autocomplete="off" class="layui-input">
              </div>
          </div>

            <div class="layui-form-item">
              <label  class="layui-form-label">
                  <span class="x-red">*</span>选择车系
              </label>
              <div class="layui-input-inline">
                  <select name="carseriesid">
                      <option>请选择</option>
                      <c:forEach items="${carservice}" var="c">
                          <option value="${c.carseriesid}">${c.carseriesname}</option>
                      </c:forEach>
                  </select>
              </div>
          </div>
            <div class="layui-form-item">
                <label class="layui-form-label">
                </label>
                <button  class="layui-btn" lay-filter="add" id="insert_carseries">
                    增加
                </button>
            </div>
      </form>

    </div>
  </body>
</html>
<script>
    $("#insert_carseries").click(function(){
       document.getElementById("form1").submit();
       alert("添加成功");
       x_admin_close();
    })
</script>