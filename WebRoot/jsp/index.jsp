<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>
美女人购物
</title>
<link rel="stylesheet" href="../bootstrap/dist/css/bootstrap.css"/>
<link rel="stylesheet" type="text/css" href="../css/style.css"/>
<link rel="stylesheet" type="text/css" href="../css/index.css"/>
<script language="javascript" src="../js/jquery.js"></script>
<script language="javascript" src="../js/index.js"></script>


</head>
<body>
<div id="head">
<div id="hnav">

<ul id="left_nav">

<li title="unactive" class="while"><div ><a href="#" title="主页" >
<p><span class="glyphicon glyphicon-home"></span></p>
<p><span>主页</span><p>
</a></div></li>

<li title="unactive" class="while"><div><a onclick="goshangpin()" href="#" title="商品分类">
<p><span class="glyphicon glyphicon-gift"></span></p>
<p><span>商品分类</span></p></a></div></li>

<li title="unactive" class="while"><div><a href="shopping_car.jsp" title="购物车">
<p><span class="glyphicon glyphicon-shopping-cart" ></span></p>
<p><span>购物车</span></p></a></div></li>

<li id="pro_nav" title="unactive" class="while"><div id="fenlei"><a href="#" title="分类导航">
<p><span class="glyphicon glyphicon-th" ><p></span>
<p><span>分类导航</span><span class="glyphicon glyphicon-chevron-down"></span><p></a></div></li>
<li><input type="text" id="search" name="search" class="input-lg form-control" placeholder="Search" ></li>
<li><buttuon class="input-lg btn btn-primary" onclick="search()" style="line-height:30px;">搜索</buttuon></li>
</ul>


<ul id="right_nav">
<% 
if(session.getAttribute("user")!=null)
{


out.println("<li><a href='#' onclick='logout()' title='登录'><font>退出登录</font></a></li>");
out.println("<li><font color='red' size='5px'>"+session.getAttribute("user")+"</font></li>");
}
else
{
out.println("<li><a href='login.jsp' title='登录'><font>请登录</font></a></li>");
}
%>
<li><a href="register.jsp" title="注册"><font>注册账号</font></a></li>



</ul><!---->
</div>

</div>
<!-- 主体内容部分-->
<div id="body">
<span></span>
<div class="focus" id="focus">
	<div class="left">
		<ul>
			<li class="active" style="opacity:1; filter:alpha(opacity=100);"><p>图一</p><img src="../images/index/1.jpg"/></li>
			<li><p>图二</p><img src="../images/index/2.jpg"/></li>
			<li><p>图三</p><img src="../images/index/3.jpg"/></li>
			<li><p>图四</p><img src="../images/index/4.jpg"/></li>
		</ul>
	</div>
	<div class="right">
		<ul>
			<li class="active"><i class="i1"></i>冬装大衣</li>
			<li><i class="i2"></i>清凉小夏</li>
			<li><i class="i3"></i>秋衣</li>
			<li><i class="i4"></i>性感女装</li>
		</ul>
	</div>
</div>	


</div>
<div style="width:1000px;height:420px;position:relative;margin:0 auto;">
<div id="production">
<ul>

<li>
<div class="pro" id="pro_1">
<p><font style="font-family:'华文琥珀'">时尚服装</font></p>
<ul class="pro_ul_1">

<li><a>清凉小夏</a></li>
<li><a>清凉小夏</a></li>
<li><a>清凉小夏</a></li>
<li><a>清凉小夏</a></li>
<li><a>秋衣服装</a></li>
<li><a>秋衣服装</a></li>
<li><a>秋衣服装</a></li>
<li><a>秋衣服装</a></li>
<li><a>秋衣服装</a></li>

</ul>
</div>
</li>

<li><div class="pro" id="pro_2">
<p><font style="font-family:''华文琥珀'">化妆品</font></p>
<ul class="pro_ul_1">

<li><a href="production.html">清凉小夏</a></li>
<li><a>清凉小夏</a></li>
<li><a>清凉小夏</a></li>
<li><a>清凉小夏</a></li>
<li><a>秋衣服装</a></li>
<li><a>秋衣服装</a></li>
<li><a>秋衣服装</a></li>
<li><a>秋衣服装</a></li>
<li><a>秋衣服装</a></li>

</ul>

</div></li>

<li><div class="pro" id="pro_3">
<p><font style="font-family:''华文琥珀'">美容护肤</font></p>
<ul class="pro_ul_1">

<li><a>清凉小夏</a></li>
<li><a>清凉小夏</a></li>
<li><a>清凉小夏</a></li>
<li><a>清凉小夏</a></li>
<li><a>秋衣服装</a></li>
<li><a>秋衣服装</a></li>
<li><a>秋衣服装</a></li>
<li><a>秋衣服装</a></li>
<li><a>秋衣服装</a></li>

</ul>
</div></li>

</ul>
</div>
<div>
<div id="production_introduce">
<div id="introduce_left" >
<ul class="nav nav-pills" role="tablist">
  <li role="presentation" class="active" title="clothes"><a >时尚服装</a></li>
  <li role="presentation" title="huazhuang"><a >化妆品</a></li>
  <li role="presentation" title="meirong"><a >美容护肤</a></li>
