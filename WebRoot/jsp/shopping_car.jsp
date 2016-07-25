<%@ page language="java" import="java.util.*,shopping.*" pageEncoding="UTF-8"%>
<%--<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
--%>
<%
if(request.getParameter("Pro_id")!=null)
{

persion_session.getProductions_number().set(Integer.parseInt(request.getParameter("Pro_id")),request.getParameter("new_number"));

}

if(request.getParameter("name")!=null||request.getParameter("number")!=null)
{


session.setAttribute("car_proName",request.getParameter("name"));
session.setAttribute("car_proNumber",request.getParameter("number"));
session.setAttribute("car_proMoney",request.getParameter("money"));


persion_session.add_car_name((String)session.getAttribute("car_proName"));
persion_session.add_car_number((String)session.getAttribute("car_proNumber"));
persion_session.add_car_Money((String)session.getAttribute("car_proMoney"));
}



 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <script language="javascript" src="../js/jquery.js"></script>
    
    <script language="javascript">
    <% int pay=0;String shopping="";
    for(int i=0;i<persion_session.getProductions_name().size();i++)
    {
     shopping+="商品:"+persion_session.getProductions_name().get(i)+"数量:"+persion_session.getProductions_number().get(i);
   // String pay=persion_session.getProductions_Money()
  
   pay+=(Integer.parseInt(persion_session.getProductions_Money().get(i))*Integer.parseInt(persion_session.getProductions_number().get(i)));
    
    
    }
    session.setAttribute("pay_yee",pay);
    session.setAttribute("shopping_yee",shopping);

    %>
    
function pay()
{
//window.open("pay.jsp");
var user,shopping,money,time;//shopping=shopping_name+number
user="<%=session.getAttribute("user") %>";
shopping="<%=shopping%>";
money=<%=pay%>;
//alert(user);
//alert(user+"/"+shopping+"/"+money);
time=new Date();


$.post("shopping_car_check.jsp",{user:user,shopping:shopping,pay:money,time:time.toLocaleString()},function(data,statu){



		});
window.location.href="pay.jsp";



}
    
    $(document).on('click', '.sub', function() {
//$("#production").slideDown(600);
var number=$(this).next().attr("value");
//alert(number);
if(number>1)
{
var all_money=parseInt($(this).parent().next().children().attr('value'))*(number-1);
$(this).parent().next().children().text(all_money);

$(this).next().attr("value",number-1);


var pro_id=parseInt($(this).attr("name"));//第i个商品
var Pro_id,new_number;
$.post("shopping_car.jsp",{Pro_id:pro_id,new_number:number-1},function(data,statu){
		  //搜索完成后的动作；
			//alert(statu);
		window.location.href="shopping_car.jsp"; 

		});


}
});

    $(document).on('click', '.add', function() {

var number=parseInt($(this).prev().attr("value"));

var all_money=parseInt($(this).parent().next().children().attr('value'))*(number+1);
$(this).parent().next().children().text(all_money);



$(this).prev().attr("value",number+1);
var pro_id=parseInt($(this).attr("name"));//第i个商品
var Pro_id,new_number;
$.post("shopping_car.jsp",{Pro_id:pro_id,new_number:number+1},function(data,statu){
		  //搜索完成后的动作；
			//alert(statu);
			window.location.href="shopping_car.jsp"; 

		});

});

 $(document).on('blur', '.number', function() {
 var number=parseInt($(this).attr("value"));
 var all_money=parseInt($(this).parent().next().children().attr('value'))*(number);
$(this).parent().next().children().text(all_money);



$(this).prev().attr("value",number);

var pro_id=parseInt($(this).next().attr("name"));//第i个商品
var Pro_id,new_number;
$.post("shopping_car.jsp",{Pro_id:pro_id,new_number:number},function(data,statu){
		  //搜索完成后的动作；
			//alert(statu);
			window.location.href="shopping_car.jsp"; 

		});

});

</script>
    <title>我的购物车</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="../bootstrap/dist/css/bootstrap.css">
<style type="text/css">
*{
margin:0;
padding:0;
}
#body
	{
	width:800px;
	height:1000px;
	margin:0 auto;
	position:relative;
		}
</style>

  </head>
  
  <body>
   <div id="body">
   <div style="width:800px;">
   <table class="table">

 <%
 if(session.getAttribute("user")!=null)
 {
 for(int i=0;i<persion_session.getProductions_name().size();i++)
 {
 out.print("<tr><td><img src='../images/index/"+persion_session.getProductions_name().get(i)+".jpg' width='50px' height='50px'/></td><td>商品数量:<button name='"+i+"' class='sub btn btn-mini btn-primary' height='5px' style='border-width:0.5px'>-</button><input  type='text' class='number'  value='"+persion_session.getProductions_number().get(i)+"' style='idth:38px; height:30px; text-align:center;'/><button  name='"+i+"'class='add btn btn-mini btn-primary' style='border-width:0.5px'>+</button></td><td>小计:<font  class='xiaoji' value='"+Integer.parseInt(persion_session.getProductions_Money().get(i))+"'>"+Integer.parseInt(persion_session.getProductions_Money().get(i))*Integer.parseInt(persion_session.getProductions_number().get(i))+"</font>元</td></tr>");
 /*+Integer.parseInt(persion_session.getProductions_Money().get(i))+*/
 
 
 }
 }
  %>
  <%
  
  

  int account=0; for(int i=0;i<persion_session.getProductions_name().size();i++)
  {
  //persion_session.getProductions_number().get(i)
  account+=(Integer.parseInt(persion_session.getProductions_Money().get(i))*Integer.parseInt(persion_session.getProductions_number().get(i)));
  
  } 
  %>
  <tr><td colspan="2" style="text-align:center"><button onclick="pay()" class="btn btn-success">立即支付</button></td><td>合计:<font size="5px" id="account" value='<%=account %>'><%=account%></font>元</td>
  </tr>
</table>
   </div>
   
   </div>
  </body>
</html>
