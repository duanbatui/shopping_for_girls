<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<head>
<link href="../bootstrap/dist/css/bootstrap.css" rel="stylesheet" />
<script type="text/javascript" src="../js/jquery.js"></script>
<style type="text/css">
*{
	
	margin:0;
	padding:0;
	}
	#frame
	{
		
		position:relative;}
#bg
{
	
	width:600px;
	height:545px;
	margin:200px 180px;
	position:absolute;

	

	}
#login
{
	position:absolute;
	width:300px;
	height:320px;
	margin:250px 1000px;
	overflow:hidden;
	
	text-align:center;

	}
</style>
<title>
美女人购物
</title>
</head>

<body >
<div id="fram">
<div id="bg">
<img src="../images/Login/bg.jpg"/>

</div>

<div id="login">
<img src="../images/Login/login.gif"/>
<div class="input-group">
  <span class="input-group-addon">账号</span>
  <input id="login_user" type="text" class="form-control" placeholder="Username">
</div>
<br/>
<div class="input-group">
  <span class="input-group-addon">密码</span>
  <input id="login_password" type="password" class="form-control" placeholder="password">
</div>
<br/>
<button type="button" onclick="login_check()" class="btn btn-primary">&nbsp;&nbsp;登录&nbsp;&nbsp;</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button type="button" class="btn btn-primary" onclick="javascript:location.href='register.jsp'">&nbsp;&nbsp;注册&nbsp;&nbsp;</button>

</div>

</div>
</body>
<script language="javascript">
function login_check()
{

var name=$("#login_user").val();
var password=$("#login_password").val();

var Name,Password;
$.post("login_check.jsp",{Name:name,Password:password},function(data){
  
   if(data==1)
   {
  
    window.location.href="index.jsp"; 
 }
 else
 {

 alert("账号或密码错误");

 }
 });


return true;

}

</script>
</html>