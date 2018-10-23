<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <base href="http://localhost:8080/">
<meta charset="UTF-8">
<title>列表页</title>
<meta name="description" content="亿金汽车"/>
<meta name="keywords" content="郑州二手车,河南二手车,郑州二手名车">
<link rel="stylesheet" type="text/css" href="Css/base.css">
<link rel="stylesheet" type="text/css" href="Css/layout.css">
<link rel="stylesheet" type="text/css" href="Css/pro.css">
<script type="text/javascript" src="Scripts/jquery-1.8.2.min.js"></script>
<!--[if IE 6]>
<script type="text/javascript" src="Scripts/dd_belatedpng.js"></script>
<script>
        DD_belatedPNG.fix('*');
    </script>
<![endif]-->
</head>
<!--/************************************************************
 *																*
 * 						      代码库							*
 *                        www.dmaku.com							*
 *       		  努力创建完善、持续更新插件以及模板			*
 * 																*
**************************************************************-->
<body>
<div id="header">
  <div class="top">
    <div class="wrap clearfix"> <a href="javascript:;" class="logo left"><img src="Picture/logo.png"/></a>
      <div class="nav left dInline" id="headerMenu">
      <a class="on" href="index.jsp">首页</a>
      <a href="about.jsp">关于亿金</a>
      <a href="maiche_list.jsp">我要买车</a>
      <a href="wymc.jsp">我要卖车</a>
      <a href="srdz.jsp">私人定制</a>
      <!--<a href="shfw.html">售后服务</a>-->
      <a id="MemberMenuChange" class="b-login" href="会员中心首页.jsp" target="_self">会员中心</a>
      </div>
      <span class="right" id="rightMenuHtml">
				<a href="javascript:;" class="b-login" id="b-login">登录</a>|<a href="javascript:;" id="b-regist">注册</a>|&nbsp;&nbsp;&nbsp;&nbsp;<img src="Picture/tel.png"/>			
                </span> </div>
  </div>
  <div class="head-search">
    <div class="wrap clearfix">
      <div class="yjxj clearfix left" action="/index/keyword/" method="post" enctype="multipart/form-data">
        <input type="text" name="keyword" placeholder="请输入您想要的品牌、车系或车辆编号搜索" class="left" />
        <input type="submit" value="搜 索" class="right" />
      </div>
      <div class="hotWords left dInline"> 热门品牌：
      <a href="javascript:;">奥迪A6L</a>
      <a href="javascript:;">宝马5系</a>
      <a href="javascript:;">奔驰E级</a>
      <a href="javascript:;">奥迪A4L</a>
      <a href="javascript:;">奔驰C级</a> 
      </div>
    </div>
  </div>
</div>
<style>
.s-form { margin-top:5px;}
.toselect{background-color: rgb(64, 100, 156); color:#FFF}
</style>
<div id="about">
  <div class="mTags" style="margin-bottom:20px">
    <div class="wrap"> <a href="javascript:;">亿金名车广场</a>><a href="javascript:;">我要买车</a> </div>
  </div>
  <div class="wrap text-left">
    <div class="carfliter-box">
      <div class="carfl-tit clearfix">
        <div class="result-box left dInline" style="height:auto;"> <span class="left">您的当前选择：</span>
          <form class="s-form left clearfix">
            <p class="left">
              <label class="left">关键字</label>
              <input type="text" class="left" id="keyword" value="" />
              <span class="close right" id="clear"></span> </p>
            <input type="hidden" value="" id="urlform" />
            <input type="submit" value="确定" class="right" id="tjkey" style="line-height:10px" />
          </form>
          <div class="s-form left clearfix" style="white-space:normal; width:auto">	<p class="left" style="width:auto;">		&nbsp;A 奥迪<span class="close right"></span>	</p></div>
        </div>
        <a href="srdz.jsp" class="dBtn right">在线私人订制</a> </div>
      <div class="condition">
        <ul>
          <li class=""> <span class="c-name left">品牌：</span>
            <div class="spec-moudle left dInline"> 
            <a href="javascript:;" ><img src="Picture/55a46160eac22.png" style="height:32px;"/></a>
            <a href="javascript:;"><img src="Picture/55a4613f6aab9.png" style="height:32px;"/></a>
            <a href="javascript:;"><img src="Picture/55c8639f1aa89.png" style="height:32px;"/></a>
            <a href="javascript:;"><img src="Picture/567a3b2190d9f.png" style="height:32px;"/></a>
            <a href="javascript:;"><img src="Picture/567a3cdb8bf68.png" style="height:32px;"/></a>
            <a href="javascript:;" ><img src="Picture/55a4afc65ed32.png" style="height:32px;"/></a>
            <a href="javascript:;"><img src="Picture/55a34e9dcd43a.png" style="height:32px;"/></a>
            <a href="javascript:;"><img src="Picture/567a3d20d7df1.png" style="height:32px;"/></a>
            
              <div class="pro_smore">
                <div class="clearfix ps-a">
                  <select class="left" name="makeid"  id="Smakeid" placeholder="所属品牌">
                    <option value=""> 选择品牌</option>
                    <option value="9" > A 奥迪</option>
                    <option value="82" > B 保时捷</option>
                    <option value="127" > B 别克</option>
                    <option value="2" > B 奔驰</option>
                    <option value="3" > B 宝马</option>
                    <option value="85" > B 宾利</option>
                    <option value="172" > B 巴博斯</option>
                    <option value="26" > B 本田</option>
                    <option value="5" > B 标致</option>
                    <option value="8" > D 大众</option>
                    <option value="113" > D 道奇</option>
                    <option value="7" > F 丰田</option>
                    <option value="17" > F 福特</option>
                    <option value="4" > J Jeep</option>
                    <option value="98" > J 捷豹</option>
                    <option value="51" > K 克莱斯勒</option>
                    <option value="107" > K 凯迪拉克</option>
                    <option value="80" > L 劳斯莱斯</option>
                    <option value="96" > L 路虎</option>
                    <option value="94" > L 雷克萨斯</option>
                    <option value="81" > M MINI</option>
                    <option value="93" > M 玛莎拉蒂</option>
                    <option value="18" > M 马自达</option>
                    <option value="155" > N 纳智捷</option>
                    <option value="30" > R 日产</option>
                    <option value="89" > s smart</option>
                    <option value="25" > S 三菱</option>
                    <option value="111" > S 斯巴鲁</option>
                    <option value="19" > W 沃尔沃</option>
                    <option value="13" > X 现代</option>
                    <option value="49" > X 雪佛兰</option>
                    <option value="100" > Y 英菲尼迪</option>
                  </select>
                  <select class="left" name="modeid"  id="Smodeid" placeholder="所属车型">
                    <option value=""> 选择车系</option>
                  </select>
                </div>
              </div>
            </div>
          </li>
          <li class=""> <span class="c-name left">价格：</span>
            <div class="spec-moudle left dInline"> <a href="javascript:;" >30万以内</a> <a href="javascript:;" >30-50万</a> <a href="javascript:;" >50-100万</a> <a href="javascript:;" >100万以上</a>
              <div class="pro_smore">
                <div class="clearfix ps-b">
                  <table>
                    <tr>
                      <td><input type="text" class="sTxt" id="price_L" value="" /></td>
                      <td>-</td>
                      <td><input type="text" class="sTxt" id="price_R" value="" /></td>
                      <td>万元</td>
                      <td><input type="submit" value="确定" class="sBtn" id="tjprice" style="line-height:10px" /></td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
          </li>
          <li class="" style="height:48px;"> <span class="c-name left">车型：</span>
            <div class="spec-moudle left dInline" style="height:auto;"> <a href="javascript:;"  ><img src="Picture/c1.gif" height="30"/><br/>
              小型</a> <a href="javascript:;"  ><img src="Picture/c2.gif" height="30"/><br/>
              轿车</a> <a href="javascript:;" ><img src="Picture/c3.gif" height="30"/><br/>
              跑车</a> <a href="javascript:;"  ><img src="Picture/c4.gif" height="30"/><br/>
              SUV</a> <a href="javascript:;" ><img src="Picture/c5.gif" height="30"/><br/>
              MPV</a> <a href="javascript:;" ><img src="Picture/c6.gif" height="30"/><br/>
              房车</a> </div>
          </li>
          <li class=""> <span class="c-name left">车龄：</span>
            <div class="spec-moudle left dInline"> <a href="javascript:;">1年以内</a> <a href="javascript:;" id="0-2" >2年以内</a> <a href="javascript:;" id="0-3" >3年以内</a> <a href="javascript:;" id="3-5" >3-5年</a> <a href="javascript:;" id="5-0" >5年以上</a>
              <div class="pro_smore">
                <div class="clearfix ps-b">
                  <table>
                    <tr>
                      <td><input type="text" class="sTxt" id="cheling_L" value="" /></td>
                      <td>-</td>
                      <td><input type="text" class="sTxt" id="cheling_R" value="" /></td>
                      <td>年</td>
                      <td><input type="submit" value="确定" class="sBtn" id="tjcheling" style="line-height:10px" /></td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
          </li>
          <li class=""> <span class="c-name left">里程：</span>
            <div class="spec-moudle left dInline"> <a href="javascript:;" id="0-1">一万公里以内</a> <a href="javascript:;" id="1-3">1-3万公里</a> <a href="javascript:;" id="3-6">3-6万公里</a> <a href="javascript:;" id="6-0">6万公里以上</a>
              <div class="pro_smore">
                <div class="clearfix ps-b">
                  <table>
                    <tr>
                      <td><input type="text" class="sTxt" id="licheng_L" value="" /></td>
                      <td>-</td>
                      <td><input type="text" class="sTxt" id="licheng_R" value="" /></td>
                      <td>万公里</td>
                      <td><input type="submit" value="确定" class="sBtn" id="tjlicheng" style="line-height:10px" /></td>
                    </tr>
                  </table>
                </div>
              </div>
            </div>
          </li>
          <li class=""> <span class="c-name left">排放标准：</span>
            <div class="spec-moudle left dInline"> <a href="javascript:;" id="1" onclick="changeload('pl',this.id)">国四</a> <a href="javascript:;" id="2" onclick="changeload('pl',this.id)">国五</a> </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <div class="aWrap clearfix wrap">
    <div class="left dInline aLeft">
      <div class="carSou">
        <div class="cs-tit">
          <div class="clearfix">
            <div class="ctLeft left dInline">
              <div class="ct-a left dInline"> <a class="on" href="javascript:;" ><i>全部</i></a> <a href="2/sta/B/ord/A/url_form.jsp"><i>在途</i>(13)</a> <a href="2/sta/C/ord/A/url_form.html"><i>在售</i>(307)</a> <a href="2/sta/E/ord/A/url_form.html"><i>预订</i>(22)</a> <a href="2/sta/D/ord/A/url_form.html"><i>已售</i>(744)</a> </div>
              <div class="cs_sub"> 排序： <a class="cs-a1" href="javascript:;">默认<img src="Picture/down.gif"/></a> <a href="2/sta/A/ord/B/url_form.html">点击量<img src="Picture/down.gif"/></a> <a href="2/sta/A/ord/C/url_form.html">收藏量<img src="Picture/down.gif"/></a> <a href="2/sta/A/ord/E/url_form.html">价格<img src="Picture/up.gif"/></a> <a href="2/sta/A/ord/F/url_form.html">里程<img src="Picture/up.gif"/></a> </div>
            </div>
            <div class="right cpages"> 1/32 <a href="javascript:;">&lt;</a><a href="2/sta/A/ord/A/p/2.jsp">&gt;</a> </div>
          </div>
          <div class="cs-tit1"></div>
        </div>
        <div class="cs-list">
          <ul>
            <li class="clearfix" style="position: relative;"> <span class="carImg left dInline">
            <a href="maiche_show.jsp" target="_blank">
              <div class="car_bg"> </div>
              <img src="Picture/56caabd482cc0.jpg-thumb.jpg"  width="300" /></a> </span>
              <div class="carTxt right dInline">
                <h2><a href="maiche_show.jsp" target="_blank">奔驰C级 2013 款 1.8T 自动 C260 CGI时尚型</a></h2>
                <p> <span>上牌时间：2013-08</span> <span>行驶里程：4.5万公里</span> <span>排量：1.8T</span> <span>排放标准：国四</span> </p>
                <div class="price clearfix" style="margin:8px 0;">
                  <div class="left dInline pNum" style="width:110px;"> <font>一口价</font><br/>
                    <span class="num nBlue">22.8 </span><font> 万元</font> </div>
                  <span class="num1 left" style="height:43px; width:450px;padding-top:10px;"><em>新车价：41.57万元(含32732元购置税)</em><br/>
                  为您节省：18.77万元 <font><a href="javascript:;" target="_blank">最低首付30%（6.84万），日还款约 164 元</a></font>
                  <input type="hidden" class="CarValue_1165" value="{img:'/Uploads/PhotoGalley/2016-02-22/56caabd482cc0.JPG-thumb.JPG',id:'1165',price:'22.8',status:'加入对比',title:'奔驰C级 2013 款 1.8T 自动 C260 CGI时尚型',url:'/Cars/index/channel/2/id/1165.jsp'}" />
                  </span> </div>
                <div class="cs_bt clearfix" style="padding-top:7px;"> <a href="javascript:void(0)" class="cs-q b-login" id="Order_1165">立即抢订</a> <a href="javascript:void(0)" onclick="balance('1165')" class="balance_1165">加入对比</a> <a href="javascript:void(0)" class="b-login" id="collection_1165" >收藏</a> <span>已有188人关注此车</span> </div>
              </div>
            </li>
            <li class="clearfix" style="position: relative;"> <span class="carImg left dInline"><a href="maiche_show.jsp" target="_blank">
              <div class="car_bg"> </div>
              <img src="Picture/56caabd482cc0.jpg-thumb.jpg"  width="300" /></a> </span>
              <div class="carTxt right dInline">
                <h2><a href="maiche_show.jsp" target="_blank">奔驰C级 2013 款 1.8T 自动 C260时尚型 Grand Edition</a></h2>
                <p> <span>上牌时间：2014-01</span> <span>行驶里程：2.2万公里</span> <span>排量：1.8T</span> <span>排放标准：国四</span> </p>
                <div class="price clearfix" style="margin:8px 0;">
                  <div class="left dInline pNum" style="width:110px;"> <font>一口价</font><br/>
                    <span class="num nBlue">24.8 </span><font> 万元</font> </div>
                  <span class="num1 left" style="height:43px; width:450px;padding-top:10px;"><em>新车价：42.11万元(含33157元购置税)</em><br/>
                  为您节省：17.31万元 <font><a href="javascript:;" target="_blank">最低首付30%（7.44万），日还款约 179 元</a></font>
                  <input type="hidden" class="CarValue_993" value="{img:'/Uploads/PhotoGalley/2016-02-21/56c95a5130b4c.jpg-thumb.jpg',id:'993',price:'24.8',status:'加入对比',title:'奔驰C级 2013 款 1.8T 自动 C260时尚型 Grand Edition',url:'/Cars/index/channel/2/id/993.jsp'}" />
                  </span> </div>
                <div class="cs_bt clearfix" style="padding-top:7px;"> <a href="javascript:void(0)" class="cs-q b-login" id="Order_993">立即抢订</a> <a href="javascript:void(0)" onclick="balance('993')" class="balance_993">加入对比</a> <a href="javascript:void(0)" class="b-login" id="collection_993" >收藏</a> <span>已有468人关注此车</span> </div>
              </div>
            </li>
            
            
          </ul>
          <div class="pages"> <a class="on" href="javascript:;">1</a><a class="" href="javascript:;">2</a><a class="" href="javascript:;">3</a><a class="" href="javascript:;">4</a><a class="" href="javascript:;">5</a> <a href="javascript:;">>></a> <a href="javascript:;">32</a> </div>
        </div>
      </div>
    </div>
    <div class="right dInline aRight"> 
      <!--<div class="pgBox">
				<a class="userImg" href="javascript:;">
					<img src="Picture/user.gif"/>
				</a>
				<h2>资深评估团队<br/>确保车源品质</h2>
				<p>亿金为您车辆提供免费<br/>评估与检查</p>
				<a href="javascript:;" class="pgBtn">马上评估</a>
			</div>-->
      <div class="dBox">
        <link rel="stylesheet" type="text/css" href="Css/alert.css">
        <style type="text/css">
input::-webkit-input-placeholder, textarea::-webkit-input-placeholder {color: #000;}
input:-moz-placeholder, textarea:-moz-placeholder {color:#000;}
input::-moz-placeholder, textarea::-moz-placeholder {color:#000;}
input:-ms-input-placeholder, textarea:-ms-input-placeholder {color:#000;}
</style>
        <form class="dForm" name="dForm" id="dForm" method="post" enctype="multipart/form-data" onsubmit="return cleckform();">
          <h2>私人订制</h2>
          <p>专业车辆顾问为您服务</p>
          <table>
            <tr>
              <td><select class="Smakeid" name="makeid"  id=" " placeholder="所属品牌">
                  <option value=""> 选择品牌（必选）</option>
                  <option value="9" > A 奥迪</option>
                  <option value="92" > A 阿尔法·罗密欧</option>
                  <option value="97" > A 阿斯顿·马丁</option>
                  <option value="184" > B 保斐利</option>
                </select></td>
            </tr>
            <tr>
              <td><div id="xlselect">
                  <select name="modeid">
                    <option>选择车系(必选)</option>
                  </select>
                </div></td>
            </tr>
            <tr>
              <td><select name="years">
                  <option value="不限">选择使用年限</option>
                  <option value="1年以内">1年以内</option>
                  <option value="2年以内">2年以内</option>
                  <option value="3年以内">3年以内</option>
                  <option value="3-5年">3-5年</option>
                  <option value="5年以上">5年以上</option>
                </select></td>
            </tr>
            <tr>
              <td><input type="text" name="dprice" placeholder="最少预算" value="" class="cInput" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" />
                <input type="text" name="hprice" placeholder="最多预算" value="" class="cInput" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" />
                万元 </td>
            </tr>
            <tr>
              <td><input type="text" value="" placeholder="计划购买时间" style="width:95%" class="form_datetime cInput" name="buytime" data-date-format="yyyy-mm"></td>
            </tr>
            <tr>
              <td><textarea name="content" placeholder="其他要求（例如车身和内饰颜色、行驶里程要求等）"></textarea></td>
            </tr>
            <tr>
              <td><input id="input-phone" type="hidden" name="mobile" value="" />
                <input id="input-verify" type="hidden" name="verify" value="" />
                <input type="button" value="提交需求" class="sBtn" style=" padding:0;" id="sendMESS" /></td>
            </tr>
          </table>
        </form>
        <div id="popBoxYzm" style="display:none">
          <div class="popForm">
            <div class="p-detail">
              <form action="" enctype="multipart/form-data" method="post" name="yzmcheck" id="yzmcheck">
                <ul class="login-items" style="width:100%">
                  <li>
                    <label>手机号</label>
                    <input type="text" value="" maxlength="32"  name="mobile" id="shoujihao" style="width:120px">
                    <input type="checkbox" name="remembermobile" style=" width:auto; margin:10px 20px 0" id="remembermobile" />
                    <label>记住此号</label>
                  </li>
                  <li>
                    <label>验证码</label>
                    <input type="text" value="" maxlength="16"  name="verify" id="yanzhengma" style="width:120px; margin-right:20px;">
                    <img src="Picture/buildverify.jsp" id="yzcode" width="100" height="42" alt="点击切换" onclick="this.src='../../../Admin/Login/buildVerify.jsp'"> </li>
                </ul>
                <div class="login-button">
                  <input type="button"  value="立即提交" class="fM" onclick="sendtosend()" style="line-height:20px" />
                </div>
              </form>
            </div>
            <a class="closed">×</a> </div>
        </div>
        <input type="hidden" id="ckmobile" value="1" />
        <script type="text/livescript">
$("#sendMESS").live("click",function(){
	var ckmobile=$("#ckmobile").val();
	if(ckmobile){
		$("#yzcode").attr("src",'/Admin/Login/buildVerify');
		$('#popBoxYzm').fadeIn();
	}else{
		sendtosend();
	}
});
function sendtosend(){
	if ($('#remembermobile').attr('checked')){
		remember = 2;
	}else{
		remember='';
	}
	var mobile=$("#shoujihao").val();
	var verify=$("#yanzhengma").val();
	var re = /^(0|86|17951)?(13[0-9]|15[012356789]|17[678]|18[0-9]|14[57])[0-9]{8}$/;
	if(!re.exec(mobile)){
		alert("手机号格式不正确");
		$("#shoujihao").focus();
		return false;
	}else{
		$("#input-phone").val(mobile);
		$("#input-verify").val(verify);
		$('#popBoxYzm').fadeOut();
		$('#dForm').submit();
	}
}
</script> 
      </div>
      <div id="d_gd">
        <div class="gd_box">
          <!--<div class="dWx"> <a href="javascript:;"><img src="Picture/5678b0dbe039f.jpg-thumb.jpg"/></a> </div>-->
          <div class="txtMarquee-top">
            <div class="sameCar bd">
              <h4>在途同类型车源<a style="float:right; color:#FFF" href="2/sta/B/ord/STA/url_form/.jsp">更多>></a></h4>
              <ul class="infoList">
                <li> <a href="2/id/1175.jsp">宝马X3(进口) 2014 款 2.0T 自动 xDrive28i X设计套装</a> </li>
                <li> <a href="2/id/1174.jsp">宝马3系 2014 款 2.0T 自动 320i时尚型</a> </li>
                <li> <a href="2/id/1173.jsp">宝马3系GT(进口) 2014款 2.0T 自动 320i 领先型</a> </li>
                <li> <a href="2/id/1172.jsp">奔驰E级 2015 款 2.0T 自动 E260L运动型(改款）</a> </li>
                <li> <a href="2/id/1171.jsp">别克 昂科威 2014 款 2.0T 自动 28T四驱全能运动旗舰型</a> </li>
                <li> <a href="2/id/1170.jsp">奥迪A6L 2014 款 2.0T  TFSI舒适型</a> </li>
                <li> <a href="2/id/1167.jsp">大众 Tiguan 2011 款 2.0T 自动 TSI R-Line</a> </li>
                <li> <a href="2/id/1169.jsp">宝马5系 2014 款 2.0T 自动 528Li豪华设计套装</a> </li>
                <li> <a href="2/id/1168.jsp">宝马X3(进口) 2013 款 2.0T 自动 xDrive20i豪华型(改款)</a> </li>
                <li> <a href="2/id/1166.jsp">宝马5系 2014 款 2.0T 自动 525Li豪华设计套装</a> </li>
                <li> <a href="2/id/1091.jsp">宝马X5(进口) 2013款 3.0T xDrive35i（美规）</a> </li>
                <li> <a href="2/id/1090.jsp">路虎 揽胜 2014 款 3.0T 自动 V6 SC Vogue</a> </li>
                <li> <a href="2/id/1089.jsp">宝马5系 2013 款 2.0T 自动 525Li领先型</a> </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <style type="text/css">
			.sameCar{margin-top:20px;padding-bottom:15px;border:1px solid #ccc;border-top:none;}
			.sameCar h4{font-size:14px;color:#fff;padding:10px;background:#3F7DDD;}
			.sameCar ul{}
			.sameCar li{line-height:20px; margin:0px 10px;border-bottom:1px solid #ccc;padding:5px 0;}
			.nav_fixed{position:fixed;top:0px;z-index: 10;}
            * html .nav_fixed{
              position:absolute;
              bottom:auto;
            }
			#header{position:absolute;}
			#d_gd,.gd_box{width:253px;overflow:hidden;}
			
			</style>
    </div>
  </div>
</div>
<script type="text/javascript">
$(function(){
	$(window).scroll(function(){
		/*var amNavTop= $('#d_gd').offset().top;*/
		var b=$(window).scrollTop();
		if(b>=amNavTop)
		{
			$('#d_gd').find('.gd_box').addClass('nav_fixed');
		}
		else
		{
			$('#d_gd').find('.gd_box').removeClass('nav_fixed');
		};

	});
})
</script>
<div id="footer">
  <div class="foot-a1">
    <div class="wrap">
      <ul class="clearfix">
        <li> <img src="Picture/db1.png"/>
          <p>365项检测认证</p>
        </li>
        <li> <img src="Picture/db2.png"/>
          <p>5000公里无需保养</p>
        </li>
        <li> <img src="Picture/db3.png"/>
          <p>1年或两万公里无忧质保</p>
        </li>
        <li> <img src="Picture/db4.png"/>
          <p>7天无忧退换</p>
        </li>
        <li> <img src="Picture/db5.png"/>
          <p> 置换有增值</p>
        </li>
      </ul>
    </div>
  </div>
  <div class="foot-a">
    <div class="wrap clearfix">
      <div class="fDl left dInline "> <strong>亿金承诺</strong>
        <ul>
          <li><a href="javascript:;">365项严苛检测</a></li>
          <li><a href="javascript:;">5000公里无需保养</a></li>
          <li><a href="javascript:;">一年或两万公里质保</a></li>
          <li><a href="javascript:;">7天退换</a></li>
        </ul>
      </div>
      <div class="fDl left dInline "> <strong>买卖二手车指南</strong>
        <ul>
          <li><a href="javascript:;" target="_blank">“禁止长时间停车”到底能</a></li>
          <li><a href="javascript:;" target="_blank">20年前开桑塔纳的大款们，</a></li>
          <li><a href="javascript:;" target="_blank">豪华入门跨界车之争,奔驰G</a></li>
          <li><a href="javascript:;" target="_blank">像初恋一样爱它，该给它怎</a></li>
          <li><a href="javascript:;" target="_blank">常开车不等于会开车 你的</a></li>
        </ul>
      </div>
      <div class="fDl left dInline "> <strong>售后服务</strong>
        <ul>
          <li><a href="javascript:;">24小时道路救援</a></li>
          <li><a href="javascript:;">豪车凹陷修复</a></li>
          <li><a href="javascript:;">定期上门维修保养服务</a></li>
          <li><a href="javascript:;">预约保养工时优惠</a></li>
        </ul>
      </div>
      <div class="fDl left dInline "> <strong>关于亿金</strong>
        <ul>
          <li><a href="javascript:;" target="_blank">亿金动态</a></li>
          <li><a href="javascript:;" target="_blank">亿金荣誉</a></li>
          <li><a href="javascript:;" target="_blank">亿金优势</a></li>
          <li><a href="javascript:;" target="_blank">联系亿金</a></li>
          <li><a href="javascript:;" target="_blank">评估团队</a></li>
        </ul>
      </div>
      <div class="fDl left dInline "> <strong>亿金文化</strong>
        <ul>
          <li><a href="javascript:;">诚·立中原</a></li>
          <li><a href="javascript:;">信·立天下</a></li>
          <li><a href="javascript:;">改变、规范、引领一方市场</a></li>
          <li><a href="javascript:;">颠覆中原人购车理念</a></li>
        </ul>
      </div>
      <div class="fDl left dInline fDl1">
        <div class="dLx"> <img src="Picture/dlx.jpg"/> </div>
        <div style="height:50px;"></div>
      </div>
    </div>
  </div>
  <div class="foot-b"> Copyright ? 2015 qcauto All Rights Reserved 河南亿金有限公司 版权所有 豫ICP备123456789号<br/>
    地址：郑州市管城区紫荆山东大街裕鸿花园 服务热线：400-888-6666<br/>
     </div>
