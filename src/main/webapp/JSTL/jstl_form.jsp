<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<hr3>if문 확인하기</hr3>
	
	<form action="jstl_if.jsp"method="post">
	
		이름:<input type="text"name="name"><br>
		나이:<input type="number"name="age">
		<input type="submit"value="확인">
	</form>
	
	
	<hr>
	<hr3>choose문 확인하기</hr3>
	
	<form action="jstl_choose.jsp"method="post">
	
		이름:<input type="text"name="name"><br>
		나이:<input type="number"name="age">
		점수:<input type="number" name="score">
		<input type="submit"value="확인">
	</form>

</body>
</html>