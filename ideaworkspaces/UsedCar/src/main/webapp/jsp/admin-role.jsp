<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
  </head>
  
  <body>
    <div class="x-nav">
      <span class="layui-breadcrumb">
      </span>
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
      </div>
      <xblock>
        <button class="layui-btn" onclick="x_admin_show('添加用户','jsp/role-add.jsp')"><i class="layui-icon"></i>添加</button>
        <span class="x-right" style="line-height:40px">共有数据：${headcount} 条</span>
      </xblock>
      <table class="layui-table">
        <thead>
          <tr>
            <th>编号</th>
            <th>职位</th>
            <th>修改时间</th>
            <th>修改人编号</th>
            <th>描述</th>
            <th>操作</th>
        </thead>
        <tbody>
        <c:forEach items="${positionall}" var="p">
          <tr>
            <td>${p.positionid}</td>
            <td>${p.positionname}</td>
            <td><fmt:formatDate value="${p.positionuptime }" pattern="yyyy/MM/dd hh:mm:ss" /></td>
            <td>${p.userinfoid}</td>
            <td class="td-status">${p.positiondescribe}</td>
            <td class="td-manage">
              <a title="编辑"  href="/position/find_positionid?positionid=${p.positionid}">
                <i class="layui-icon">&#xe642;</i>
              </a>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>
  </body>
</html>