</div>


<div id="miniBus" style="right:-270px;">
  <div class="mini-bar">
    <div class="mini-barlist">
      <ul>
        <li class="miItem">
          <div class="mini-mi browse"> <i class="mini-ease"></i> <code></code> <span>最近浏览</span> </div>
        </li>
        <li class="miItem">
          <div class="mini-mi collec"> <i class="mini-ease"></i> <code></code> <span>我的收藏</span> </div>
        </li>
        <li>
          <div class="mini-mi service"> <i class="mini-ease" id="BizQQWPA"></i> <code></code> <span>在线客服</span> </div>
        </li>
        <li class="callItem">
          <div class="mini-mi callback"> <i class="mini-ease"></i> <code></code> <span>意见反馈</span> </div>
        </li>
        <li class="miItem">
          <div class="mini-mi shopping"> <i class="mini-ease"></i> <code></code> <span>对比车辆</span> <abbr id="Dbnumber">0</abbr> </div>
        </li>
      </ul>
    </div>
    <a class="mini-gotop"></a> <a class="wx1"><img src="Picture/wx_1.png"></a>
    <div class="wmImg hide"> <img src="Picture/wx_2.png"> </div>
  </div>
  <div class="mini-cont">
    <div class="mini-contlist">
      <div class="mini-ni">
        <div class="mini-h clearfix"> <a class="mini-close mini-ease lf-fl"></a> <span class="lf-fr"><code>最近浏览</code></span> </div>
        <div class="miList" id="Liulan">
          <ul>
          </ul>
        </div>
      </div>
      <div class="mini-ni">
        <div class="mini-h clearfix"> <a class="mini-close mini-ease lf-fl"></a> <span class="lf-fr"><code>我的收藏</code></span> </div>
        <div class="miList" id="shoucang">
          <ul>
          </ul>
          <a  href="javascript:void(0)" class="mini-fav b-login">查看更多收藏</a> </div>
      </div>
      <!--<div class="mini-ni">
				<div class="mini-h clearfix">
					<a class="mini-close mini-ease lf-fl"></a>
					<span class="lf-fr"><code>在线客服</code></span>
				</div>
			</div>-->
      <div class="mini-ni" id="shopping">
        <div class="mini-h clearfix"> <a class="mini-close mini-ease lf-fl"></a> <span class="lf-fr"><code>对比车辆</code></span> <span class="lf-fr" style="margin:auto 10px; font-size:26px; font-weight:bolder" id="deletealldb"><a><code>×</code></a></span> </div>
        <div class="miList" id="Carduibi">
          <ul>
          </ul>
          <a href="javascript:;" class="mini-fav">立即对比</a> </div>
      </div>
    </div>
  </div>
  <div class="lf-view" id="lf-view">
    <form onsubmit="return Lmessage();" enctype="multipart/form-data" method="post" name="leaveMess" id="leaveMess">
      <b>您对我们的看法~</b>
      <div>
        <textarea placeholder="您的声音对我们很重要哟(必填)~" name="bankAuthSrc"></textarea>
      </div>
      <div> <a id="viewSubmit" onclick="$('#leaveMess').submit()"></a>
        <input type="text" placeholder="请留下您的手机号码(必填)" id="viewAbout" name="mobile" />
      </div>
    </form>
    <a id="viewClose"></a> <i id="viewIcon"></i>
    <p id="viewSign"></p>
  </div>
