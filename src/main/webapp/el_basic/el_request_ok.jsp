<%@page import="com.example.bean.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<!-- requestScope는 생략이 가능합니다. -->
	${requestScope.name}<br>
	${requestScope.vo.id}<br>
	${requestScope.vo.name}<br>
	${requestScope.vo.email}<br>
	
	<!-- sessionScope도 생략이 됩니다. -->
	${sessionScope.now}
	
	<% %>
	
</body>
</html>