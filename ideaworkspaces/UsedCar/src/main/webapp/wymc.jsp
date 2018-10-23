<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<base href="http://localhost:8080/">
<meta charset="UTF-8">
<title>我要卖车</title>
<meta name="description" content="亿金汽车"/>
<meta name="keywords" content="郑州二手车,河南二手车,郑州二手名车"> 
<link rel="stylesheet" type="text/css" href="Css/base.css">
<link rel="stylesheet" type="text/css" href="Css/layout.css">
<link rel="stylesheet" type="text/css" href="Css/sell.css">
<link rel="stylesheet" type="text/css" href="Css/alert.css">
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
<!--头部的开始-->
<div id="header">
	<div class="top">
		<div class="wrap clearfix">
			<a href="javascript:;" class="logo left"><img src="Picture/logo.png"/></a>
			<div class="nav left dInline" id="headerMenu">
      <a class="on" href="index.jsp">首页</a>
      <a href="about.jsp">关于亿金</a>
      <a href="maiche_list.jsp">我要买车</a>
      <a href="wymc.jsp">我要卖车</a>
      <a href="srdz.jsp">私人定制</a>
      <!--<a href="shfw.html">售后服务</a>-->
      <a id="MemberMenuChange" class="b-login" href="中心首页.jsp" target="_self">中心</a>
      </div>
			<span class="right" id="rightMenuHtml">
				<a href="javascript:;" class="b-login" id="b-login">登录</a>|<a href="javascript:;" id="b-regist">注册</a>|&nbsp;&nbsp;&nbsp;&nbsp;<img src="Picture/tel.png"/>			</span>
		</div>
	</div>
	<div class="head-search">
		<div class="wrap clearfix">
			<div class="yjxj clearfix left" action="/index/keyword/" method="post" enctype="multipart/form-data">
        <input type="text" name="keyword" placeholder="请输入您想要的品牌、车系或车辆编号搜索" class="left" />
        <input type="submit" value="搜 索" class="right" />
      </div>
			<div class="hotWords left dInline">
				热门品牌：<a href="javascript:;">奥迪A6L</a><a href="javascript:;">宝马5系</a><a href="javascript:;">奔驰E级</a><a href="javascript:;">奥迪A4L</a><a href="javascript:;">奔驰C级</a>     
			</div>
		</div>
	</div>
</div>

<!--头部的结束-->

