<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//application를 사용해서 예약정보 지정
	
	String [] arr = request.getParameterValues("seat"); //사용자가 선택
	
	ArrayList<String> list = new ArrayList<>();
	
	//만약 app에 값이 있다면, 가져와서 변수에 저장
	
	if(application.getAttribute("list") != null){
		list = (ArrayList<String>)application.getAttribute("list");
	}
	
	//사용자가 예약한 값을 app에 저장. 중복값의 확인
	//list에 저장된 값과 사용자가 선택한 값을 비교해서 중복되는 값이 없다면, 저장, 중복되는 값이 있다면 패스
	
	ArrayList<String> temp = new ArrayList<>();
	for(String s : arr){
		if(list.contains(s)){ //중복이 있음
			break;
		}else{ //중복이 없음
			temp.add(s);
		}
	}
	
	//어떤 값과 어떤값이 같으면 중복값이 없다?
	if(temp.size() == arr.length){
		list.addAll(temp); //temp에 저장된 모든 값을 list에 추가
	}
	
	//application객체에 list라는 이름으로 저장 
	application.setAttribute("list", list);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!--
	checkbox, radio버튼 선택을 못하도록 하는 옵션 disabled
	checkbox, radio버튼 미리 선택하는 옵션 checked
	select박스의 미리 값을 선택하는 옵션 selected
	input태그를 읽기전용 readonly
	input태그의 값을 반드시 지정 required
	
	-->
	
	<div style="text-align:center;">
	<h3>예약 결과</h3>
	
	<h5>예약한 좌석</h5>
	<% for(String s : arr) { %>
		[<%=s %>]
	<%} %>
		
		<b style="color:red;">결과:</b><%= temp.size() == arr.length? "성공": "실패" %><br>
		
		<a href = "reserve.jsp">다시 예약하기</a>
	</div>
</body>
</html>