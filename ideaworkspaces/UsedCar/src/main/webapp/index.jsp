<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
  <base href="http://localhost:8080/">
<meta charset="UTF-8">
<title>二手车网上交易市场网站模板 - 代码库</title>
<meta name="description" content="二手车网上交易市场网站模板"/>
<meta name="keywords" content="蓝色二手车网上交易市场网站模板下载，包含主页、我要买车、我要卖车、私人定制、会员中心、登录、注册等网页模板。">
<link rel="stylesheet" type="text/css" href="Css/base.css">
<link rel="stylesheet" type="text/css" href="Css/index.css">
<link rel="stylesheet" type="text/css" href="Css/layout.css">
<script type="text/javascript" src="Scripts/jquery-1.8.2.min.js"></script> 
<!--[if IE 6]>
<script type="text/javascript" src="Scripts/dd_belatedpng.js"></script>
<script>
        DD_belatedPNG.fix('*');
    </script>
<![endif]-->
  <style>
    #verificationcoded,#verificationcodetwo{width:140px;height:40px;line-height:40px;background:#d3dceb;border:1px solid #B4B9BD;text-align:center;border-radius:3px;}
    #verificationcoded,#verificationcodetwo{width:130px;}
    </style>
</head>

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
      <a id="MemberMenuChange" class="b-login" href="会员中心首页.html" target="_self">会员中心</a>
      </div>
    <c:if test="${empty userphone}">
                <span class="right" id="rightMenuHtml">
				<a href="javascript:;" class="b-login" id="b-login">登录${userphone}</a>|<a href="javascript:;" id="b-regist">注册</a>|&nbsp;&nbsp;&nbsp;&nbsp;<img src="Picture/tel.png"/>
                </span> </div>
    </c:if>
      <c:if test="${not empty userphone}">
        <span class="right" id="rightMenuHtml">
                 用户:${userphone}|<a href="login/delsession" class="b-login">退出登陆</a>
                </span> </div>
     </c:if>
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
<style type="text/css">
#banner .prevs,#banner .nexts{position:absolute;top:220px;z-index: 100;margin-top:-25px;}
#banner .nexts{right:0;}
#banner .banShow a{display:block;width: 100%;height:465px;}
</style>
<div id="banner">
  <div class="banShow clearfix" style="width:100%;"> 
    <a href="javascript:;" class="bDiv" style="background: url(Images/y77.jpg) no-repeat center top;"></a>  
    <a href="javascript:;" class="bDiv" style="background:url(Images/1.jpg) no-repeat center top;"></a> 
  </div>
  <div class="b_btn wrap"> 
    <!--<a class="prevs"><img src="Picture/l1.png"></a> 
    <a class="nexts"><img src="Picture/r1.png"></a>-->   
  </div>
  
  <div class="searchBox">
   <div class="xbg"></div>
   <div class="xnrj">
   <img src="Picture/in1.png"/>
    <form class="clearfix" action="/index/keyword/" method="post" enctype="multipart/form-data">
      <input type="text" maxlength="" name="keyword" placeholder="请输入您想要的品牌、车系或车辆编号搜索" class="left" />
      <input type="submit" value="" class="right" />
    </form></div>
  </div>
  
