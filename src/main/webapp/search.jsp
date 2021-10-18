<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>爱上旅游</title>
	<link href="../../<%=request.getContextPath() %>/assets/css/themify-icons.css" rel="stylesheet">
	<link href="../../<%=request.getContextPath() %>/assets/css/flaticon.css" rel="stylesheet">
	<link href="../../<%=request.getContextPath() %>/assets/css/bootstrap.min.css" rel="stylesheet">
	<link href="../../<%=request.getContextPath() %>/assets/css/owl.carousel.css" rel="stylesheet">
	<link href="../../<%=request.getContextPath() %>/assets/css/slick.css" rel="stylesheet">
	<link href="../../<%=request.getContextPath() %>/assets/css/slick-theme.css" rel="stylesheet">
	<link href="../../<%=request.getContextPath() %>/assets/css/style.css" rel="stylesheet">
	<link rel="icon" href="<%=request.getContextPath() %>/assets/image/favicon.ico" type="image/x-icon">
	<style type="text/css">
		.search {
			width: 80%;
			height: 180px;
			margin-left: 10%;
			margin-top: 30px;
		}

		.search input {
			float: left;
			flex: 4;
			height: 50px;
			width:800px;
			outline: none;
			border: 2px solid #669D34;
			box-sizing: border-box;
			padding-left:10px;
			margin-top: 80px;
			margin-left: 50px;
		}

		.search button {
			float: left;
			flex: 1;
			height: 50px;
			width:80px;
			background-color: #669D34;
			color: white;
			border-style: none;
			outline: none;
			margin-top: 80px;
		}

		.search button p {
			font-style: inherit;
		}

		.search button:hover {
			font-size: 20px;
		}
	</style>
</head>
<body id="home" style="background-color: #B2E0DF;">
<%@ include file="header.jsp" %>
<div style="width: 90%; height: 260px;margin: 0 auto;">
	<form action="Search" method="post">
		<div class="search">
			<input type="text" name="Stext" id="Stext" value="" placeholder="搜索想去的地方">
			<button type="submit">
				<p>搜索</p>
			</button>
		</div>
	</form>



</div>
<%@ include file="SearchList.jsp"%>
<div style="height: 50px;width: 100%"></div>
<%@ include file="footer.jsp" %>

<script src="../../<%=request.getContextPath() %>/assets/js/jquery.min.js"></script>
<script src="../../<%=request.getContextPath() %>/assets/js/jquery-plugin-collection.js"></script>
<script src="../../<%=request.getContextPath() %>/assets/js/bootstrap-datepicker.min.js"></script>
<script src="../../<%=request.getContextPath() %>/assets/js/script.js"></script>
</body>
</html>

