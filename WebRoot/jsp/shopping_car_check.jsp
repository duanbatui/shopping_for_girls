<%@ page language="java" import="java.util.*,shopping.*" pageEncoding="UTF-8"%>
<%
String user=request.getParameter("user");
String shopping=request.getParameter("shopping");
String pay=request.getParameter("pay");
String time=request.getParameter("time");
connect.pay_shopping(user,shopping,pay,time);
 %>
