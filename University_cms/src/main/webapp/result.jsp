<%@page import="java.lang.reflect.Parameter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String num = request.getParameter("sNum");
	String pw = request.getParameter("sPw");
	String num2 = request.getParameter("pNum");
	String pw2 = request.getParameter("pPw");
%>

학번 : <%= num %><br>
비밀번호 : <%= pw %><br>
교번 : <%= num2 %><br>
비밀번호 : <%= pw2 %>
</body>
</html>