</ul>
</div>
<div id="introduce_right">
<div id="clothes">
<ul>
<li><a href="production.jsp?url=fuzhuang1" target="_blank"><img src="../images/index/fuzhuang1.jpg"/><p>迷你彩色装</p></a></li>
<li><a href="production.jsp?url=fuzhuang2" target="_blank"><img src="../images/index/fuzhuang2.jpg"/><p>深紫男爵</p></a></li>
<li><a href="production.jsp?url=fuzhuang3" target="_blank"><img src="../images/index/fuzhuang3.jpg"/><p>可爱熊猫装</p></a></li>
<li><a href="production.jsp?url=fuzhuang3" target="_blank"><img src="../images/index/fuzhuang3.jpg"/><p>可爱熊猫装</p></a></li>
<li><a href="production.jsp?url=fuzhuang1" target="_blank"><img src="../images/index/fuzhuang1.jpg"/><p>迷你彩色装</p></a></li>
<li><a href="production.jsp?url=fuzhuang2" target="_blank"><img src="../images/index/fuzhuang2.jpg"/><p>深紫男爵</p></a></li>

</ul>



</div>
<div id="meirong">
<ul>
<li><a href="production.jsp?url=meirong1" target="_blank"><img src="../images/index/meirong1.jpg"/><p>美人珍珠</p></a></li>
<li><a href="production.jsp?url=meirong2" target="_blank"><img src="../images/index/meirong2.jpg"/><p>欧莱护肤</p></a></li>
<li><a href="production.jsp?url=meirong3" target="_blank"><img src="../images/index/meirong3.jpg"/><p>保湿面油</p></a></li>
<li><a href="production.jsp?url=meirong3" target="_blank"><img src="../images/index/meirong3.jpg"/><p>保湿面油</p></a></li>
<li><a href="production.jsp?url=meirong1" target="_blank"><img src="../images/index/meirong1.jpg"/><p>美人珍珠</p></a></li>
<li><a href="production.jsp?url=meirong2" target="_blank"><img src="../images/index/meirong2.jpg"/><p>欧莱护肤</p></a></li>

</ul>
</div>

<div id="huazhuang">
<ul>
<li><a href="production.jsp?url=huazhuang1" target="_blank"><img src="../images/index/huazhuang1.jpg"/><p>韩国生态美容</p></a></li>
<li><a href="production.jsp?url=huazhuang2" target="_blank"><img src="../images/index/huazhuang2.jpg"/><p>SMILE</p></a></li>
<li><a href="production.jsp?url=huazhuang3" target="_blank"><img src="../images/index/huazhuang3.jpg"/><p>底粉</p></a></li>
<li><a href="production.jsp?url=huazhuang3" target="_blank"><img src="../images/index/huazhuang3.jpg"/><p>底粉</p></a></li>
<li><a href="production.jsp?url=huazhuang1" target="_blank"><img src="../images/index/huazhuang1.jpg"/><p>韩国生态美容</p></a></li>
<li><a href="production.jsp?url=huazhuang2" target="_blank"><img src="../images/index/huazhuang2.jpg"/><p>SMILE</p></a></li>

</ul>
</div>




</div>
</div>
<div id="bottom">
<p>&copy;版权归思源公司所有； 总经理：陈思远。 总负责：陈凯。总策划：黄志斌。</p>
<p>站长联系电话：1353502462。客服热线：100548</p>

   <p>
            <a href="//www.pingpinganan.gov.cn/?spm=1.7274553.1997523009.34.OFBfmO" class="mod " data-spm-anchor-id="1.7274553.1997523009.34">
                <img width="36" alt="杭州网警" height="36" src="//img01.taobaocdn.com/tps/i1/T1FeW3XXNfXXXXXXXX-36-36.gif">
              </a>
            <a href="//idinfo.zjaic.gov.cn/bscx.do?spm=1.7274553.1997523009.35.OFBfmO&amp;method=hddoc&amp;id=33018400000067" class="mod mod-a" data-spm-anchor-id="1.7274553.1997523009.35">
              </a>
            <a href="//idinfo.zjaic.gov.cn/bscx.do?spm=1.7274553.1997523009.36.OFBfmO&amp;method=hddoc&amp;id=33018400000067" class="mod mod-b" data-spm-anchor-id="1.7274553.1997523009.36">
              </a>
            <a href="//www.theclimategroup.org.cn/about/friend?spm=1.7274553.1997523009.37.OFBfmO" class="mod mod-c" data-spm-anchor-id="1.7274553.1997523009.37">
              </a>
            <a href="https://ss.knet.cn/verifyseal.dll?spm=1.7274553.1997523009.38.OFBfmO&amp;sn=2010062300100001357&amp;pa=20100701" class="mod mod-d" data-spm-anchor-id="1.7274553.1997523009.38">
              </a>
            <a href="//www.ppaaol.com/verifySite.do?spm=1.7274553.1997523009.39.OFBfmO&amp;id=1051" class="mod mod-e" data-spm-anchor-id="1.7274553.1997523009.39">
              </a>
          
</p>



</div>




	<div id="button">
<img src="../images/index/button.png" onmouseover="this.src='../images/index/button_click.png'" onmouseout="this.src='../images/index/button.png'" onclick="go_top()"/>
</div>


</body>

</html>