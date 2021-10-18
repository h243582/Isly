<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="org.example.pojo.Destination" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>订单支付</title>
	<link rel="icon" href="<%=request.getContextPath() %>/assets/image/favicon.ico" type="image/x-icon">

<style type="text/css">
	.mainD{
		width: 90%;
		height: 400px;
		margin: 0 auto;
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
</head>
<body style="background-color: #B2E0DF">
	<%	Destination tmp= (Destination) request.getAttribute("Detail"); 
		Object flag=(Object)session.getAttribute("Vip"); 
		int vip=0;
		if(flag!=null){
			vip=(int)flag;
		}
	%>
	<%@ include file="header.jsp" %>
	<div style="margin-top: 100px"></div>
	
	<div class="mainD">
	<% if(tmp!=null){%>
	<form action="/Pay" method="Post">
		<div class="leftimg">
			<img class="imgsize" src="<%=tmp.getSrc() %>">
			<input value="<%=tmp.getSrc()%>" hidden="hidden" name="src">
		</div>
		<div class="middle">
			<dl class="dlt">
				<dd>
					<font  style=" color: green; font-size: 30px;"><%=tmp.getName()%></font>
				</dd>
				<dd>
					<input name="desid" id="desid" hidden="hidden" value="<%=tmp.getDesid() %>" type="text">
				</dd>
				<dd>
					<font style="font-size: 16px;"><%=tmp.getType()%></font>
				</dd>
				<dd>
					<font  style="font-size: 16px;"><%=tmp.getDesname()%></font>
				</dd>
				<dd>
					<font style="font-size: 16px;"><%=tmp.getDetail() %></font>
				</dd>
				<dd>
					<font style="font-size: 16px;">单价：</font>
					<font style="font-size: 16px;" id="price" ><%=tmp.getPrice()%></font>
					<font style="font-size: 16px;">/人</font>
				</dd>
				<dd>
					<font style="font-size: 16px;color: red"><%=vip==0?"无折扣":"九折优惠" %></font>
				</dd>
			</dl>
			<div class="price">
				<input hidden="hidden" id="vip" value="<%=vip==0?1.0:0.9 %>">
				<font style="color: green;font-size: 30px;"  id="tprice"><%=tmp.getPrice()%></font>
				<font style="color: green;font-size: 10px;">/元</font>
			</div>
			<br><br><br>
			<div style="float: right;margin-right: 50px;">
				人数：
				<button  class="s"  onclick="sub()" type="button">-</button>
				<input style="width: 25px;height: 25px;" value="1" id="number" name="number" readonly="readonly" type="text">
				<button class="r" onclick="add()" type="button">+</button>
			</div>
			<div style="float:left;width: 100px;height: 100px;margin-left: 50px;">
				<font style="font-size: 16px;">出发日期：</font><br>
				<input type="date" id="date" name="date">
			</div>
			<br><br><br>
			<%if(session.getAttribute("UserName")==null){ %>
			<div>
				<a id="login" href="/toLogin">去登录</a>
			</div>
			<%}else{ %>
			<div>
				<button class="py" id="pay" onmouseover="check()" type="submit">支付</button>
			</div>
			<%} %>
			</div>
			</form>
		
	<%
		}
	%></div>
	<%@ include file="footer.jsp" %>
	<script type="text/javascript">
		function add() {
			var n=document.getElementById("number").value;
			var tmp=parseInt(n);
			var price=parseFloat(document.getElementById("price").innerText);
			var vip=parseFloat(document.getElementById("vip").value);
			tmp+=1;
			n=tmp+'';
			document.getElementById("number").value=n;
			var p=document.getElementById("tprice");
			var k=vip*tmp*price+"";
			var list=k.split(".");
			if(list.length>1&&list[1].length>2){
				k=k.substr(0,list[0].length+3);
			}
			p.innerText=k;
		}
		function sub() {
			var n=document.getElementById("number").value;
			var tmp=parseInt(n);
			var price=parseFloat(document.getElementById("price").innerText);
			var vip=parseFloat(document.getElementById("vip").value);
			if(tmp>1)
				tmp-=1;
			n=tmp+"";
			document.getElementById("number").value=n;
			var p=document.getElementById("tprice");
			var k=vip*tmp*price+"";
			var list=k.split(".");
			if(list.length>1&&list[1].length>2){
				k=k.substr(0,list[0].length+3);
			}
			p.innerText=k;
		}
		function check() {
			var daten=DateToString();
			var dates=document.getElementById("date").value;
			if(dates==""){
				alert("请选择出发日期");
				return;
			}
			else if(daten>=dates){
				alert("请选择今天以后的日期");
				return;
			}
		}
		function DateToString() {
			var year = new Date().getFullYear(); 
            var month = new Date().getMonth() + 1;
            var day = new Date().getDate();
            if (month < 10) {
                month = "0" + month;
            }
            if (day < 10) {
                day = "0" + day;
            }
			var dateString =  year + "-" + month + "-" + day;
			return dateString;
		}
	</script>
</body>
</html>