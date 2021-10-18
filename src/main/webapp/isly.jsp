<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="org.example.pojo.HotCity" %>
<%@ page import="org.example.pojo.Type" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>爱上旅游</title>
<link href="<%=request.getContextPath() %>/assets/css/themify-icons.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/assets/css/flaticon.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/assets/css/owl.carousel.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/assets/css/slick.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/assets/css/slick-theme.css" rel="stylesheet">
<link href="<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet">
<link rel="icon" href="<%=request.getContextPath() %>/assets/image/favicon.ico" type="image/x-icon">
</head>
<body id="home">
		
		<div class="page-wrapper">
			<div class="preloader">
			</div>
			<%@ include file="header.jsp" %>
			<section  class="hero hero-style-2">
			<div class="hero-slider">
				<%
					List<List<String>> topsection = (List<List<String>>) request.getAttribute("topsection");
					List<HotCity> hotcity = (List<HotCity>) request.getAttribute("hotcity");
					List<Type> type = (List<Type>) request.getAttribute("type");
				%>
				<% if(topsection!=null)
					for(List<String> t:topsection){
				%>
				<div class="slide">
					<div class="container">
						<img src="<%=t.get(2)%>" class="slider-bg">
						<div class="row">
							<div class="col col-md-8 slide-caption">
								<div class="slide-title">
									<h2><%=t.get(0)%></h2>
								</div>
								<div class="slide-subtitle">
									<p><%=t.get(1)%></p>
								</div>
								<div class="btns">
									<a href="/ToPay?No=<%=t.get(3)%>" class="theme-btn">去预定</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%} %>
			</div> 
		</section>
			<div class="destination-service section-padding">
				<div class="container">
					<div class="col-12">
						<div class="wpo-section-title text-center">
							<h2>选择你想去的城市</h2>
						</div>
					</div>
					<div class="destination-carousel owl-carousel owl-theme owl-btn-center-lr owl-dots-primary-full owl-btn-3 m-b30 wow fadeIn" data-wow-duration="2s" data-wow-delay="0.2s">
						<%if(hotcity!=null)
							for(HotCity v:hotcity){
						%>
						<div class="item">
							<div class="service-media-bx">
								<div class="destination-item">
									<div class="destination-img">
										<img src="<%=v.getCitysrc()%>" >
									</div>
									<div class="destination-content">
										<div class="content-left">
											<h5><%=v.getDescity()%></h5>
										</div>
										<div class="content-right">
											<a href="/Search?city=<%=v.getDescity()%>">去看看</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<%} %>
					</div>
				</div>
			</div>
			<div class="featured-area featured-sub">
				<div class="container-fluid">
					<div class="row grid ">
						<%if(type!=null)
							for(Type t:type){
						%>
						<div class="col-lg-4 items col-md-6 col-sm-6 col-12">
							<div class="featured-wrap">
								<div class="featured-img">
									<img src="<%=t.getTypesrc()%>" >
									<div class="featured-content">
										<a href="Search?type=<%=t.getTypename()%>"><%=t.getTypename() %></a>
									</div>
								</div>
							</div>
						</div>
						<%} %>
					</div>
				</div>
			</div>

		<%@ include file="footer.jsp" %>
		</div>
		<script src="<%=request.getContextPath() %>/assets/js/jquery.min.js"></script>
		<script src="<%=request.getContextPath() %>/assets/js/jquery-plugin-collection.js"></script>
		<script src="<%=request.getContextPath() %>/assets/js/bootstrap-datepicker.min.js"></script>
		<script src="<%=request.getContextPath() %>/assets/js/script.js"></script>
	</body>
</html>