</div>
<div id="choose-nav">
  <div class="wrap clearfix"> 
    <!-- 品牌 -->
    <div class="item-brand c-item">
      <div class="trigger-icon"></div>
      <div class="brand-wrapper">
        <div class="hd cBlue">品牌</div>
        <div class="bd clearfix"> 
        <a href="javascript:;" class="brand-item" target="_blank"><img src="Picture/55a46160eac22.png" alt="奥迪"><span>奥迪</span></a>
        <a href="javascript:;" class="brand-item" target="_blank"><img src="Picture/55a4613f6aab9.png" alt="奔驰"><span>奔驰</span></a>
        <a href="javascript:;" class="brand-item" target="_blank"><img src="Picture/55c8639f1aa89.png" alt="宝马"><span>宝马</span></a>
        <a href="javascript:;" class="brand-item" target="_blank"><img src="Picture/567a3b2190d9f.png" alt="路虎"><span>路虎</span></a>
        <a href="javascript:;" class="brand-item" target="_blank"><img src="Picture/567a3cdb8bf68.png" alt="保时捷"><span>保时捷</span></a>
        <a href="javascript:;" class="brand-item" target="_blank"><img src="Picture/55a4afc65ed32.png" alt="丰田"><span>丰田</span></a>
        <a href="javascript:;" class="brand-item" target="_blank"><img src="Picture/55a34e9dcd43a.png" alt="大众"><span>大众</span></a> 
        </div>
      </div>
      <div class="brand-all clearfix">
        <div class="title">所有品牌</div>
        <div class="brand-list clearfix">
          <div class="left-list">
            <div class="brand-item-l clearfix">
              <div class="letter">A</div>
              <div class="brand-letter"> <a target="_blank" href="pp9" class="brand-item">奥迪</a> </div>
            </div>
            <div class="brand-item-l clearfix">
              <div class="letter">B</div>
              <div class="brand-letter"> <a target="_blank" href="pp2" class="brand-item">奔驰</a> <a target="_blank" href="pp3" class="brand-item">宝马</a> <a target="_blank" href="pp82" class="brand-item">保时捷</a> <a target="_blank" href="pp172" class="brand-item">巴博斯</a> <a target="_blank" href="pp26" class="brand-item">本田</a> <a target="_blank" href="pp127" class="brand-item">别克</a> <a target="_blank" href="pp85" class="brand-item">宾利</a> <a target="_blank" href="pp5" class="brand-item">标致</a> </div>
            </div>
            <div class="brand-item-l clearfix">
              <div class="letter">D</div>
              <div class="brand-letter"> <a target="_blank" href="pp8" class="brand-item">大众</a> <a target="_blank" href="pp113" class="brand-item">道奇</a> </div>
            </div>
            <div class="brand-item-l clearfix">
              <div class="letter">F</div>
              <div class="brand-letter"> <a target="_blank" href="pp7" class="brand-item">丰田</a> <a target="_blank" href="pp17" class="brand-item">福特</a> </div>
            </div>
            <div class="brand-item-l clearfix">
              <div class="letter">J</div>
              <div class="brand-letter"> <a target="_blank" href="pp4" class="brand-item">Jeep</a> <a target="_blank" href="pp98" class="brand-item">捷豹</a> </div>
            </div>
            <div class="brand-item-l clearfix">
              <div class="letter">K</div>
              <div class="brand-letter"> <a target="_blank" href="pp107" class="brand-item">凯迪拉克</a> <a target="_blank" href="pp51" class="brand-item">克莱斯勒</a> </div>
            </div>
            <div class="brand-item-l clearfix">
              <div class="letter">L</div>
              <div class="brand-letter"> <a target="_blank" href="pp96" class="brand-item">路虎</a> <a target="_blank" href="pp80" class="brand-item">劳斯莱斯</a> <a target="_blank" href="pp94" class="brand-item">雷克萨斯</a> </div>
            </div>
          </div>
          <div class="right-list">
            <div class="brand-item-l clearfix">
              <div class="letter">M</div>
              <div class="brand-letter"> <a target="_blank" href="pp93" class="brand-item">玛莎拉蒂</a> <a target="_blank" href="pp81" class="brand-item">MINI</a> <a target="_blank" href="pp18" class="brand-item">马自达</a> </div>
            </div>
            <div class="brand-item-l clearfix">
              <div class="letter">N</div>
              <div class="brand-letter"> <a target="_blank" href="pp155" class="brand-item">纳智捷</a> </div>
            </div>
            <div class="brand-item-l clearfix">
              <div class="letter">R</div>
              <div class="brand-letter"> <a target="_blank" href="pp30" class="brand-item">日产</a> </div>
            </div>
            <div class="brand-item-l clearfix">
              <div class="letter">S</div>
              <div class="brand-letter"> <a target="_blank" href="pp25" class="brand-item">三菱</a> <a target="_blank" href="pp111" class="brand-item">斯巴鲁</a> </div>
            </div>
            <div class="brand-item-l clearfix">
              <div class="letter">W</div>
              <div class="brand-letter"> <a target="_blank" href="pp19" class="brand-item">沃尔沃</a> </div>
            </div>
            <div class="brand-item-l clearfix">
              <div class="letter">X</div>
              <div class="brand-letter"> <a target="_blank" href="pp49" class="brand-item">雪佛兰</a> <a target="_blank" href="pp13" class="brand-item">现代</a> </div>
            </div>
            <div class="brand-item-l clearfix">
              <div class="letter">Y</div>
              <div class="brand-letter"> <a target="_blank" href="pp100" class="brand-item">英菲尼迪</a> </div>
            </div>
            <div class="brand-item-l clearfix">
              <div class="letter">s</div>
              <div class="brand-letter"> <a target="_blank" href="pp89" class="brand-item">smart</a> </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 车型 -->
    <div id="choose_model" class="item-model c-item">
      <div class="trigger-icon"></div>
      <div class="model-wrapper">
        <div class="hd cBlue">车型</div>
        <div class="bd"> <a href="_cx1/ord/A/sta/A.html" class="model-item" target="_blank">
          <div class="car-modal-img modal-tinyCar"></div>
          <span class="car-modal-name">小型</span></a><a href="_cx2/ord/A/sta/A.html" class="model-item" target="_blank">
          <div class="car-modal-img modal-PremiumMidsize"></div>
          <span class="car-modal-name">轿车</span></a><a href="_cx3/ord/A/sta/A.html" class="model-item" target="_blank">
          <div class="car-modal-img modal-SportsCar"></div>
          <span class="car-modal-name">跑车</span></a><a href="_cx4/ord/A/sta/A.html" class="model-item" target="_blank">
          <div class="car-modal-img modal-SUV"></div>
          <span class="car-modal-name">SUV</span></a><a href="_cx5/ord/A/sta/A.html" class="model-item" target="_blank">
          <div class="car-modal-img modal-MPV"></div>
          <span class="car-modal-name">MPV</span></a><a href="_cx6/ord/A/sta/A.html" class="model-item" target="_blank">
          <div class="car-modal-img modal-compactCar"></div>
          <span class="car-modal-name">房车</span></a> </div>
        <div class="model-all clearfix">
          <div class="models-line"><a class="models-item-m">小型</a><a target="_blank" href="javascript:;" class="models-item">宝马1系(进口)</a><a target="_blank" href="javascript:;" class="models-item">奔驰A级(进口)</a></div>
          <div class="models-line"><a class="models-item-m">轿车</a><a target="_blank" href="javascript:;" class="models-item">奥迪A6L</a><a target="_blank" href="javascript:;" class="models-item">宝马5系</a><a target="_blank" href="xl1987_pp2.html" class="models-item">奔驰E级</a><a target="_blank" href="xl2593_pp9.html" class="models-item">奥迪A4L</a><a target="_blank" href="xl2364_pp2.html" class="models-item">奔驰C级</a></div>
          <div class="models-line"><a class="models-item-m">跑车</a><a target="_blank" href="xl2751_pp3.html" class="models-item">宝马Z4(进口)</a><a target="_blank" href="xl2610_pp8.html" class="models-item">尚酷(进口)</a><a target="_blank" href="xl2068_pp9.html" class="models-item">奥迪TT(进口)</a><a target="_blank" href="xl3570_pp111.html" class="models-item">斯巴鲁BRZ(进口)</a><a target="_blank" href="xl2759_pp49.html" class="models-item">科迈罗(进口)</a></div>
          <div class="models-line"><a class="models-item-m">SUV</a><a target="_blank" href="xl2087_pp96.html" class="models-item">发现</a><a target="_blank" href="xl2855_pp9.html" class="models-item">奥迪Q5</a><a target="_blank" href="xl3528_pp2.html" class="models-item">奔驰GLK级</a><a target="_blank" href="xl2032_pp3.html" class="models-item">宝马X5(进口)</a><a target="_blank" href="xl2871_pp8.html" class="models-item">途观</a></div>
          <div class="models-line"><a class="models-item-m">MPV</a><a target="_blank" href="xl1825_pp127.html" class="models-item">别克GL8</a><a target="_blank" href="xl3038_pp2.html" class="models-item">福建奔驰威霆</a><a target="_blank" href="xl2970_pp2.html" class="models-item">唯雅诺</a><a target="_blank" href="xl1877_pp2.html" class="models-item">奔驰R级(进口)</a><a target="_blank" href="xl2379_pp8.html" class="models-item">大众迈特威(进口)</a></div>
          <div class="models-line"><a class="models-item-m">房车</a><a target="_blank" href="xl3038_pp2.html" class="models-item">福建奔驰威霆</a><a target="_blank" href="xlQ1449469092_pp17.html" class="models-item">E350</a><a target="_blank" href="xl2970_pp2.html" class="models-item">唯雅诺</a></div>
        </div>
      </div>
    </div>
    <!-- 价格 -->
    <div class="item-price">
      <div class="hd cBlue">价格</div>
      <div class="bd"> <a target="_blank" href="jg0-30.html" class="price-item" style="width:auto">30万以下</a> <a target="_blank" href="jg30-50.html" class="price-item" style="width:auto">30-50万</a> <a target="_blank" href="jg50-100.html" class="price-item" style="width:auto">50-100万</a> <a target="_blank" href="jg100-0.html" class="price-item" style="width:auto">100万以上</a> </div>
    </div>
  </div>
