<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/login.css">
    <link rel="icon" href="<%=request.getContextPath() %>/assets/image/favicon.ico" type="image/x-icon">
</head>

<body>
<div class="cms_login">
    <div style="background:#fff;opacity: 0.8;width: 600px;height: 360px;margin: 80px auto;">
        <div class="cms_login_text">欢迎登录爱上旅游网</div>
        <div class="cms_login_table">
        	<div class="divBox">
        		<span class="margin_right11">${Loginmessage}</span>
            </div>
            <form action="/login" method="post">
                <div class="divBox"><span class="margin_right10">邮箱</span>
                    <input type="email"  name="mail" placeholder="请输入邮箱" class="cms_login_ipt">
                </div>
                <div class="divBox"><span class="margin_right10">密码</span>
                    <input type="password"  name="pw" placeholder="请输入密码" class="cms_login_ipt">
                </div>
                <div class="divBox margin_top60">
                    <button class="login_btn">登录</button>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>