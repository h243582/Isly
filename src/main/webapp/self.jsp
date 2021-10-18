<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	.spans {
		font-size: large;
		font-style: inherit;
		padding-left: 18px;
		padding-right: 10px;
	}
	button:hover {
		font-size: +2px;
		background-color: blue;
		color: white;
	}
</style>
	<link rel="icon" href="<%=request.getContextPath() %>/assets/image/favicon.ico" type="image/x-icon">
</head>
<% String name=(String)session.getAttribute("UserName");
	if(name==null){
		name="";
	}
	String mail=(String) session.getAttribute("mail");
	if(mail==null)
		mail="";
	Object flag=(Object)session.getAttribute("Vip"); 
	int vip=0;
	if(flag!=null){
		vip=(int)flag;
	}
%>
<body style="background-color:  #B2E0DF;">
	<div style="width: 600px;height: 500px;margin-left: 10px;margin-top: 20px;">
		<div style="height: 50px;">
		<form action="/updatename" method="post">
			<span class="spans">我&nbsp;的&nbsp;昵&nbsp;称:</span>
			<input  type="text" name="name" value="<%=name %>" style="width: 140px;font-size: larger;">
			<button type="submit"  style="font-size: large;width: 60px;height: 30px;margin-top: 20px;margin-left: 10px;">修改</button>
			<span class="spans" style="color: red">${NameMessage}</span>
			</form>
		</div>
		<div style="height: 50px;">
			<span class="spans">我&nbsp;的&nbsp;邮&nbsp;箱:</span>
			<span style="font-size: larger;"><%=mail%></span>
		</div>
		<div style="height: 50px;">
			<span class="spans">我&nbsp;的&nbsp;Vip:</span>
			<%if(vip==1){ %>
				<span style="font-size: larger;">已开通</span>
			<%}else{ %>
				<span style="font-size: larger;">未开通</span>
			<%} %>
		</div>
	</div>

</body>
</html>