</div>
</div>
<div id="main">
  <div class="main-a mDiv" id="box1">
    <div class="wrap">
      <div class="in-tit clearfix">
        <h1 class="left dInline"> 今日推荐 </h1>
        <!--<div class="end-time right dInline">
					距离结束只剩下<b>20</b>小时<b>50</b>分<b>18</b>秒
				</div>--> 
      </div>
      <div class="inBox clearfix">
        <div class="thPic left dInline pve tBox"> <a href="javascript:;"  target="_blank"> <img src="Picture/56b01c412ea24.jpg" class="imgVt" /> <span class="icon icon_hd"></span></a> </div>
        <div class="tBox right pve dInline thPicRight">
          <div class="thPic1 left dInline pve">
            <ul class="clearfix">
              <li class="pve"> <a href="javascript:;" target="_blank"> <span class="icon icon_th"></span>
                <div class="car-pic"> <img src="Picture/56a0941ba3dc9.png" /> </div>
                <div class="price"> <font>一口价</font> <span class="num nBlue">21.8 </span> <font>&nbsp;&nbsp;万元</font> </div>
                <p>奔驰A级(进口) 2015 款 1.6T 双离合 A200时尚型</p>
                </a></li>
                
                <li class="pve"> <a href="javascript:;" target="_blank"> <span class="icon icon_th"></span>
                <div class="car-pic"> <img src="Picture/56a0941ba3dc9.png" /> </div>
                <div class="price"> <font>一口价</font> <span class="num nBlue">21.8 </span> <font>&nbsp;&nbsp;万元</font> </div>
                <p>奔驰A级(进口) 2015 款 1.6T 双离合 A200时尚型</p>
                </a></li>
                
                <li class="pve"> <a href="javascript:;" target="_blank"> <span class="icon icon_th"></span>
                <div class="car-pic"> <img src="Picture/56a0941ba3dc9.png" /> </div>
                <div class="price"> <font>一口价</font> <span class="num nBlue">21.8 </span> <font>&nbsp;&nbsp;万元</font> </div>
                <p>奔驰A级(进口) 2015 款 1.6T 双离合 A200时尚型</p>
                </a></li>
                
                <li class="pve"> <a href="javascript:;" target="_blank"> <span class="icon icon_th"></span>
                <div class="car-pic"> <img src="Picture/56a0941ba3dc9.png" /> </div>
                <div class="price"> <font>一口价</font> <span class="num nBlue">21.8 </span> <font>&nbsp;&nbsp;万元</font> </div>
                <p>奔驰A级(进口) 2015 款 1.6T 双离合 A200时尚型</p>
                </a></li>
              
            </ul>
          </div>
          <div class="pve right dInline hdPic"> <a href="pp96_/ord/sta.html"  target="_blank"> <img src="Picture/55ed9e88063ae.jpg" class="imgVt" /> <span class="icon icon_hd"></span></a> </div>
        </div>
      </div>
    </div>
  </div>
  <div class="mDiv" id="box2">
    <div class="wrap">
      <div class="in-tit clearfix">
        <h1 class="left dInline"> 最新到店 </h1>
      </div>
      <div class="inBox clearfix">
        <div class="tBox left pve dInline thPicRight">
          <div class="thPic1 left dInline pve">
            <ul class="clearfix">
              <li class="pve"> <a href="javascript:;" target="_blank"> <span class="icon icon_npro"></span>
                <div class="car-pic"> <img src="Picture/5688cddeae512.png" /> </div>
                <div class="price"> <font>一口价</font> <span class="num nBlue">28.99 </span> <font>&nbsp;&nbsp;万元</font> </div>
                <p>宝马3系 2014 款 2.0T 自动 320Li豪华设计套装</p>
                </a></li>
                
                <li class="pve"> <a href="javascript:;" target="_blank"> <span class="icon icon_npro"></span>
                <div class="car-pic"> <img src="Picture/5688cddeae512.png" /> </div>
                <div class="price"> <font>一口价</font> <span class="num nBlue">28.99 </span> <font>&nbsp;&nbsp;万元</font> </div>
                <p>宝马3系 2014 款 2.0T 自动 320Li豪华设计套装</p>
                </a></li>
                
                <li class="pve"> <a href="javascript:;" target="_blank"> <span class="icon icon_npro"></span>
                <div class="car-pic"> <img src="Picture/5688cddeae512.png" /> </div>
                <div class="price"> <font>一口价</font> <span class="num nBlue">28.99 </span> <font>&nbsp;&nbsp;万元</font> </div>
                <p>宝马3系 2014 款 2.0T 自动 320Li豪华设计套装</p>
                </a></li>
              
              <li class="pve liHd"> <a href="Cars/index/channel/2/id/949.html"  target="_blank"> <img src="Picture/56c56f308b591.jpg" class="imgVt" /> <span class="icon icon_hd"></span></a> </li>
              
              <li class="pve"> <a href="Cars/index/channel/2/id/1092.html" target="_blank"> <span class="icon icon_npro"></span>
                <div class="car-pic"> <img src="Picture/5688cddeae512.png" /> </div>
                <div class="price"> <font>一口价</font> <span class="num nBlue">34.8 </span> <font>&nbsp;&nbsp;万元</font> </div>
                <p>凯迪拉克SRX(进口) 2014 款 3.0L 自动 精英型</p>
                </a></li>
            </ul>
          </div>
        </div>
        <div class="thPic right dInline pve tBox"> <a href="pp2_/ord/sta.html"  target="_blank"> <img src="Picture/55ed9ec02ac8d.jpg" class="imgVt" /> <span class="icon icon_hd"></span></a> </div>
      </div>
    </div>
  </div>
  <div class="mDiv main-a">
    <div class="wrap">
      <div class="in-tit clearfix">
        <h1 class="left dInline"> 精品车源 </h1>
      </div>
      <div class="jpBox">
        <div class="jpTit"> 
        <a class="on"> <img src="Picture/clogo.png"/> <span>推荐车源</span> <i></i></a>
        <a> <img src="Picture/55a46160eac22.png" width="50" height="38" /> <span>奥迪</span> <i></i></a>
        <a> <img src="Picture/55a4613f6aab9.png" width="50" height="38" /> <span>奔驰</span> <i></i></a>
        <a> <img src="Picture/55c8639f1aa89.png" width="50" height="38" /> <span>宝马</span> <i></i></a>
        <a> <img src="Picture/567a3b2190d9f.png" width="50" height="38" /> <span>路虎</span> <i></i></a>
        <a> <img src="Picture/567a3cdb8bf68.png" width="50" height="38" /> <span>保时捷</span> <i></i></a>
        <a> <img src="Picture/55a4afc65ed32.png" width="50" height="38" /> <span>丰田</span> <i></i></a>
        <a class="last"> <img src="Picture/55a34e9dcd43a.png" width="50" height="38" /> <span>大众</span> <i></i></a> 
        </div>
        <div class="jpCont">
          <div class="jpDl" style="display: block;">
            <ul class="clearfix">
              <li class="clearfix" style="position: relative;"> 
               <a href="javascript:;" target="_blank">
                <div class="carImg left dInline"> 
                  <img src="Picture/56caabd482cc0.jpg-thumb.jpg" width="266" /> 
                </div>
                
                <div class="right carTxt dInline pve">
                  <div class="c-txt">
                    <h3>
                     <a href="javascript:;" target="_blank">奔驰C级 2013 款 1.8T 自动 C260 CGI时尚型</a>
                    </h3>
                    
                    <p>2013-08 |  4.5万公里 | 1.8T | 国四</p>
                    <div class="price">
                      <p>亿金一口价：</p>
                      <i>￥</i> <span class="num nBlue">22.8 </span><font> 万元</font> <font> 省：￥ 18.77 万</font> 
                    </div>
                    
                  </div>
                </div>
                
                </a>
                </li>
                
                <li class="clearfix" style="position: relative;"> <a href="javascript:;" target="_blank">
                <div class="carImg left dInline"> <img src="Picture/56caabd482cc0.jpg-thumb.jpg" width="266" /> </div>
                <div class="right carTxt right dInline pve">
                  <div class="c-txt">
                    <h3><a href="javascript:;" target="_blank">奔驰C级 2013 款 1.8T 自动 C260 CGI时尚型</a></h3>
                    <p>2013-08 |  4.5万公里 | 1.8T | 国四</p>
                    <div class="price">
                      <p>亿金一口价：</p>
                      <i>￥</i> <span class="num nBlue">22.8 </span><font> 万元</font> <font> 省：￥ 18.77 万</font> </div>
                  </div>
                </div>
                </a></li>
                
                <li class="clearfix" style="position: relative;"> <a href="javascript:;" target="_blank">
                <div class="carImg left dInline"> <img src="Picture/56caabd482cc0.jpg-thumb.jpg" width="266" /> </div>
                <div class="right carTxt right dInline pve">
                  <div class="c-txt">
                    <h3><a href="javascript:;" target="_blank">奔驰C级 2013 款 1.8T 自动 C260 CGI时尚型</a></h3>
                    <p>2013-08 |  4.5万公里 | 1.8T | 国四</p>
                    <div class="price">
                      <p>亿金一口价：</p>
                      <i>￥</i> <span class="num nBlue">22.8 </span><font> 万元</font> <font> 省：￥ 18.77 万</font> </div>
                  </div>
                </div>
                </a></li>
                
                <li class="clearfix" style="position: relative;"> <a href="javascript:;" target="_blank">
                <div class="carImg left dInline"> <img src="Picture/56caabd482cc0.jpg-thumb.jpg" width="266" /> </div>
                <div class="right carTxt right dInline pve">
                  <div class="c-txt">
                    <h3><a href="javascript:;" target="_blank">奔驰C级 2013 款 1.8T 自动 C260 CGI时尚型</a></h3>
                    <p>2013-08 |  4.5万公里 | 1.8T | 国四</p>
                    <div class="price">
                      <p>亿金一口价：</p>
                      <i>￥</i> <span class="num nBlue">22.8 </span><font> 万元</font> <font> 省：￥ 18.77 万</font> </div>
                  </div>
                </div>
                </a></li>
              
            </ul>
            <div class="proMore"> <a href="Cars/index/channel/2.html" target="_blank">查看更多>></a> </div>
          </div>
          
          <div class="jpDl">
            <ul class="clearfix">
              <li class="clearfix" style="position: relative;"> <a href="javascript:;" target="_blank">
                <div class="carImg left dInline"> <img src="Picture/56caabd482cc0.jpg-thumb.jpg" width="266" /> </div>
                <div class="right carTxt right dInline pve">
                  <div class="c-txt">
                    <h3><a href="javascript:;" target="_blank">奔驰C级 2013 款 1.8T 自动 C260 CGI时尚型</a></h3>
                    <p>2013-08 |  4.5万公里 | 1.8T | 国四</p>
                    <div class="price">
                      <p>亿金一口价：</p>
                      <i>￥</i> <span class="num nBlue">22.8 </span><font> 万元</font> <font> 省：￥ 18.77 万</font> </div>
                  </div>
                </div>
                </a></li>
                
                <li class="clearfix" style="position: relative;"> <a href="javascript:;" target="_blank">
                <div class="carImg left dInline"> <img src="Picture/56caabd482cc0.jpg-thumb.jpg" width="266" /> </div>
                <div class="right carTxt right dInline pve">
                  <div class="c-txt">
                    <h3><a href="javascript:;" target="_blank">奔驰C级 2013 款 1.8T 自动 C260 CGI时尚型</a></h3>
                    <p>2013-08 |  4.5万公里 | 1.8T | 国四</p>
                    <div class="price">
                      <p>亿金一口价：</p>
                      <i>￥</i> <span class="num nBlue">22.8 </span><font> 万元</font> <font> 省：￥ 18.77 万</font> </div>
                  </div>
                </div>
                </a></li>
                
             
              
            </ul>
            <div class="proMore"> <a href="Cars/index/channel/2.html" target="_blank">查看更多>></a> </div>
          </div>
         

        </div>
      </div>
    </div>
  </div>
  <div class="mDiv">
    <div class="wrap">
      <div class="in-tit clearfix">
        <h1 class="left dInline"> 亿金榜单 </h1>
      </div>
      <div class="bdBox clearfix">
        <div class="left dLeft dInline">
          <ul class="clearfix">
            <li><a href="javascript:;"  target="_blank"> <img src="Picture/55d2c89756ef2.jpg" /></a></li>
            <li><a href="javascript:;"  target="_blank"> <img src="Picture/55d2c8be18345.jpg" /></a></li>
            <li><a href="javascript:;"  target="_blank"> <img src="Picture/55d2c8d1f2f42.jpg" /></a></li>
            <li><a href="javascript:;"  target="_blank"> <img src="Picture/55d2c8e954f6f.jpg" /></a></li>
          </ul>
        </div>
        <div class="left dRight dInline">
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
                <td><select class="Smakeid" name="makeid"  id="" placeholder="所属品牌">
                    <option value=""> 选择品牌（必选）</option>
                    <option value="9" > A 奥迪</option>
                    <option value="92" > A 阿尔法·罗密欧</option>
                    <option value="97" > A 阿斯顿·马丁</option>
                    
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
                      <img id="yzcode" width="100" height="42" alt="点击切换" > </li>
                  </ul>
                  <div class="login-button">
                    <input type="button"  value="立即提交" class="fM" onclick="sendtosend()" style="line-height:20px" />
                  </div>
                </form>
              </div>
              <a class="closed">×</a> </div>
          </div>
          <input type="hidden" id="ckmobile" value="1" />
          
        </div>
      </div>
    </div>
  </div>
  <div class="mDiv main-a">
    <div class="wrap">
      <div class="in-tit clearfix">
        <h1 class="left dInline"> 亿金新闻 </h1>
      </div>
      <div class="in-news clearfix">
        <div class="new-left dInline left">
          <h3>动态</h3>
          <div class="clearfix">
            <div class="new-dl left dInline"> <a href="javascript:;" class='aImg'><img src="Picture/56ca7a0e6d9c4.jpg"  width='262' height='170' /></a>
              <ul>
                <li>·<a href="javascript:;">【亿金名车】抬头猜灯谜，低头拆红包，一大...</a></li>
                <li>·<a href="javascript:;">闹元宵，猜灯谜，亿金名车邀您来抢现金红包...</a></li>
                <li>·<a href="javascript:;">金猴欢跃报春至，亿金名车开门红</a></li>
                <li>·<a href="javascript:;">亿金名车广场祝全国人民新春快乐，猴年大吉...</a></li>
                <li>·<a href="javascript:;">亿金名车再次被省商务厅等18部门评为“诚信...</a></li>
              </ul>
              <a style="float:right" href="javascript:;" target="_blank">更多>></a> </div>
            <div class="new-dl right dInline"> <a href="javascript:;" class='aImg'><img src="Picture/56b0235b6e66e.jpg"  width='262' height='170' /></a>
              <ul>
                <li>·<a href="javascript:;">过年啦！亿金名车广场为全体员工发放年货福...</a></li>
                <li>·<a href="javascript:;">嗨翻了！亿金名车广场圣诞狂欢夜火热举办！</a></li>
                <li>·<a href="javascript:;">冬至到，饺子俏：亿金名车暖意融融过冬至！</a></li>
                <li>·<a href="javascript:;">售后部首届技术比武大赛</a></li>
                <li>·<a href="javascript:;">亿金售后部9月微笑之星、技术之星、服务之...</a></li>
              </ul>
              <a style="float:right" href="javascript:;" target="_blank">更多>></a> </div>
          </div>
        </div>
        
        <div class="nKe left dInline">
          <div class="kTit">
            <h2>客户留言</h2>
          </div>
          <div class="slide">
            <div class="hd"> <a class="prev"><img src="Picture/in_l.jpg"/></a>
              <ul>
                <li>1</li>
                <li>2</li>
                <li>3</li>
              </ul>
              <a class="next"><img src="Picture/in_r.jpg"/></a></div>
            <div class="bd">
              <ul>
                <li class="clearfix">
                  <div class="bd-dl"> <a href="javascript:;" class="aImg"> <img src="Picture/5631c2b4596bc.jpg" width="242" height="170" /> </a>
                    <h4>当漂移车手  遇见限量A8</h4>
                    <p>今年夏天亿金名车广场的明星车辆、全省唯一一辆橙色奥迪A8L，他的买家是一位身份特殊的勇士，一位知名的专业漂移赛车手，有“河南</p>
                    <div align="right"> <a href="javascript:;" class="cMore">查看详情</a> </div>
                  </div>
                  
                  <div class="bd-dl"> <a href="javascript:;" class="aImg"> <img src="Picture/5631c24f293bb.jpg" width="242" height="170" /> </a>
                    <h4>青藏川藏   曲水流觞</h4>
                    <p>在亿金2年的发展历程中，与很多朋友结下了缘分，这些朋友大多成为了我们的车主和会员，他们有着不同的人生经历，用各自的方式追寻着</p>
                    <div align="right"> <a href="javascript:;" class="cMore">查看详情</a> </div>
                  </div>
                </li>
                
                <li class="clearfix">
                  <div class="bd-dl"> <a href="javascript:;" class="aImg"> <img src="Picture/5631c2b4596bc.jpg" width="242" height="170" /> </a>
                    <h4>当漂移车手  遇见限量A8</h4>
                    <p>今年夏天亿金名车广场的明星车辆、全省唯一一辆橙色奥迪A8L，他的买家是一位身份特殊的勇士，一位知名的专业漂移赛车手，有“河南</p>
                    <div align="right"> <a href="javascript:;" class="cMore">查看详情</a> </div>
                  </div>
                  
                  
                </li>
                
                <li class="clearfix">
                  <div class="bd-dl"> <a href="javascript:;" class="aImg"> <img src="Picture/5631c2b4596bc.jpg" width="242" height="170" /> </a>
                    <h4>当漂移车手  遇见限量A8</h4>
                    <p>今年夏天亿金名车广场的明星车辆、全省唯一一辆橙色奥迪A8L，他的买家是一位身份特殊的勇士，一位知名的专业漂移赛车手，有“河南</p>
                    <div align="right"> <a href="javascript:;" class="cMore">查看详情</a> </div>
                  </div>
                  
                  <div class="bd-dl"> <a href="javascript:;" class="aImg"> <img src="Picture/5631c24f293bb.jpg" width="242" height="170" /> </a>
                    <h4>青藏川藏   曲水流觞</h4>
                    <p>在亿金2年的发展历程中，与很多朋友结下了缘分，这些朋友大多成为了我们的车主和会员，他们有着不同的人生经历，用各自的方式追寻着</p>
                    <div align="right"> <a href="javascript:;" class="cMore">查看详情</a> </div>
                  </div>
                </li>
               
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<!--底部的开始-->
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
          <li><a href="javascript:;">中原文化</a></li>
          <li><a href="javascript:;">立天下</a></li>
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
<!--底部的结束-->

