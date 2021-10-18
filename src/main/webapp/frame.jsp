<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="<%=request.getContextPath() %>/assets/image/favicon.ico" type="image/x-icon">
</head>
<frameset  rows="13%,47%,40%" border="2px" bordercolor="#669D34">
  	<frame src="header2.jsp">
  	<frameset cols="22%,*" border="2px" bordercolor="#669D34">
  		<frame src="menu.jsp">
  		<frame src="vip.jsp" name="vip">
  	</frameset>
  	<frame src="footer.jsp">
 </frameset>
</html>