<style>
input::-webkit-input-placeholder, textarea::-webkit-input-placeholder {color: #000;}
input:-moz-placeholder, textarea:-moz-placeholder {color:#000;}
input::-moz-placeholder, textarea::-moz-placeholder {color:#000;}
input:-ms-input-placeholder, textarea:-ms-input-placeholder {color:#000;}
.select-item{margin-bottom: 25px;}
</style>
<div id="about">
	<div class="mTags wrap">
		<a href="javascript:;">亿金名车广场</a>><a href="3.jsp">我要卖车</a>
	</div>
	<div class="sellBox">
		<div class="sellTop">
			<div class="wrap">
				<div class="selDetail">
					<div class="sel-a left dInline">
						<ul class="clearfix">
							<li>
								<img src="Picture/sell1_1.png"/>
								<strong>流程简单</strong>
							</li>
							<li>
								<img src="Picture/sell1_2.png"/>
								<strong>快速回款</strong>
							</li>
							<li class="last">
								<img src="Picture/sell1.png" style="color:#000" />
								<strong>诚信服务</strong>
							</li>
						</ul>
						<p>
                        	<strong style="font-size:24px;">亿金标准</strong><br/><br/>
                            车龄不超过4年<br/>
                            行驶里程不超过80000公里<br/>
                            无结构性损伤，非事故车、泡水车或火烧车<br/>
                            具有完备、合法的车辆手续
                        </p>
					</div>
					<div class="sell-form right dInline">
						<form enctype="multipart/form-data" action="" method="post" name="forms" id="forms" onsubmit="return InputCheck();">
							<h3>登记您的爱车信息</h3>
							<div class="sell-info" style="margin-top:5px">
                                <div class="select-item clearfix">
                                	<select class="select car-select" name="makeid" id="makeCar" style="width:100%">
										<option value="">请选择品牌</option>
										<option value="9">A 奥迪</option><option value="92">A 阿尔法·罗密欧</option><option value="97">A 阿斯顿·马丁</option><option value="184">B 保斐利</option><option value="82">B 保时捷</option><option value="127">B 别克</option><option value="163">B 北京</option><option value="14">B 北汽制造</option><option value="168">B 北汽威旺</option><option value="211">B 北汽幻速</option><option value="216">B 北汽新能源</option><option value="195">B 北汽绅宝</option><option value="59">B 奔腾</option><option value="2">B 奔驰</option><option value="3">B 宝马</option><option value="157">B 宝骏</option><option value="85">B 宾利</option><option value="172">B 巴博斯</option><option value="135">B 布加迪</option><option value="26">B 本田</option><option value="5">B 标致</option><option value="15">B 比亚迪</option><option value="221">C 成功</option><option value="129">C 昌河</option><option value="21">C 长城</option><option value="159">C 长安商用</option><option value="230">C 长安跨越</option><option value="136">C 长安轿车</option><option value="179">D DS</option><option value="29">D 东南</option><option value="27">D 东风</option><option value="235">D 东风·郑州日产</option><option value="205">D 东风小康</option><option value="215">D 东风御风</option><option value="197">D 东风风度</option><option value="141">D 东风风神</option><option value="115">D 东风风行</option><option value="8">D 大众</option><option value="106">D 大宇</option><option value="165">D 大通MAXUS</option><option value="113">D 道奇</option><option value="7">F 丰田</option><option value="91">F 法拉利</option><option value="208">F 福汽启腾</option><option value="17">F 福特</option><option value="128">F 福田</option><option value="67">F 福迪</option><option value="40">F 菲亚特</option><option value="199">F 飞驰商务车</option><option value="109">G GMC</option><option value="110">G 光冈</option><option value="147">G 广汽传祺</option><option value="63">G 广汽吉奥</option><option value="182">G 观致汽车</option><option value="44">H 华普</option><option value="112">H 华泰</option><option value="225">H 华颂</option><option value="196">H 哈弗</option><option value="31">H 哈飞</option><option value="181">H 恒天汽车</option><option value="108">H 悍马</option><option value="45">H 汇众</option><option value="170">H 海格</option><option value="32">H 海马</option><option value="149">H 海马商用车</option><option value="58">H 红旗</option><option value="52">H 黄海</option><option value="4">J Jeep</option><option value="152">J 九龙</option><option value="34">J 吉利汽车</option><option value="98">J 捷豹</option><option value="38">J 江南</option><option value="35">J 江淮</option><option value="37">J 江铃</option><option value="224">J 江铃集团轻汽</option><option value="39">J 金杯</option><option value="51">K 克莱斯勒</option><option value="220">K 凯翼</option><option value="107">K 凯迪拉克</option><option value="213">K 卡威</option><option value="188">K 卡尔森</option><option value="241">K 康迪</option><option value="150">K 开瑞</option><option value="145">K 科尼赛克</option><option value="218">K 科瑞斯的</option><option value="86">L 兰博基尼</option><option value="76">L 力帆</option><option value="80">L 劳斯莱斯</option><option value="95">L 林肯</option><option value="153">L 猎豹汽车</option><option value="166">L 理念</option><option value="146">L 莲花</option><option value="200">L 蓝海房车</option><option value="83">L 路特斯</option><option value="96">L 路虎</option><option value="16">L 铃木</option><option value="36">L 陆风</option><option value="229">L 雷丁电动</option><option value="94">L 雷克萨斯</option><option value="99">L 雷诺</option><option value="79">M MG</option><option value="81">M MINI</option><option value="93">M 玛莎拉蒂</option><option value="55">M 美亚</option><option value="183">M 迈凯伦</option><option value="88">M 迈巴赫</option><option value="18">M 马自达</option><option value="155">N 纳智捷</option><option value="104">O 欧宝</option><option value="171">O 欧朗</option><option value="84">O 讴歌</option><option value="Q1441684582">Q 亿金</option><option value="156">Q 启辰</option><option value="42">Q 奇瑞</option><option value="43">Q 庆铃</option><option value="28">Q 起亚</option><option value="30">R 日产</option><option value="142">R 瑞麒</option><option value="78">R 荣威</option><option value="89">s smart</option><option value="25">S 三菱</option><option value="137">S 世爵</option><option value="50">S 双环</option><option value="102">S 双龙</option><option value="209">S 山姆</option><option value="111">S 斯巴鲁</option><option value="10">S 斯柯达</option><option value="103">S 萨博</option><option value="169">S 陕汽通家</option><option value="54">T 天马</option><option value="202">T 泰卡特</option><option value="189">T 特斯拉</option><option value="175">T 腾势</option><option value="56">T 通田</option><option value="46">W 万丰</option><option value="132">W 五十铃</option><option value="48">W 五菱</option><option value="186">W 威兹曼</option><option value="140">W 威麟</option><option value="19">W 沃尔沃</option><option value="207">W 潍柴英致</option><option value="57">X 厦门金龙</option><option value="71">X 新凯</option><option value="65">X 新大地</option><option value="62">X 新雅途</option><option value="174">X 星客特</option><option value="13">X 现代</option><option value="87">X 西雅特</option><option value="49">X 雪佛兰</option><option value="6">X 雪铁龙</option><option value="53">Y 一汽</option><option value="47">Y 仪征</option><option value="41">Y 依维柯</option><option value="75">Y 永源</option><option value="100">Y 英菲尼迪</option><option value="138">Y 野马汽车</option><option value="33">Z 中兴</option><option value="60">Z 中华</option><option value="64">Z 中客华北</option><option value="167">Z 中欧奔驰房车</option><option value="72">Z 中顺</option><option value="77">Z 众泰</option><option value="233">Z 知豆</option></select>                                    </select>
								</div>
								<div class="select-item clearfix">
                                    <select class="select car-select" name="modeid" id="modeCar" style="width:100%">
                                        <option value="">请选择车系</option>
                                    </select>
								</div>
                                <div class="select-item clearfix">
                                    <select class="select car-select" name="styleid" id="styleCar" style="width:100%">
                                        <option value="">请选择车型</option>
                                    </select>
								</div>
								<!--<div class="select-item clearfix">
									<input id="input-phone" type="text" name="phone" value="手机号" class="cPut" style="width:150px" />
                                    <input type="text" name="verify" value="验证码" style="width:110px; margin:0 5px 0 25px" class="cPut" />
                                    <div id="send_Mess" class="left"><a href="javascript:;" class="send_Mess right">获取验证码</a></div>
								</div>-->
                                <div class="select-item clearfix">
                                    <input type="text" value="" placeholder="上牌时间" class="form_datetime cPut" id="buytimeval" name="buytime" data-date-format="yyyy-mm"  style="float:left; width:150px"/>
                                    <input type="text" name="mile" placeholder="行驶里程" value="" class="cPut" id="mialval"  style="float:right" />
                                    <div class="unit">万公里</div>
                                </div>
								<div class="seBtn">
                                	<input id="input-phone" type="hidden" name="mobile" value="" />
                                    <input id="input-verify" type="hidden" name="verify" value="" />
									<a href="#showDiv" class="gj_btn">估一下价</a>
                                    <a href="javascript:void(0)" id="sendMESS">提交</a>
									<!--<a href="javascript:void(0)" onclick="$('#forms').submit()">登记</a>-->
									<!--<a href="javascript:;">评估</a>-->
								</div>
							</div>
						</form>
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
		$('#forms').submit();
	}
}
</script>
<link rel="stylesheet" type="text/css" href="Css/jquery.fancybox-1.3.4.css">
<script type="text/javascript" src="Scripts/jquery.fancybox-1.3.4.js"></script>
<script type="text/javascript">
$(function(){
	$(".gj_btn").live("click",function(){
		var makeCar=$("#makeCar").val();
		var modeCar=$("#modeCar").val();
		var styleCar=$("#styleCar").val();
		var buytimeval=$("#buytimeval").val();
		var mialval=$("#mialval").val();
		var url='/Sales/getprice';
		if(makeCar==''){
			alert("请选择品牌");
			$("#makeCar").focus();
			return false;
		}
		if(modeCar==''){
			alert("请选择车系");
			$("#modeCar").focus();
			return false;
		}
		if(styleCar==''){
			alert("请选择车型");
			$("#styleCar").focus();
			return false;
		}
		if(buytimeval==''){
			alert("请选择日期");
			$("#buytimeval").focus();
			return false;
		}
		if(mialval==''){
			alert("请输入里程");
			$("#mialval").focus();
			return false;
		}
		
		$.ajax({
			 type: "POST",
			 url: url,
			 data: {makeid:makeCar, modeid:modeCar,styleid:styleCar,buytime:buytimeval,mile:mialval},
			 dataType: "json",
			 success: function(data){
				// alert(data);
				$(".guBox").html(data.jsp);
				
				$(".gj_btn").fancybox({
					'padding':'0',
					'titlePosition':'inside',
					'transitionIn':'elastic',
					'transitionOut':'elastic'
				});
			}
		 });
		 return false;
	});
	
})
</script>
					</div>
				</div>
			</div>
		</div>
		<div class="sell-a">
			<div class="wrap">
				<h2>二手车须知及流程</h2>
				<div class="sa-list">
					<ul class="clearfix">
						<li>
							<img src="Picture/sell2_1.png"/>
							<h4>准备手续</h4>
							<p>
								<!-- <b>车辆手续：</b><br/>
								包括行驶证、机动车登记证、购置附加税凭证、保险单据等，主要是前面三项。
								<b>车主手续：</b><br/>
								个人准备身份证原件；单位准备公章、组织机构代码证原件（正本、副本都可）。 -->
								机动车登记证、行驶证、保养手册、身份证复印件等车辆资料
							</p>
						</li>
						<li>
							<img src="Picture/sell2_2.png"/>
							<h4>上门评估</h4>
							<p>
								可以通过电话、网络提交评估需求，我们专业评估团队会及时联系您约上门评估时间和地点。

							</p>
						</li>
						<!-- <li>
							<img src="Picture/sell2_3.png"/>
							<h4>亿金365项检测</h4>
							<p>
								可以通过二手车市场、置换、网上自己出售等多种方式选择出售车辆。选择一家知名度高、信誉好的二手车企业，不仅可以简化交易流程，还可避免不必要的经济损失。
							</p>
						</li> -->
						<li>
							<img src="Picture/sell2_4.png"/>
							<h4>确定价格</h4>
							<p>
								评估师根据车况反馈评估价格，结合车主售车意愿确定车辆价格。
							</p>
						</li>
						<li class="last">
							<img src="Picture/sell2_4.png"/>
							<h4>手续办理</h4>
							<p>
								确定交易的车辆准备好相关手续，由车主本人现场签字办理相关手续。
 
							</p>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="main-a">
			<div class="mDiv sell-b">
				<img src="Picture/sell3.jpg"/>
			</div>
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
                            <img src="Picture/buildverify.jsp" id="yzcode" width="100" height="42" alt="点击切换" onclick="this.src='../../../Admin/Login/buildVerify.html'">
			            </li>
			        </ul>
			        <div class="login-button">
			            <input type="button"  value="立即提交" class="fM" onclick="sendtosend()" style="line-height:20px" />
			        </div>
				</form>
        </div>
        <a class="closed">×</a>
	</div>
</div>
<div style="display:none;">
	<div id="showDiv">
		<div class="guBox">
			<h3>您的爱车</h3>
			<p>欧蓝德(进口) 2014款欧蓝德(进口)2.4L四驱豪华超值版7座 </p>
			<span>上牌时间：<font> 2014-12</font> </span><span>行驶里程： <font>1万公里</font></span>
			<h3>评估价：<strong>￥18.14万</strong></h3>
		</div>
		<img src="Picture/jzgu.png" class="s_gu" />
	</div>
</div>
<style type="text/css">
.sa-list li{width:223px;}
#showDiv{width:800px;height:270px;background:#fff;position:relative;}
#showDiv .s_gu{position:absolute;right:20px;bottom:15px;}
.guBox{padding:20px 30px 0 30px;font-size:20px;}
.guBox h3{color:#000;font-weight: normal;margin-top:30px;font-size:20px;}
.guBox h3 strong{font-weight: bold;color:#0756b5}
.guBox p{color:#427dc6;font-weight: bold;padding:10px 0;}
.guBox span{font-size:14px;display:inline-block;margin-right:15px;}
.guBox span font{font-weight: bold;color:#437ec6;font-size:14px;}
</style>
</div>

<div id="footer">
	<div class="foot-a1">
		<div class="wrap">
			<ul class="clearfix">
            	<li>
                	<img src="Picture/db1.png"/>
                    <p>365项检测认证</p>
                </li>
                <li>
                	<img src="Picture/db2.png"/>
                    <p>5000公里无需保养</p>
                </li>
                <li>
                	<img src="Picture/db3.png"/>
                    <p>1年或两万公里无忧质保</p>
                </li>
                <li>
                	<img src="Picture/db4.png"/>
                    <p>7天无忧退换</p>
                </li>
                <li>
                	<img src="Picture/db5.png"/>
                    <p> 置换有增值</p>
                </li>
            </ul>
		</div>
	</div>
	<div class="foot-a">
		<div class="wrap clearfix">
			<div class="fDl left dInline ">
				<strong>亿金承诺</strong>
				<ul>
					<li><a href="javascript:;">365项严苛检测</a></li>
                    <li><a href="javascript:;">5000公里无需保养</a></li>
                    <li><a href="javascript:;">一年或两万公里质保</a></li>
                    <li><a href="javascript:;">7天退换</a></li>
				</ul>
			</div>
			<div class="fDl left dInline ">
				<strong>买卖二手车指南</strong>
				<ul>
					<li><a href="../../../News/Content/channel/24/id/143.jsp" target="_blank">“禁止长时间停车”到底能</a></li><li><a href="../../../News/Content/channel/24/id/139.jsp" target="_blank">20年前开桑塔纳的大款们，</a></li><li><a href="../../../News/Content/channel/24/id/138.jsp" target="_blank">豪华入门跨界车之争,奔驰G</a></li><li><a href="../../../News/Content/channel/24/id/131.jsp" target="_blank">像初恋一样爱它，该给它怎</a></li><li><a href="../../../News/Content/channel/24/id/133.jsp" target="_blank">常开车不等于会开车 你的</a></li>				</ul>
			</div>
			<div class="fDl left dInline ">
				<strong>售后服务</strong>
				<ul>
					<li><a href="javascript:;">24小时道路救援</a></li>
                    <li><a href="javascript:;">豪车凹陷修复</a></li>
                    <li><a href="javascript:;">定期上门维修保养服务</a></li>
                    <li><a href="javascript:;">预约保养工时优惠</a></li>
				</ul>
			</div>
			<div class="fDl left dInline ">
				<strong>关于亿金</strong>
				<ul>
					<li><a href="../../../News/index/channel/28/list/30.jsp" target="_blank">亿金动态</a></li>
					<li><a href="../../../News/index/channel/28/list/39.jsp" target="_blank">亿金荣誉</a></li>
					<li><a href="../../../News/index/channel/28/list/37.jsp" target="_blank">亿金优势</a></li>
					<li><a href="../../../News/index/channel/28/list/41.jsp" target="_blank">联系亿金</a></li>
					<li><a href="../../../News/index/channel/28/list/42.jsp" target="_blank">评估团队</a></li>
				</ul>
			</div>
			<div class="fDl left dInline ">
				<strong>亿金文化</strong>
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
					<div class="mini-mi browse">
						<i class="mini-ease"></i>
						<code></code>
						<span>最近浏览</span>
					</div>
				</li>
				<li class="miItem">
					<div class="mini-mi collec">
						<i class="mini-ease"></i>
						<code></code>
						<span>我的收藏</span>
					</div>
				</li>
				<li>
					<div class="mini-mi service">
						<i class="mini-ease" id="BizQQWPA"></i>
						<code></code>
						<span>在线客服</span>
                       
					</div>
				</li>
				<li class="callItem">
					<div class="mini-mi callback">
						<i class="mini-ease"></i>
						<code></code>
						<span>意见反馈</span>
					</div>
				</li>
				<li class="miItem">
					<div class="mini-mi shopping">
						<i class="mini-ease"></i>
						<code></code>
						<span>对比车辆</span>
						<abbr id="Dbnumber">0</abbr>
					</div>
				</li>
			</ul>
		</div>
		<a class="mini-gotop"></a>
		<a class="wx1"><img src="Picture/wx_1.png"></a>
		<div class="wmImg hide">
			<img src="Picture/wx_2.png">
		</div>
	</div>
	<div class="mini-cont">
		<div class="mini-contlist">
			<div class="mini-ni">
				<div class="mini-h clearfix">
					<a class="mini-close mini-ease lf-fl"></a>
					<span class="lf-fr"><code>最近浏览</code></span>
				</div>
				<div class="miList" id="Liulan">
					<ul>
											</ul>
				</div>
			</div>
			<div class="mini-ni">
				<div class="mini-h clearfix">
					<a class="mini-close mini-ease lf-fl"></a>
					<span class="lf-fr"><code>我的收藏</code></span>
				</div>
				<div class="miList" id="shoucang">
					<ul>
											</ul>
<a  href="javascript:void(0)" class="mini-fav b-login">查看更多收藏</a>
				</div>
			</div>
			<!--<div class="mini-ni">
				<div class="mini-h clearfix">
					<a class="mini-close mini-ease lf-fl"></a>
					<span class="lf-fr"><code>在线客服</code></span>
				</div>
			</div>-->
			<div class="mini-ni" id="shopping">
				<div class="mini-h clearfix">
					<a class="mini-close mini-ease lf-fl"></a>
					<span class="lf-fr"><code>对比车辆</code></span>
                    <span class="lf-fr" style="margin:auto 10px; font-size:26px; font-weight:bolder" id="deletealldb"><a><code>×</code></a></span>
				</div>
                <div class="miList" id="Carduibi">
					<ul>
											</ul>
					<a href="../../../Cars/contrast/channel/2.jsp" class="mini-fav">立即对比</a>
				</div>
			</div>
		</div>
	</div>
	<div class="lf-view" id="lf-view">
    	<form onsubmit="return Lmessage();" enctype="multipart/form-data" method="post" name="leaveMess" id="leaveMess">
		<b>您对我们的看法~</b>
		<div>
			<textarea placeholder="您的声音对我们很重要哟(必填)~" name="bankAuthSrc"></textarea>
		</div>
		<div>
			<a id="viewSubmit" onclick="$('#leaveMess').submit()"></a>
            <input type="text" placeholder="请留下您的手机号码(必填)" id="viewAbout" name="mobile" />
            		</div>
        </form>
		<a id="viewClose"></a>
		<i id="viewIcon"></i>
		<p id="viewSign"></p>
	</div>
</div>

<div id="popBox">
	<div class="popCont">
		<a class="p_closed">关闭</a>
		<div class="p-tab">
			<a>会员登录<i></i></a><a>会员注册<i></i></a>
		</div>
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
			            <a href="../../../Meet/editPass">忘记登录密码？</a>
			        </div>
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
			                <input type="radio" checked="" name="gender" value="M" /> 男&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="gender" value="F" /> 女 
			            </li>
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
<!--<script type="text/javascript" src="Scripts/borrow.js"></script>-->


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





</body>
</html>