<!--右侧内容的开始-->
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
					<a href="javascript:;" class="mini-fav">立即对比</a>
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

<!--右侧内容的结束-->

<!--会员登录和注册弹出框开始-->
<div id="popBox">
  <div class="popCont"> <a class="p_closed">关闭</a>
    <div class="p-tab"> <a>会员登录<i></i></a><a>会员注册<i></i></a> </div>
    <div class="p-detail">
      <div class="p-dl">
        <form class="registForm"  method="pos">
          <ul class="login-items">
            <li class="clearfix">
              <input class="input" name="phone" id="mobilet" type="text" placeholder="手机号码（登录帐号）">
            </li>
            <li class="clearfix">
              <input class="input left" type="text" value="" id="verificationcode" name="verify" placeholder="输入验证码" style="width:100px;" />
              <div id="send" class="verificationcode"><a href="" class="send_code right" id="verificationcoded">获取验证码</a></div>
            </li>
          </ul>
          <div class="login-button">
            <input type="hidden" value="" name="carid" class="ordercarid" />
            <input type="hidden" value="" name="carstatus" class="orderstatus" />
            <input type="button"  value="立即登陆" id="FM" />
          </div>
        </form>
      </div>
      <div class="p-dl">
        <form class="registForm" onsubmit="return regcheck();" enctype="multipart/form-data" method="post" name="reg" id="reg">
          <ul class="login-items">
            <li class="clearfix">
              <input class="input" name="phonea" id="phonea" type="text" value="" placeholder="手机号码（登录帐号）">
            </li>
            <li class="clearfix">
              <input class="input left" type="text" value=""  name="verify" placeholder="输入验证码" style="width:100px;" />
              <div id="send"><a href="" class="send_code right" id="verificationcodetwo">获取验证码</a></div>
            </li>
              <input id=" " class="input" type="password" name="password" value="" placeholder="输入密码（六位字符）">
          </ul>
          <div class="login-check">

          </div>
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
<!--会员登录和注册弹出框结束-->


