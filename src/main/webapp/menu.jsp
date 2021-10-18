<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	  <link href="<%=request.getContextPath() %>/css/menu.css" rel="stylesheet" type="text/css">
	  <script src="<%=request.getContextPath() %>/assets/js/jquery.min.js" type="text/javascript"></script>
	  <script type="text/javascript">
        $(document).ready(function () {
            $(".nav a").click(function () {
            	var navcontents = $(this).next("ul");
            	navcontents.slideToggle();
            })
        }) 
	</script>
  </head>
  
  <body>
    <div>
        <ul class="main">
            <li class="nav"><a class="acss" href="#">个人中心</a>
                <ul class="navcontent">
                    <li style="margin-top:5px"><a href="self.jsp" target="vip">个人资料</a></li>
                    <li><a href="password.jsp" target="vip">密码修改</a></li>
                </ul>
            </li>
            <li class="nav"><a class="acss" href="#">我的订单</a>
                <ul class="navcontent">
                    <li style="margin-top:5px"><a href="/MyOrder" target="vip">旅游订单</a></li>
                </ul>
            </li>
        </ul>
    </div>
</body>
</html>
