<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
<link href="<%=request.getContextPath() %>/css/login.css" rel="stylesheet">
	<link rel="icon" href="<%=request.getContextPath() %>/assets/image/favicon.ico" type="image/x-icon">
</head>
<body>
	<div class="cms_login">
		<div style="background:#fff;opacity: 0.8;width: 600px;height: 400px;margin: 40px auto;">
			<div class="cms_login_text">欢迎成为爱上旅游网用户</div>
			<div class="cms_login_table">
				<form action="Register" method="post">
					<div class="divBox">
						<span id="rmessage"><font color="red">${Registermessage}</font></span>
					</div>
					<div class="divBox">
						<span class="margin_right10">&nbsp;&nbsp;用&nbsp;户&nbsp;名</span> 
						<input type="text" onkeyup="namep()" name="name" id="name" placeholder="请输入用户名" class="cms_login_ipt">
					</div>
					<div class="divBox">
						<span class="margin_right10">&nbsp;&nbsp;邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱</span>
						<input type="email" id="mail" name="mail" placeholder="请输入邮箱"
							class="cms_login_ipt">
					</div>
					<div class="divBox">
						<span class="margin_right10">&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</span>
						<input type="password" id="pw" name="pw" onkeyup="mima()" placeholder="请输入密码"
							class="cms_login_ipt">
					</div>
					<div class="divBox">
						<span class="margin_right10">确认密码</span> 
						<input onkeyup="yh()" type="password" id="pwagain" placeholder="请再次输入密码" class="cms_login_ipt">
					</div>
					<div class="divBox margin_top60">
						<input onmouseover="panduan()" onclick="onc()" id="re" class="login_btn" type="submit" value="注册">
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script src="<%=request.getContextPath() %>/assets/js/password.js"></script>
</html>