<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	
	//처리하는 영역
	//아이디가 aaa123이고, 비밀번호1234 이라면 로그인 성공가정 ok로 넘겨줍니다.
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String [] check = request.getParameterValues("check");
	
	if(id.equals("aaa123")&& pw.equals("1234")){
		Cookie c1  = new Cookie("check",id);
		 c1.setMaxAge(20000);
		 response.addCookie(c1);
		
		 if(check != null){
			Cookie c2 = new Cookie("rememberMe", id);
			c2.setMaxAge(20000);
			response.addCookie(c2);
		 }
		
	}

	if(id.equals("aaa123") && pw.equals("1234")){ //로그인 성공
		
		//로그인 성공시에 아이디를 저장하는 쿠키
		Cookie c = new Cookie("user_id", id);
		c.setMaxAge(1800); //30분
		response.addCookie(c);
		
		response.sendRedirect("ex01_ok.jsp"); //성공페이지로
	} else {
		response.sendRedirect("ex01.jsp"); //다시 로그인페이지로
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