</div>



<div id="popBox">
  <div class="popCont"> <a class="p_closed">关闭</a>
    <div class="p-tab"> <a>会员登录<i></i></a><a>会员注册<i></i></a> </div>
    <div class="p-detail">
      <div class="p-dl">
        <form onsubmit="return check();" enctype="multipart/form-data" method="post" name="form" id="form">
          <ul class="login-items">
            <li>
              <label>用户名(手机号)</label>
              <input class="input" type="text" value="" maxlength="32"  name="username" placeholder="请输入您的手机号">
            </li>
            <li>
              <label>密码</label>
              <input class="input" type="password" value="" maxlength="16"  name="password">
            </li>
          </ul>
          <div class="login-check">
            <input type="checkbox" name="checkbox" style=" width:auto;" />
            <label>记住我</label>
            <a href="../../../Meet/editPass">忘记登录密码？</a> </div>
          <div class="login-button">
            <input type="hidden" value="" name="carid" class="ordercarid" />
            <input type="hidden" value="" name="carstatus" class="orderstatus" />
            <input type="button"  value="登&nbsp;&nbsp;&nbsp;&nbsp;陆" class="fM" onclick="$('#form').submit()" />
          </div>
          <!--<div class="security-pro">
			            <i class="icons ver-green-down"></i>
			            <b>您的信息已通过256位SGC加密保护，数据传输安全</b>
			        </div>-->
        </form>
      </div>
      <div class="p-dl">
        <form class="registForm" onsubmit="return regcheck();" enctype="multipart/form-data" method="post" name="reg" id="reg">
          <ul class="login-items">
            <li class="clearfix">
              <input class="input" name="mobile" id="mobile" type="text" value="" placeholder="手机号码（登录帐号）">
            </li>
            <li class="clearfix">
              <input class="input left" type="text" value=""  name="verify" placeholder="输入验证码" style="width:100px;" />
              <div id="send"><a href="javascript:;" class="send_code right">获取验证码</a></div>
            </li>
            <li class="clearfix">
              <input class="input" type="text" value=""  name="realname" placeholder="姓名">
            </li>
            <li class="clearfix sex">
              <input type="radio" checked="" name="gender" value="M" />
              男&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="radio" name="gender" value="F" />
              女 </li>
            <li class="clearfix">
              <input id="" class="input" type="password" name="password" value="" placeholder="输入密码（六位字符）">
            </li>
          </ul>
          <div class="login-button">
            <input type="hidden" value="" name="carid" class="ordercarid" />
            <input type="hidden" value="" name="carstatus" class="orderstatus" />
            <input type="button"  value="立即注册" class="fM" onclick="$('#reg').submit()" />
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!--右侧搜索加入对比开始-->
<script type="text/javascript" src="Scripts/minibar.js"></script> 
<script type="text/javascript" src="Scripts/lg_reg.js"></script>
 
