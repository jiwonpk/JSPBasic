<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    //값을 받는다.
    request.setCharacterEncoding("utf-8");
    
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    
    int result = Integer.parseInt(age); //형변환
    
    if(result >=20){
    	response.sendRedirect("ex02_ok.jsp");//ex02_ok.jsp로 화면이동
    }else{
    	response.sendRedirect("ex02_no.jsp");
    }
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>