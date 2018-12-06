<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<br><br>
		<h1>학생현황</h1>
		<br><br>
		<table class="table table-hover">
			<tr>
				<th>NO</th>
				<th>학번</th>
				<th>이름</th>
				<th>성별</th>
				<th>전공</th>
				<th>전화번호</th>
				<th>이메일</th>
				<th>주소</th>
				<th>상태</th>
			</tr>
			
			<c:if test="${fn:length(list) == 0}">
				<tr>
					<td colspan="11" style="text-align: center;">등록된 자료가 없습니다.</td>				
				</tr>
			</c:if>
			
			<c:forEach items="${list}" var="list">
				<tr>
				<%-- <tr onclick="location.href='num?num=${list.num}'"> --%>
					<td>${list.sNo}</td>
					<td>${list.sNum}</td>
					<td>${list.sName}</td>
					<td>${list.sGender}</td>
					<td>${list.sMajor}</td>
					<td>${list.sTel}</td>
					<td>${list.sEmail}</td>
					<td>${list.sAddr}</td>
					<td>${list.sStatus}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div style="width: 10%; margin: auto;">
		<button onclick="location.href='index.jsp'" style="background: #ae99c9; cursor: pointer;">메인페이지로</button>
	</div>
</body>
</html>