<script type="text/javascript" src="Scripts/jquery.superslide.2.1.1.js"></script> 
<script type="text/javascript" src="Scripts/index.js"></script> 
<!--右侧滑动-->
<script type="text/javascript" src="Scripts/minibar.js"></script>
<script type="text/javascript" src="Scripts/lg_reg.js"></script>

<script type="text/javascript">
$(function(){
    var a;
    $("#verificationcoded").click(function(){
        alert("验证码已发送");
            $.ajax({
                url:'login/login',
                type:'post',
                data:{
                    phone:$("#mobilet").val()
                },
                success:function(data){
                    a=data;
                    alert(a);
                }
            });
    })

    $("#verificationcodetwo").click(function(){
        alert("验证码已发送");
        alert($("#phonea").val());
        $.ajax({
            url:'login/login',
            type:'post',
            data:{
                phone:$("#phonea").val()
            },
            success:function(data){
                a=data;
            }
        });
    })

  $("#FM").click(function(){
          if($("#verificationcode").val()==a){
              $.ajax({
                  url:'login/disembark',
                  type:'post',
                  data:{
                      phone:$("#mobilet").val()
                  },
                  success:function(data){
                      if(data>0){
                          alert("登陆成功");
                          window.location.href="login/selall";
                      }else{
                          alert("登陆失败");
                      }
                  }
              });
          }else{
              alert("请输入正确的验证码");
          }
  })
})
</script>
</body>
</html>