<script type="text/javascript" src="Scripts/search_car.js"></script> 
<script type="text/javascript" src="Scripts/jquery.superslide.2.1.1.js"></script>
<!--右侧搜索加入对比结束-->
<!--右侧滚动开始--> 
<script type="text/javascript">
$(function(){
	$(window).scroll(function(){
	})
})
jQuery(".txtMarquee-top").slide({mainCell:".bd ul",autoPlay:true,effect:"topMarquee",vis:5,interTime:50,trigger:"click"});
</script>
<!--右侧滚动结束--> 
<link rel="stylesheet" type="text/css" href="Css/bootstrap-datetimepicker.css">
<link rel="stylesheet" type="text/css" href="Css/bootstrap.min.css">
<script type="text/javascript" src="Scripts/bootstrap.min.js"></script> 
<script type="text/javascript" src="Scripts/bootstrap-datetimepicker.js" charset="UTF-8"></script> 
<script type="text/javascript" src="Scripts/bootstrap-datetimepicker.zh-cn.js" charset="UTF-8"></script> 
<script type="text/javascript">
    $('.form_datetime').datetimepicker({
       format: 'yyyy-mm',
		language:"zh-CN",        
		startView: 3,
		minView: 3,
		autoclose:true	

    });
</script> 

</body>
</html>