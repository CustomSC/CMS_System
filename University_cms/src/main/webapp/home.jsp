<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/login.css">
<script src="//code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("input[name='ch']:radio").change(function () {
			$("#num").val("");
			$("#pw").val("");
            //라디오 버튼 값을 가져온다.
            var ch_val = this.value;
            if(ch_val == "교수") {
            	$('#num').attr('placeholder','Professor ID');
            	$('#num').attr('name','pNum');
            	$('#pw').attr('name','pPw');
            }else if(ch_val == "학생") {
            	$('#num').attr('placeholder','Student ID');
            	$('#num').attr('name','sNum');
            	$('#pw').attr('name','sPw');
            }
        });
	});
</script>
</head>
<body>
	<div class="container">
	  <div class="info" style="margin: 150px auto 30px;">
	    <h1>Login</h1>
	  </div>
	</div>
	<div class="form">
	  <div class="thumbnail"><img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/169963/hat.svg"/></div>
	  <div class="check-form">
	  	<input type="radio" name="ch" value="학생" checked="checked"/>학생
	  	<input type="radio" name="ch" value="교수"/>교수
	  </div>
	  <form class="login-form" method="post" action="result.jsp">
	    <input type="text" id="num" name="sNum" placeholder="Student Id"/>
	    <input type="password" id="pw" name="sPw" placeholder="password"/>
	    <button type="submit">login</button>
	    <p class="message">Not registered? <a href="select.jsp">Create an account</a></p>
	  </form>
	</div>
</body>
</html>