<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@ page import="shopping.*,java.sql.RowId"%>
<%
String username=request.getParameter("login");
String password=request.getParameter("password");
if(!(connect.login_check(username,password)&&username.equals("admin")))
{
out.print("<script>window.location.href='admin_login.jsp'</script>");
}

%>


<html>
<head>
<title>美女人购物网站——后台管理</title>
<link rel="stylesheet" href="../bootstrap/dist/css/bootstrap.css"/>
<script language="javascript" src="../js/jquery.js"></script>
<style type="text/css">
#fram
{

width:800px;
margin:0 auto;
height:1000px;
text-align:center;
}

</style>
<script language="javascript">
function add_value()
{

alert(1);


}


function choose(table)
{
var tags=document.getElementsByTagName("li");
for(var i=0;i<tags.length;i++)
{
tags[i].setAttribute("class","");
}
table.setAttribute("class","active");
var query=table.getAttribute("value");
var tables=document.getElementsByName("tables");
for(var i=0;i<tables.length;i++)
{
tables[i].style.display="none";
}
document.getElementById(query).style.display="block";


}




</script>


</head>
<div id="fram" >
<div id="head_nav">
<ul class="nav nav-tabs" role="tablist">
  <li role="presentation" onclick="choose(this)" value="user" class="active"><a href="#">用户管理</a></li>
  <li role="presentation" onclick="choose(this)" value="productions"><a href="#">商品管理</a></li>
  <li role="presentation" onclick="choose(this)" value="dingdan"><a href="#">订单管理</a></li>
</ul>

</div>
<div id="user" style="display:block;" name="tables">
<table class="table">
<% 

ResultSet rs;
rs=connect.show_data("user");
out.println("<tr><td>用户名</td><td>密码</td><td>邮箱</td></tr>");

while(rs.next())
{
out.println("<tr><td>"+rs.getString("username")+"</td><td>"+rs.getString("password")+"</td><td>"+rs.getString("email")+"</td></tr>");


}
%>
<tr><td><input type="text" class="form-control" /></td>
<td><input type="text" class="form-control"/></td>
<td><input type="text" class="form-control"/></td></tr>
</table>
</div>



<div id="productions" style="display:none;" name="tables">
<table class="table">
<% 


rs=connect.show_data("productions");
out.println("<tr><td>商品ID</td><td>商品名</td><td>商品价格</td><td>商品介绍</td></tr>");


while(rs.next())
{
out.println("<tr><td>"+rs.getString("ID")+"</td><td>"+rs.getString("name")+"</td><td>"+rs.getString("money")+"</td><td>"+rs.getString("introduce")+"</td></tr>");


}
%>
<tr><td><input type="text" class="form-control"/></td>
<td><input type="text" class="form-control"/></td>
<td><input type="text" class="form-control"/></td>
<td><input type="text" class="form-control"/></td></tr>
</table>


</div>

<div id="dingdan" style="display:none;" name="tables">
<table class="table">
<% 


rs=connect.show_data("dingdan");
out.println("<tr><td>用户</td><td>交易记录</td><td>支付额</td><td>时间</td></tr>");


while(rs.next())
{
out.println("<tr><td>"+rs.getString("user")+"</td><td>"+rs.getString("shopping")+"</td><td>"+rs.getString("pay")+"</td><td>"+rs.getString("time")+"</td></tr>");


}
%>
<tr><td><input type="text" class="form-control"/></td>
<td><input type="text" class="form-control"/></td>
<td><input type="text" class="form-control"/></td>
<td><input type="text" class="form-control"/></td></tr>
</table>


</div>


<!-- 
<input type="utton" class="btn btn-success" value="添加记录"/>
 -->
<body>




</body>


</html>

