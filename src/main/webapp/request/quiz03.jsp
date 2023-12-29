<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>quiz03.jsp</h3>
	<h3>아래처럼 a링크를 생성하고, a태그 클릭시<br> 
	req_quiz03_ok 에 학생번호를 출력하세요</h3>

	
	<% for(int i = 1; i <= 30 ;i++ ){%><br>
	 <a href="req_quiz03_ok.jsp?name=<%=i%>"><%=i%>번 학생</a>
	<% } %>
</body>
</html>