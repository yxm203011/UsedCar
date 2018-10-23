<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <base href="http://localhost:8080/">
	<meta charset="UTF-8">
	<title>后台登录-嘟嘟二手车-2.0</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />

    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="./CSS/font.css">
	<link rel="stylesheet" href="./CSS/xadmin.css">
    <script src="/js/jquery-3.1.1.js"></script>
    <script src="./lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="./js/xadmin.js"></script>

</head>
<body class="login-bg">
    
    <div class="login layui-anim layui-anim-up">
        <div class="message">嘟嘟二手车-管理登录</div>
        <div id="darkbannerwrap"></div>
        
        <form method="post" class="layui-form" action="/userinfo/find_oneuserinfo">
            <input name="username" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" >
            <hr class="hr15">
            <input name="password" lay-verify="required" placeholder="密码"  type="password" class="layui-input">
            <hr class="hr15">
            <input value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
            <hr class="hr20" >
        </form>
    </div>
</body>
</html>