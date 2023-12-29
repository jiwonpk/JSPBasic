<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- a태그로 jspTag폴더의 quiz01로 상대경로, 절대경로 -->
	<a>a태그</a><br>
	
	<a href="../quiz01.jsp">quiz01(상대경로)</a>
	<a href="/JSPBasic/jspTag/quiz01.jsp">quiz01(절대경로)</a><br> 
	
	<!-- img태그로 HTML폴더안에있는 테스트1.jpg 상대경로, 절대경로 -->
	<img alt ="제목" scr="../../HTML/img/테스트01.jpg">
	
	<a href="image/테스트1번.webp">good</a>
	<a href="http://localhost:8181/JSPBasic/path/test/image/테스트01.webp">good</a>
	
	<!-- a태그로 TestServlet로 상대경로, 절대경로(맵핑경로 확인) -->
	<a href="../../apple">서블릿</a>
	
	
</body>
</html>