<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="<%=request.getContextPath() %>/assets/css/themify-icons.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/assets/css/flaticon.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/assets/css/bootstrap.min.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet">
	<script src="<%=request.getContextPath() %>/assets/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath() %>/assets/js/jquery-plugin-collection.js"></script>
	<script src="<%=request.getContextPath() %>/assets/js/bootstrap-datepicker.min.js"></script>
	<script src="<%=request.getContextPath() %>/assets/js/script.js"></script>
	<title></title>
</head>
<body  style="background-color: #B2E0DF;">
<header id="header">
	<div class="topbar">
		<div class="container-fluid">
			<div class="row">
				<div class="col col-md-6 col-sm-7 col-12">
					<div class="contact-intro">
						<ul>
							<li style="font-size: large;"><i class="fi ti-location-pin"></i>湖南省,常德区,张家界市,吉首大学</li>
						</ul>
					</div>
				</div>
				<div class="col col-md-6 col-sm-5 col-12">
					<%if(session.getAttribute("UserName")==null){ %>
					<div class="contact-info">
						<ul class="theme-btn-s2">
							<li><a href="register.jsp">注册</a></li>
						</ul>
						<ul class="theme-btn-s2">
							<li><a href="login.jsp">登录</a></li>
						</ul>
					</div>
					<% }else{%>
					<div class="contact-info">
						<ul class="theme-btn-s2">
							<li><a href="/" target="_blank">首页</a></li>
						</ul>
						<ul class="theme-btn-s2">
							<li><a href="/toVip" target="vip">我的Vip</a></li>
						</ul>
						<ul class="theme-btn-s2">
							<li><a href="" target="_self">欢迎您!<%=session.getAttribute("UserName") %></a></li>
						</ul>
					</div>
					<%} %>
				</div>
			</div>
		</div>
	</div>
	<div class="site-header header-style-1">
		<nav class="navigation navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="/" target="_blank"><img src="<%=request.getContextPath() %>/assets/images/logo.png" alt=""></a>
				</div>
			</div>
		</nav>
	</div>
</header>
</body>
</html>

