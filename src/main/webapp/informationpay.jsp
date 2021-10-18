<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.example.pojo.Destination" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>订单支付</title>

<style type="text/css">
	.mainD{
		width: 90%;
		height: 400px;
		margin: 0 auto;
		padding-left: 500px;
	}
	.leftimg{
		width:460px;
		height: 600px;
		float:left;
	}
	.imgsize{
		margin-top:50px;
		width: 450px;
		height: 350px;
	}
	.middle{
		margin-top:50px;
		margin-left: 10px;
		width: 600px;
		height: 600px;
		float:left;
	}
	.s{
		margin-left:80px;
		width: 35px;
		height: 35px;
		font-size: 20px;
		font-style: inherit;
	}
	.r{
		width: 35px;
		height: 35px;
		font-size: 20px;
		font-style: inherit;
	}
	
	.price{
		float: right;
	}
	.py{
		width: 100px;
		height: 40px;
		font-size: 23px;
		font-weight: 2px;
		float: right;
		margin-right: 50px;
		
	}
	.py:hover {
		background-color: #FF6A00;
		color: white;
	}
</style>
	<link rel="icon" href="<%=request.getContextPath() %>/assets/image/favicon.ico" type="image/x-icon">
</head>
<body style="background-color: #B2E0DF">
	<%@ include file="header.jsp" %>
	<div style="margin-top: 100px"></div>
	
	<div class="mainD">
	<form action="Pay" method="post">
		<div class="middle">
			<dl class="dlt">
				<dd>
					<font  style=" color: green; font-size: 30px;">订单信息</font>
				</dd>
				<dd>
					<font style="font-size: 16px;">订单编号：147337483992883838</font>
				</dd>
				<dd>
					<font  style="font-size: 16px;">地点：北京-八达岭</font>
				</dd>
				<dd>
					<font style="font-size: 16px;">路线：故宫博物馆-八达岭长城1日游</font>
				</dd>
				<dd>
					<font style="font-size: 16px;">时间：2021-5-20</font>
				</dd>
				<dd>
					<font style="font-size: 16px;">单价：</font>
					<font style="font-size: 16px;" id="price" >499</font>
					<font style="font-size: 16px;">/人</font>
				</dd>
				<dd>
					<font style="font-size: 16px;color: red">九折优惠</font>
				</dd>
				<dd>
					<font style="font-size: 16px;">人数：1人</font>
				</dd>
				<dd>
					<font style="font-size: 16px;">总价：499</font>
				</dd>
				<dd>
					<font style="font-size: 16px;">折扣价：449</font>
				</dd>
			</dl>
			<br>
			<input type="button" value="取消">           <input style="margin-left: 30px;" type="button" value="确认">
			<br><br><br>
			</div>
			</form>
		
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>