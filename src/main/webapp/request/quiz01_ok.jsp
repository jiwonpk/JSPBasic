<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String birth = request.getParameter("birth");
    String age = request.getParameter("age");
    String [] a1 = request.getParameterValues("a1");
    String b1 = request.getParameter("b1");
    String re = request.getParameter("region"); 
    String intro = request.getParameter("intro");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>여기는 quiz01_ok 페이지</h3>
	
	 아이디:<%=id %><br>
	 비밀번호:<%=pw %><br>
	 생년월일:<%=birth %><br>
	 나이:<%=age %><br>
	 전공:<%=b1 %><br>
	 취미:<% for(String a : a1) { %>
		<%=a %>
	<% } %><br>
	 지역:<%=re %><br>
	 소개:<%=intro %><br>
	 
	

</body>
</html>