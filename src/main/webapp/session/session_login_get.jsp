<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<%
	String user_id = (String)session.getAttribute("user_id");
	String user_pw = (String)session.getAttribute("user_pw");
	String user_name = (String)session.getAttribute("user_name");
	
	
	%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	아이디:<%=user_id %><br>
	비번:<%=user_pw %><br>
	이름:<%=user_name %><br>
	
	

</body>
</html>