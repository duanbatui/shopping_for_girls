<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="shopping.*"%>
<%
String pro_name=request.getParameter("Search");
//out.print(pro_name);

//String pros[];
ArrayList<String> pro=new ArrayList<String>();
pro=connect.production_search(pro_name);//pro_name是搜索的关键字
//connect.production_search(pro_name);//pro_name是搜索的关键字
session.setAttribute("productions_search",pro);//放入session
 %>