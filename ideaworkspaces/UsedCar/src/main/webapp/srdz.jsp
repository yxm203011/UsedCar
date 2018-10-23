<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <base href="http://localhost:8080/">
<meta charset="UTF-8">
<title>私人定制</title>
<meta name="description" content="亿金汽车"/>
<meta name="keywords" content="郑州二手车,河南二手车,郑州二手名车">
<link rel="stylesheet" type="text/css" href="Css/base.css">
<link rel="stylesheet" type="text/css" href="Css/layout.css">
<link rel="stylesheet" type="text/css" href="Css/ding.css">
<!--<link rel="stylesheet" type="text/css" href="Css/alert.css">-->
<script type="text/javascript" src="Scripts/jquery-1.8.2.min.js"></script>
<script src="Scripts/jquery.cookie.js" type="text/javascript"></script>

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
      <div class="nav left dInline" id="headerMenu"> <a class="on" href="index.jsp">首页</a> <a href="about.jsp">关于亿金</a> <a href="maiche_list.jsp">我要买车</a> <a href="wymc.jsp">我要卖车</a> <a href="srdz.jsp">私人定制</a>
        <!--<a href="shfw.html">售后服务</a>--> 
        <a id="MemberMenuChange" class="b-login" href="会员中心首页.jsp" target="_self">会员中心</a> </div>
      <span class="right" id="rightMenuHtml"> <a href="javascript:;" class="b-login" id="b-login">登录</a>|<a href="javascript:;" id="b-regist">注册</a>|&nbsp;&nbsp;&nbsp;&nbsp;<img src="Picture/tel.png"/> </span> </div>
  </div>
  <div class="head-search">
    <div class="wrap clearfix">
      <div class="yjxj clearfix left" action="/index/keyword/" method="post" enctype="multipart/form-data">
        <input type="text" name="keyword" placeholder="请输入您想要的品牌、车系或车辆编号搜索" class="left" />
        <input type="submit" value="搜 索" class="right" />
      </div>
      <div class="hotWords left dInline"> 热门品牌：<a href="javascript:;">奥迪A6L</a><a href="javascript:;">宝马5系</a><a href="javascript:;">奔驰E级</a><a href="javascript:;">奥迪A4L</a><a href="javascript:;">奔驰C级</a> </div>
    </div>
  </div>
</div>
<style>
input::-webkit-input-placeholder, textarea::-webkit-input-placeholder {color: #656565;}
input:-moz-placeholder, textarea:-moz-placeholder {color:#656565;}
input::-moz-placeholder, textarea::-moz-placeholder {color:#656565;}
input:-ms-input-placeholder, textarea:-ms-input-placeholder {color:#656565;}
</style>
<div id="about">
  <div class="mTags">
    <div class="wrap"> <a href="javascript:;">亿金汽车</a>><a href="4.jsp">私人定制</a> </div>
  </div>
  <div class="dBox">
    <div class="dzDetail">
      <div class="wrap clearfix">
        <div class="dzLeft left dInline"> <strong>私人定制</strong>
          <p> 私人定制是根据您对车辆品牌、车型、颜色、内饰、配置、年限、公里数等的需求进行定制化服务，公司将全国范围内搜寻相匹配的优质车源，供您挑选，让爱车真正成为您的专属座驾。 </p>
        </div>
        <input type="hidden" id="ckmobile" value="1" />
        <div class="diForm">
          <form id="dForm" name="dForm" method="post" enctype="multipart/form-data" onsubmit="return cleckform();">
            <h3>提交信息，帮您量身定制！</h3>
            <table>
              <tr>
                <td><select class="Smakeid" name="makeid"  id="" placeholder="所属品牌">
                    <option value=""> 选择品牌（必选）</option>
                    <option value="9" > A 奥迪</option>
                    <option value="92" > A 阿尔法·罗密欧</option>
                  </select></td>
              </tr>
              <tr>
                <td><div id="xlselect">
                    <select class="" name="modeid"  id="" placeholder="所属车型">
                      <option value=""> 选择车系（必选）</option>
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
                <td><input type="text" value="" placeholder="计划购买时间" style="padding:0px" class="form_datetime dateTxt" name="buytime" data-date-format="yyyy-mm"></td>
              </tr>
              <tr>
                <td><label class="f14">购买预算</label>
                  <input name="dprice" type="text" style="padding:0px" class="ysTxt" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" />
                  <span>-</span>
                  <input name="hprice" type="text" style="padding:0px" class="ysTxt" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')" />
                  <label>万元</label></td>
                <td></td>
              </tr>
              <tr>
                <td colspan="2"><textarea name="content" class="f14" placeholder="其他要求（例如车身和内饰颜色、行驶里程要求等）"></textarea></td>
              </tr>
              <tr>
                <td colspan="2" style="text-align:right;"><input id="input-phone" type="hidden" name="mobile" value="" />
                  <input id="input-verify" type="hidden" name="verify" value="" />
                  <a href="javascript:void(0)" class="btn" id="sendMESS">参加私人定制</a></td>
              </tr>
            </table>
          </form>
        </div>
      </div>
    </div>
    <div style="text-align:center;padding:150px 0;"> <img src="Picture/dz1.jpg"/> </div>
  </div>
</div>
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
            <img src="Picture/buildverify.jsp" id="yzcode" width="100" height="42" alt="点击切换" onclick="this.src='../../../Admin/Login/buildVerify.html'"> </li>
        </ul>
        <div class="login-button">
          <input type="button"  value="立即提交" class="fM" onclick="sendtosend()" style="line-height:20px" />
        </div>
      </form>
    </div>
    <a class="closed">×</a> </div>
</div>
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
          <a href="../../../Cars/contrast/channel/2.jsp" class="mini-fav">立即对比</a> </div>
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
<script type="text/javascript" src="Scripts/minibar.js"></script> 
<script type="text/javascript" src="Scripts/lg_reg.js"></script> 
<script language="javascript" type="text/javascript" src="Scripts/wdatepicker.js"></script> 
<script type="text/javascript" src="Scripts/bootstrap.min.js"></script> 
<script type="text/javascript" src="Scripts/bootstrap-datetimepicker.js" charset="UTF-8"></script> 
<script type="text/javascript" src="Scripts/bootstrap-datetimepicker.zh-cn.js" charset="UTF-8"></script>
<link rel="stylesheet" type="text/css" href="Css/bootstrap-datetimepicker.css">
<link rel="stylesheet" type="text/css" href="Css/bootstrap.min.css">
<script type="text/javascript">
    $('.form_datetime').datetimepicker({
       format: 'yyyy-mm',
		language:"zh-CN",        
		startView: 3,
		minView: 3,
		autoclose:true
    });
</script> 
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
<style>
.dzDetail{height:492px;width:100%;background: url(Images/dzbg.jpg) no-repeat center top;}
.diForm{float:right;width:402px;height:432px;}
.dzLeft{font-size:14px;color:#166cbe;width:415px;line-height:20px;margin-top:150px;}
.dzLeft strong{font-size:40px;display:block;padding-bottom:15px;}
.diForm table textarea{width:300px;padding:5px;height:60px;}
.diForm table{width:100%;}
.diForm form{padding:0px 44px 0 44px;}
.diForm form h3{font-weight: normal;font-size:18px;color:#166cbe;text-align:left;padding-bottom:13px;}
.diForm table td{padding-bottom:0;color: #656565;height:auto;padding:7px 0;}
.diForm table .dateTxt{padding-left:4px;width:303px;}
.diForm table .btn{font-size:16px;width:165px;margin:0;}
</style>
</body>
</html>