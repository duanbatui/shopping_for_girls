<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="shopping.*"%>

<%

String username=request.getParameter("Name");
String password=request.getParameter("Password");

if(connect.login_check(username,password))

{
out.print(1);
session.setAttribute("user",username);


}
else
{
out.print(0);
}

 %>


