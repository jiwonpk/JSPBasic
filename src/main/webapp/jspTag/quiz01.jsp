<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	/*
	1.정수를 저장하는 HashSet을 생성합니다.
	2.1~45까지 랜덤하게 생성되는 로또번호를 set에 저장
	3.화면에 출력할때는 "이번 번호는 x번 입니다" 반복으로 출력
	4.header,footer는 include해주세요
	*/
	%>
	
	
	<%@include file="include_header.jsp" %>
	
	<% Set<Integer> hash = new HashSet<>(); // hashset은 중복이 x
	while(hash.size()<6){
		int ran = (int)((Math.random()*45)+1);
		hash.add(ran); 

	 }%>
	 이번번호는 <%=hash %>번 입니다<br>
	
	
	<%@include file="include_footer.jsp" %>
	
