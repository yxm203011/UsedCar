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
      <link rel="stylesheet" href="./lib/layui/css/layui.css"  media="all">
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <![endif]-->
  </head>
  
  <body>
    <div class="x-body">
        <form class="layui-form" action="/carbrand/insert_carbrand" id="form1">
          <div class="layui-form-item">
              <label for="carbrandname" class="layui-form-label">
                  <span class="x-red">*</span>品牌名
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="carbrandname" name="carbrandname" required="" lay-verify="required"
                  autocomplete="off" class="layui-input">
                  <input type="text" value="" name="imgurl" style="opacity:0" id="imgurl">
              </div>
          </div>

            <div class="layui-form-item">
              <label for="carbrandlogoaram" class="layui-form-label">
                  <span class="x-red">*</span>品牌名简写
              </label>
              <div class="layui-input-inline">
                  <input type="text" id="carbrandlogoaram" name="carbrandlogoaram" required="" lay-verify="email"
                  autocomplete="off" class="layui-input" readonly>
              </div>
          </div>
      </form>
        <div class="layui-upload">
            <div class="layui-upload-list">
                <label class="layui-form-label">
                    <span class="x-red">*</span>品牌标志
                </label>
                <form id="fm" enctype="multipart/form-data" method="post">
                    <input type="file" name="picfile" style="opacity: 0;width:60px;" id="files">
                    <img src="images/imgicon.jpg" style="height:100px;width:100px;position: relative; margin-left:-60px;" id="upimg">
                    <input type="button" value="开始上传图片" class="layui-btn" id="upload_carbrandicon">
                </form>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">
            </label>
            <button  class="layui-btn" lay-filter="add" lay-submit="" id="insert_carbrand">
                增加
            </button>
        </div>
    </div>

    <script>
        $("#upimg").click(function(){
            $("#files").click();
        })
        $("#files").change(function(event){
            var icon=$("#files").val()
            for (var i = 0; i < event.target.files.length; i++) {
                var file = event.target.files.item(i);
                if (!(/^image\/.*$/i.test(file.type))) {
                    continue; //不是图片 就跳出这一次循环
                }
                //实例化FileReader API
                var freader = new FileReader();
                freader.readAsDataURL(file);
                freader.onload = function(event) {
                    //$("#myImg").attr("src",e.target.result);
                    $("#upimg").attr("src",event.target.result);
                }
            }
        })
        $("#upload_carbrandicon").click(function(){
            if($("#files").val()==""){
                alert("请先选择图片！");
            }else{
            var a = new FormData($("#fm")[0]);
            $.ajax({
                url:"carbrand/upload_carbrandicon",
                type:'post',
                data:a,
                processData:false,
                contentType:false,
                success:function(data){
                    alert("上传成功");
                    $("#srcimgurl").html("");
                    $("#imgurl").val(data);
                }
            });
            }
        })
        $("#carbrandname").blur(function(){
            $.ajax({
                url:'logogram/cn2py',
                type:'post',
                data:{
                    SourceStr:$("#carbrandname").val(),
                },
                success:function(data){
                    var logname=data.substring(0,1);
                    $("#carbrandlogoaram").val(logname);
                }
            })
        })
        $("#insert_carbrand").click(function(){
            if($("#carbrandname").val()==""){
                alert("请填写品牌名称！");
            }else
            if($("#imgurl").val()==""){
                alert("请上传图片！");
            }else{document.getElementById("form1").submit();
                x_admin_close();
            }
        })
    </script>
  </body>

</html>