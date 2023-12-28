<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
     request.setCharacterEncoding("utf-8");
     String name = request.getParameter("name");
     double hight = Double.parseDouble(request.getParameter("hight"));
     double weigth = Double.parseDouble(request.getParameter("weigth"));
     
   //kg / (cm/100 * cm/100)
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	NAME:<%=name %><br>
	HEIGTH:<%=hight%><br>
	BMI:<% int BMI = (int)(weigth /Math.pow(hight/100,2));  %>
	
	<%if(BMI >= 25){%>
		과체중입니다:<%=BMI %>
	<% } %> 
	<%if(BMI <= 18){ %>
		저체중입니다:<%=BMI %>	
		<%} %>
	<%if(BMI < 25 && BMI > 18 ) {%>
		정상입니다:<%=BMI %>
	<% } %>
</body>
</html>