<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <![endif]-->
  </head>
  
  <body>
    <div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">演示</a>
        <a>
          <cite>导航元素</cite></a>
      </span>
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
    </div>
    <div class="x-body">
      <div class="layui-row">
        <form class="layui-form layui-col-md12  layui-form-pane">
           <div class="layui-form-item" id="x-city">
            <label class="layui-form-label">城市联动</label>
            <div class="layui-input-inline">
              <select name="province" lay-filter="province">
                <option value="">请选择省</option>
              </select>
            </div>
            <div class="layui-input-inline">
              <select name="city" lay-filter="city">
                <option value="">请选择市</option>
              </select>
            </div>
            <div class="layui-input-inline">
              <select name="area" lay-filter="area">
                <option value="">请选择县/区</option>
              </select>
            </div>
          </div>
        </form>
      </div>
      <blockquote class="layui-elem-quote"> </blockquote>
      <pre class="layui-code" lay-title="JavaScript" lay-skin="notepad">
          //xcity城市插件 基于于jquery与layui form 模块，使用之前先确认这两者是否引入 
          //插件文件为 xcity.js,引入 
          select lay-filter 属性值 为必须 "province/city/area"
          //初始化
          $('#x-city').xcity();
          //传默认值 
          $('#x-city').xcity('广东','广州市','东山区');
      </pre>
    </div>
    <script type="text/javascript" src="./js/xcity.js"></script>
    <script>
      layui.use(['form','code'], function(){
        form = layui.form;

        layui.code();

        $('#x-city').xcity('广东','广州市','东山区');

      });
    </script>
    <script>var _hmt = _hmt || []; (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
      })();</script>
  </body>

</html>