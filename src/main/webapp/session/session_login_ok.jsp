<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 아이디, 비밀번호, nick을 받습니다.
	2. 아이디 비밀번호가 동일하면 로그인 성공이라고 간주하고 (user_id, id)의 세션생성
	(user_nick, 닉네임)을 세션을 생성
	
	session_welcome로 이동해서 화면에 "id님 환영합니다"를 출력합니다.
	틀린경우는 로그인페이지로 리다이렉트 처리해주세요.
	
	session_welcome페이지에서는 a태그를 이용해서 로그아웃 기능을 만들어주세요
	
	session_logout페이지에서는 세션을 삭제하고 리다이렉트를 하면 됩니다.
	
	*/
	
	//1st - 뭐해야 할지 모르면, 일단 값부터 받고 생각하자
	String user_id = request.getParameter("piig");
	String user_pw= request.getParameter("1234");
	String user_name = request.getParameter("nick");

	if(user_id.equals("piig")&&user_pw.equals("1234")){
		session.setAttribute("user_id",user_id);
		session.setAttribute("user_pw",user_pw);
		session.setAttribute("user_name",user_name);
		response.sendRedirect("session_welocome.jsp");
		
	}else{
		response.sendRedirect("session_logout.jsp");
	}
%>












