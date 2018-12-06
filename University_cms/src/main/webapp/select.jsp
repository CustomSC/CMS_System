<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<!-- Latest compiled and minified JavaScript -->
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="resources/select.css">
</head>
<body>
	<div class="wall">
		<div class="student">
			<div class="stu">
				<img alt="학생" src="resources/images/student.JPG" onclick="location.href='joinS.jsp'">
				<div class="text">Student</div>
			</div>
		</div>
		<div class="professor">
			<div class="pro">
				<img alt="교수" src="resources/images/professor.JPG" onclick="location.href='joinP.jsp'">
				<div class="text">Professor</div>
			</div>
		</div>
	</div>
</body>
</html>