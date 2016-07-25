<%@ page language="java" import="java.util.*,shopping.*" pageEncoding="UTF-8"%>

<%
String url=request.getParameter("url");
String production[]=new String[3];
 %>
<%

production=connect.production_query("productions",url);




 %>


<html>
  <head>
    
    <script language="javascript">
     function alert_show()
{
$("#alert").css("display","block");
$("#alert").animate({top:"50%"},200);
$("#alert").animate({top:"30%"},100);



}
function close_div()
{
$("#alert").css("display","none");
$("#alert").css("top","20%");


}
    function add()
    {
    $("#pro_number").attr("value",parseInt($("#pro_number").attr("value"))+1);
    }
    function sub()
    {
    if(parseInt($("#pro_number").attr("value"))>1)
    $("#pro_number").attr("value",parseInt($("#pro_number").attr("value"))-1); 
    
    }
    function go_shoppingCar()
    {
  var pro_number=parseInt($("#pro_number").attr("value"));//数量
var name,number,money;
 var pro_name="<%=production[0]%>";//商品名称
 var pro_money="<%=production[1]%>";
$.post("shopping_car.jsp",{name:pro_name,number:pro_number,money:pro_money},function(data){
 
 alert_show(); 
 
 });
 

 }

    
    </script>
    <title>商品展示区</title>
<link rel="stylesheet" href="../css/productions.css"/>
<link rel="stylesheet" href="../css/index.css"/>
<link rel="stylesheet" href="../bootstrap/dist/css/bootstrap.css"/>
<script language="javascript" src="../js/jquery.js"></script>
<script language="javascript" src="../js/index.js"></script>

	

  </head>
  
  <body>
  <div id="head">
<div id="hnav">

<ul id="left_nav">

<li title="unactive" ><div ><a href="index.jsp" title="主页" >
<p><span class="glyphicon glyphicon-home"></span></p>
<p><span>主页</span><p>
</a></div></li>

<li title="unactive"><div><a onclick="goshangpin()" href="#" title="商品分类">
<p><span class="glyphicon glyphicon-gift"></span></p>
<p><span>商品分类</span></p></a></div></li>

<li title="unactive"><div><a href="shopping_car.jsp" title="购物车">
<p><span class="glyphicon glyphicon-shopping-cart" ></span></p>
<p><span>购物车</span></p></a></div></li>

<li id="pro_nav" title="unactive"><div id="fenlei"><a href="#" title="分类导航">
<p><span class="glyphicon glyphicon-th" ><p></span>
<p><span>分类导航</span><span class="glyphicon glyphicon-chevron-down"></span><p></a></div></li>

</ul>

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




 <div id="production_show">
<div id="show_left">
<img src="../images/index/<%=url%>.jpg" />

</div>
<div id="show_right">
<table class="table">
<tr><td>商品名称：</td><td><%=production[0] %></td></tr>
<tr><td>商品价格：</td><td><%=production[1] %>元</td></tr>
<tr><td>商品简介：</td><td><%=production[2] %></td></tr>
<tr><td><button onclick="sub()" class="btn btn-mini btn-primary" style="border-width:0.5px">-</button><input type="text" id="pro_number" value="1" style="width:38px; height:30px; text-align:center;"/><button class="btn btn-mini btn-primary" onclick="add()" style="border-width:0.5px">+</button></td><td><button onclick="go_shoppingCar()" value="加入购物车" class="btn btn-success">加入购物车</button>
</td></tr>
</table>

</div> 
 
 </div>
 <div id="alert" style="text-align:center;line-height:200px;background:#CCCCCC;width:500px;height:200px;position:fixed;top:20%;left:30%;z-index:100;display:none;">

 商品已成功添加到购物车.
<button type="button" class="btn btn-primary" onclick="close_div()">Close</button>
 </div>

 
 
  </body>
</html>
