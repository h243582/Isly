<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.example.pojo.Order" %>
<%@ page import="java.util.Vector" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<%=request.getContextPath()%>/assets/css/list.css" rel="stylesheet">
<title></title>
</head>
<body >
	<%List<Order> orderList=(List<Order>)session.getAttribute("OrderList");%>
	<div class="MainDiv">
		<ul class="ulStyle">
		<% if(orderList!=null)
			for(Order tmp:orderList){ %>
			<li > 
				<div class="detail"  onmouseover="this.style.background='#C4FFFF'" onmouseleave="this.style.background='#B2E0DF'">
					<div class="Ht">
						<div class="imgsizew">
							<img class="imgsize" src="<%=tmp.getSrc() %>">
						</div>
						<dl class="dlt">
							<dd>
								<font style="color: green;font-size: 30px;">&nbsp;<%=tmp.getName().substring(0,5) %>...</font>
							</dd>
							<dd>
								<font style="font-size: 12px;">&nbsp;订单编号：<%=tmp.getOrderno() %></font>
							</dd>
							<dd>
								<font style="font-size: 12px;">&nbsp;类型：<%=tmp.getType() %></font>
							</dd>
							<dd>
								<font style="font-size: 12px;">&nbsp;单价：<%=tmp.getPrice() %></font>
							</dd>
							<dd>
								<font style="font-size: 12px;">&nbsp;总价：<%=tmp.getTotalprice() %></font>
							</dd>
							<dd>
								<font style="font-size: 12px;">&nbsp;折扣：<%=tmp.getDiscount()==1?"9折优惠":"无折扣" %></font>
							</dd>
							<dd>
								<font style="font-size: 12px;">&nbsp;状态：<%=tmp.getPayflag()==1?"已支付":"未支付" %></font>
							</dd>
							<dd>
								<font style="font-size: 12px;">&nbsp;出发日期：<%=tmp.getDate().toString()%></font>
							</dd>
						</dl>
					</div>
				</div>
			</li>
			<%
				}else{ %>
				<li> <h1>未找到相关内容</h1></li>
			<% }%>
		</ul>
	</div>
</body>
</html>