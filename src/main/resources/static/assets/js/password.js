	function yh() {
		var pwd1 = document.getElementById("pw").value;
	    var pwd2 = document.getElementById("pwagain").value;
	    if(pwd1 != pwd2){
	    	document.getElementById("rmessage").innerHTML="<font color='red'>两次密码不一致</font>";
	    	document.getElementById("re").disabled = true;
	    	return false;
	    }
	    document.getElementById("rmessage").innerHTML="<font color='red'> </font>";
	    document.getElementById("re").disabled = false;
	    return true;
	}
	function mima() {
		var pw = document.getElementById("pw").value;
		if(pw.length>16||pw.length<8){
			document.getElementById("rmessage").innerHTML="<font color='red'>密码长度为8-16位</font>";
			document.getElementById("re").disabled = true;
			return false;
		}
		document.getElementById("rmessage").innerHTML="<font color='red'></font>";
		document.getElementById("re").disabled = false;
		return true;
	}
	function namep() {
		var name = document.getElementById("name").value;
		if(name.length>10||name.length<4){
			document.getElementById("rmessage").innerHTML="<font color='red'>名字长度为4-10位</font>";
			document.getElementById("re").disabled = true;
			return false;
		}
		document.getElementById("rmessage").innerHTML="<font color='red'></font>";
		document.getElementById("re").disabled = false;
		return true;
	}
	function panduan() {
		if(namep()&&mima()&&yh()){
			document.getElementById("re").disabled = false;
		}
	}
	function onc() {
		alert("请记住您的邮箱和密码");
	}
	function check() {
		document.getElementById("re").disabled=true;
		if(again()&&length()){
			document.getElementById("re").disabled=false;
		}
	}