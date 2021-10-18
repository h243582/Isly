<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
	button:hover {
		background-color: #FF6A00;
		color: white;
		font-size: +2;
		font-weight: bold;
	}
</style>
	<link rel="icon" href="<%=request.getContextPath() %>/assets/image/favicon.ico" type="image/x-icon">
</head>
<body style="background-color: #B2E0DF;">
	<%	Object flag=(Object)session.getAttribute("Vip"); 
		int vip=0;
		if(flag!=null){
			vip=(int)flag;
		}
	%>
	<div style="width: 800px;height: 450px;margin: 0 auto;">
		<div style="width: 200px;height: 200px;margin-left: 50px;margin-top: 50px;">
			<img src="<%=request.getContextPath() %>/image/vip.jpg" style="width: 200px;height: 200px;">
		</div><br>
		<div style="margin-top: 20px;">
			<h1 style="display: inline;">开通Vip尊享</h1><h1 style="color: red;display: inline;">9</h1>
			<h1 style="display: inline;">折优惠</h1>
			<%if(vip==0){ %>
			<form action="/Vip" method="post" style="margin-top: 20px;">
				<button style="height: 40px;width: 100px;margin-left: 200px;" type="submit">开通</button>
			</form>
			<%}else{%>
				<form>
					<button style="height: 40px;width: 100px;margin-left: 200px;" type="button">已开通</button>
				</form>
			<%} %>
		</div>
	</div>
</body>
</html>