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
    <link rel="stylesheet" href="./css/font.css">
    <link rel="stylesheet" href="./css/xadmin.css">
    <script src="/js/jquery-3.1.1.js"></script>
    <script type="text/javascript" src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
</head>
<body>
<div class="x-nav">
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新" id="flush">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="x-body">
    <div class="layui-row">
    </div>
    <xblock>
        <button class="layui-btn" onclick="x_admin_show('添加车系','carseries/find_carbrandname')"><i class="layui-icon"></i>添加</button>
        <span class="x-right" style="line-height:40px">共有数据：${headcount} 条</span>
    </xblock>
    <table class="layui-table">
        <thead>
        <tr>
            <th>编号</th>
            <th>车系名称</th>
            <th>所属品牌</th>
            <th>操作</th>
        </thead>
        <tbody>

        <c:forEach items="${carseries}" var="c">
            <tr>
                <td>${c.carseriesid}</td>
                <td>${c.carseriesname}</td>
                <td>${c.car.carbrandname}</td>
                <td class="td-manage">
                    <a title="编辑"  onclick="x_admin_show('编辑','carseries/find_carseriesid?carseriesid=${c.carseriesid}')" href="javascript:;">
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
