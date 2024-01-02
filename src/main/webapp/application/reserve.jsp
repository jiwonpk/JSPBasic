<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //session.getAttribute("code");
    //response.sendRedirect("reserve_ok.jsp");
    
    if(session.getAttribute("authYN")==null){
       response.sendRedirect("auth.jsp");
    }
    
    ArrayList<String>list = new ArrayList<>();
    if(application.getAttribute("list") != null){
    	list = (ArrayList<String>)application.getAttribute("list");
    }
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div style="text-align : center;">
		<h3>영화 좌석 예약</h3>
		<h4>예약할 좌석을 체크한 후에예약버튼을 누르세요</h4>
		<hr>
		 
		<b>좌석배치도</b>
		<br>
		
		<form action ="reserve_ok.jsp" method="post">
			&nbsp;&nbsp;&nbsp;
			<%for(char c = 'A'; c <= 'Z'; c++) {%>
				<small><%=c %></small>
				&nbsp;
			<% } %>	
			<br>
			
			<%for(int i = 1; i <= 6 ; i++){ %>
				
				<%=i %>			
				<%for(char c = 'A'; c <= 'Z'; c++){ %>
					<input type="checkbox"name="seat"value="<%=i%>-<%=c%>" <%=list.contains(i +"-"+c) ? "disabled" : "" %>> 
				<%}%>
				<br>
			
				<%if(i==3){ %>
					<br>
				<% }%> 
				
			<%} %>
			
			<br>
			<input type ="submit" value="예약하기">
			<input type ="reset" value="다시선택하기">
				
		</form>
		
		
	
	</div>

</body>
</html>