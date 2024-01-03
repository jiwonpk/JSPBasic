<%@page import="com.example.bean.MemberJI"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    MemberJI ji  = (MemberJI)request.getAttribute("ji");
    
     double k = Double.parseDouble(ji.getKor());
	 double m = Double.parseDouble(ji.getMath());
	 double x =(k+m)/2; 
	 double y =(k+m);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
아이디:<%=ji.getId() %><br>
비밀번호:<%=ji.getPw() %><br>
이름:<%=ji.getName() %><br>
주소:<%=ji.getAddress()%><br>
국어:<%=ji.getKor() %><br>
수학:<%=ji.getMath() %><br>
평균:<%=x%><br>
합계:<%=y%>

</body>
</html>