<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="shopping.*"%>

<%

String username=request.getParameter("Name");
String password=request.getParameter("Password");
String email=request.getParameter("Email");




if(connect.register_check(username,password,email))
{
out.print(1);
}
else
{
out.print(0);
}

 %>


