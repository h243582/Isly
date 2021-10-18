<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
.mainDiv {
	width: 80%;
	height: 450px;
	margin: 0 auto;
}

.detail {
	padding-left: 10px;
	padding-top: 20px;
}

.spans {
	font-size: larger;
	font-style: inherit;
	padding-left: 18px;
	padding-right: 10px;
}

.spanc {
	font-size: larger;
	font-style: inherit;
	padding-left: 2px;
	padding-right: 10px;
}

input {
	width: 140px;
	font-size: large;
}

.psize {
	height: 35px;
}

.sub {
	margin-top: 15px;
	margin-left: 30px;
	width: 70px;
	font-style: normal;
	font-size: large;
}

button {
	margin-top: 50px;
	margin-left: 140px;
	height: 50px;
	width: 70px;
	color: #4E7A27;
	font-size:12px;
	border-style: none;
	background-color:#76bb40;
	border-radius: 10px;
}
button:hover {
	font-size: 15px;
	font-weight: bold;
}
</style>
</head>
<body style="background-color: #B2E0DF">
	<div class="mainDiv">
		<div class="detail">
			<form action="/updatepw" method="post">
				<div class="psize">
					<font class="spans" color="red">${psmessage}</font>
				</div>
				<div class="psize">
						<span class="spans" style="color:red;" id="rmessage"></span>
				</div>
				
				<div class="psize">
					<span class="spans">原&nbsp;&nbsp;密&nbsp;&nbsp;码:</span><input type="password" name="pw"><br>
				</div>
				<div class="psize">
					<span class="spans">新&nbsp;&nbsp;密&nbsp;&nbsp;码:</span><input onkeyup="check()" name="npw" id="pw" type="password"><br>
				</div>
				<div class="psize">
					<span class="spanc">再输入一次:</span><input id="pwagain" onkeyup="check()"  type="password">
				</div>
				<button  type="submit" id="re" onmouseover="check()" >修改</button>
			</form>
		</div>
	</div>
</body>
<script type="text/javascript">
	function again() {
		var p=document.getElementById("pw").value;
		var q=document.getElementById("pwagain").value;
		document.getElementById("re").disabled=true;
		if(p!=q){
			document.getElementById("rmessage").innerHTML="两次密码不一致";
	    	return false;
		}
		document.getElementById("rmessage").innerHTML="";
		return true;
	}
	function length() {
		var p=document.getElementById("pw").value;
		document.getElementById("re").disabled=true;
		if(p.length>16||p.length<8){
			document.getElementById("rmessage").innerHTML="密码长度为8-16位";
	    	return false;
		}
		document.getElementById("rmessage").innerHTML="";
		return true;
	}
	function check() {
		if(again()&&length()){
			document.getElementById("re").disabled=false;
		}
	}
</script>

</html>