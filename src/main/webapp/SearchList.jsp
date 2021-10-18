<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.example.pojo.Destination" %>
<%@ page import="java.util.Vector" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<%=request.getContextPath()%>/assets/css/list.css" rel="stylesheet">
<title></title>
</head>
<body >
	<%List<Destination> V=(List<Destination>)session.getAttribute("DetailList");%>
	<div class="MainDiv">
		<ul class="ulStyle">
		<% if(V!=null)
			for(Destination tmp:V){ %>
			<li > 
				<div class="detail"  onmouseover="this.style.background='#C4FFFF'" onmouseleave="this.style.background='#DEFFFF'">
					<div class="Ht">
						<a href="/ToPay?No=<%=tmp.getDesid()%>">
						<div class="imgsizew">
							<img class="imgsize" src="<%=tmp.getSrc() %>">
						</div>
						<dl class="dlt">
							<dd>
								<font style="color: green;font-size: 30px;">&nbsp;<%=tmp.getName() %></font>
							</dd>
							<dd>
								<font style="font-size: 12px;">&nbsp;<%=tmp.getType() %></font>
							</dd>
							<dd>
								<font style="font-size: 12px;">&nbsp;<%=tmp.getDesname() %></font>
							</dd>
						</dl>
						<div style="float: right; height: 100px;width: 120px;">
							<p>￥：</p>
							<font style="color:red; font-size: 30px;"> <%=tmp.getPrice() %></font>
							<p>/人</p>
						</div>
						</a>
					</div>
				</div>
			</li>
			<%
				}else{ %>
				<li> <h1>没有更多内容了</h1></li>
			<% }%>
		</ul>

	</div>
</body>
</html>