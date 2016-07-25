<%@ page language="java" import="java.util.*,java.util.ArrayList,shopping.*;" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
    <title>商品</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<link href="../css/style1.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery.js"></script>
<script src="../js/jquery.masonry.min.js"></script>
<script>
  $(function(){
    
    var $waterfall = $('#waterfall');
    
    $waterfall.masonry({
      columnWidth: 230
    });
    
  });
</script>
<script type="text/javascript">
$(document).ready(function(){	
	$(".zoom,.ilike").hide();

	$(".zoom").each(function(){//遍历所有对象
	var src=$(this).siblings("img").attr("src");
		$(this).attr({href:src});
	});
	
	$("#nav li").click(function(){
		$("#nav a").removeClass("hover");
		$(this).find("a").addClass("hover");
	});
	
	$("#waterfall li").mouseover(function(){
		$(this).addClass("hover");
		$(this).find(".zoom,.ilike").show();
	});
	
	$("#waterfall li").mouseout(function(){
		$(this).removeClass("hover");
		$(this).find(".zoom,.ilike").hide();
	});
});
</script>
  </head>
  

   <%
   
   ArrayList<String> productions=new ArrayList<String>();
   productions=(ArrayList<String>)session.getAttribute("productions_search");

 
   
    %>
  
  


<body>

<div id="main">
	<ul id="waterfall">
    	
 
		
	<% 
		
		for(int i=0;i<productions.size();i++)
  {
  String production[]=new String[3];
production=connect.production_query("productions",productions.get(i));

 out.println("<li>");
 
   out.println("<a href='production.jsp?url="+production[0]+"' target='_blank'><div class='img_block'><img src='../images/index/"+production[0]+".jpg'/></div><h3>"+production[0]+"</h3><p>"+production[2]+"</p></a>");

 out.println("</li>"); 
 
  }
 %>
    </ul>
  
  
  
  </body>
</html>
