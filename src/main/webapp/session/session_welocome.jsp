<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //여기에서 세션이 없다 -> 인증이 안된 사람
    if(session.getAttribute("user_id") == null){
    	response.sendRedirect("session_login.jsp");
    }
    
    
    String id = (String)session.getAttribute("user_id");
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= id %>님 환영합니다.
	<a href="session_logout.jsp" >logout</a>

</body>
</html>