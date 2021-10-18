<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="<%=request.getContextPath() %>/assets/css/list.css" rel="stylesheet">
</head>
<body>
	<div class="main">
		<ul class="ulStyle">
			<li > 
				<div class="detail"  onmouseover="this.style.background='#C4FFFF'" onmouseleave="this.style.background='#DEFFFF'">
					<div class="Ht">
						<a href="#">
						<div class="imgsizew">
							<img class="imgsize" src="%>">
						</div>
						<dl class="dlt">
							<dd>
								<font style="color: green;font-size: 30px;">&nbsp;名字</font>
							</dd>
							<dd>
								<font style="font-size: 12px;">&nbsp;类型</font>
							</dd>
							<dd>
								<font style="font-size: 12px;">&nbsp;地点</font>
							</dd>
							<dd>
								<font style="font-size: 12px;">&nbsp;细节</font>
							</dd>
						</dl>
						<div style="float: right; height: 100px;width: 120px;">
							<font style="color:red; font-size: 30px;"> 总价格</font>
							<font style="color:red; font-size: 30px;"> 是否支付</font>
						</div>
						</a>
					</div>
				</div>
			</li>
		</ul>
	</div>
</body>
</html>