<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
	<head>
		
		<title>交易</title>
	
<link href="../bootstrap/dist/css/bootstrap.css" rel="stylesheet" />
		<style type="text/css">
		*{
		margin:0;
		padding:0;
		}
		#frame
		{
		margin:10px auto;
	
		width:400px;
		height:600px;
		text-align:center;
		
		}
		
		
		
		</style>
	</head>
	<body>
		<div id="frame">
		<div id="input">
		<form method="post" action="reqpay.jsp">
		<table class="table">
		
			<tr><td>商家订单号:</td><td><input class="form-control" type="text" name="p2_Order" id="p2_Order" value="<%=120002152%>"/></td></tr>
			<tr><td>支付金额:</td><td><input class="form-control" type="text" name="p3_Amt" id="p3_Amt" value="<%=session.getAttribute("pay_yee") %>" /></td></tr>
			
				<tr><td>交易币种:</td><td><select class="form-control" name="p4_Cur" id="p4_Cur">
					<option value="CNY">人民币
					</option>
				</select>
			</td></tr>
			<tr><td>商品名称:</td><td><input class="form-control" type='hidden'name="p5_Pid" id="p5_Pid"  /><%=session.getAttribute("shopping_yee") %></td></tr>
			<tr><td>商品种类:</td><td><input class="form-control" type='hidden' name="p6_Pcat" id="p6_Pcat"  /><%=session.getAttribute("shopping_yee") %></td></tr>
			<tr><td>商品描述:</td><td><input class="form-control" type='hidden' name="p7_Pdesc" id="p7_Pdesc"  /><%=session.getAttribute("shopping_yee")%></td></tr>
			<tr><td>商户接收支付成功数据的地址:</td><td><input class="form-control"  type="text" name="p8_Url" id="p8_Url" value="<%="callback.jsp" %>"/></td></tr>
			
				<tr><td>是否需要送货地址:</td><td><select class="form-control" name="p9_SAF" id="p9_SAF">
					<option value="0">不需要
					</option>
					<option value="1">需要
					</option>
				</select>
			</td></tr>
			<tr><td>商家扩展信息:</td><td><input class="form-control" type='hidden' name="pa_MP" id="pa_MP"  /><%="美女人购物"%></td></tr>
			<tr><td>银行编码:</td><td><input class="form-control" type="text" name="pd_FrpId" id="pd_FrpId" /></td></tr>
			<tr><td>是否需要应答机制</td><td><select class="form-control" name="pr_NeedResponse" id="pr_NeedResponse">
					<option value="0">不需要</option>
					<option value="1">需要</option>
				</select>
			</td></tr>
			<tr><td colspan="2"><input class="form-control btn btn-success" type="submit" value="结帐" /></td></tr>
			</form>
		</div>
		</div>
	</body>
</html>