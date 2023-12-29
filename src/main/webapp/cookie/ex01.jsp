<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//rememberMe 쿠키를 얻는다.
	String rememberMe = "";
	Cookie[]arr = request.getCookies();
	if(arr != null){
		
		for(Cookie c1 : arr){
			
			if(c1.getName().equals("rememberMe")){
				rememberMe = c1.getValue();
			}
		}
		
	}

%>    

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style >
	
		.wrap-content{
			display:flex;
			justify-content: center;
			align-items: center;
			height: 100vh;
		}
		#form-content{
			height: 200px;
			box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.5);
			padding: 30px;
		}
	
	
	</style>
</head>
<body class="wrap-content">

	
	
	<!-- 
		1. 아이디 기억하기를 체크하고, 로그인에 성공하면, 아이디기억하기 쿠키(아이디)를 하나 생성합니다.
		2. 이 쿠키는 사용하는 곳이 바로 여깁니다.
		3. 아이디기억하기 쿠키를 찾아서 있다면, input의 값을 아이디로 채워 넣어주면됩니다	
	 -->
	
	
	
	<form action="ex01_result.jsp"method="post" id="form-content">
	
		<h3 style="text-align:center;color:blue;"> Cookie L@gin </h3>
		아이디:<input type="text"name="id" value="<%=rememberMe %>" class="form-control"><br>
		비밀번호:<input type="password"name="pw" class="form-control"><br>
		아이디기억하기:<input type="checkbox"name="check" class="form-control"><br>
		<input type="submit"value="Login"style="display: block; width:100%; color:blue; margin-top:5px;"><br>
	</form>
	
	
</body>
</html>