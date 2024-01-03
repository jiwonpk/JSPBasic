<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%
		String name = request.getParameter("name");
	
		System.out.println("넘어온값을 소비:" + name);
		
		//리퀘스트에 강제로 값을 저장한다
		request.setAttribute("data", "홍길동 20세");
		
		
		//자바코드로 포워드를 사용하는 방법.
		//RequestDispatcher dp= request.getRequestDispatcher("forward_ex05.jsp");
		//dp.forward(request, response);
		
		request.getRequestDispatcher("actionTag/forward_ex05.jsp").forward(request, response);
	%>