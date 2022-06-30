<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<h1>Index.jsp페이지 입니다</h1>
		
			<h1>로그인 성공한 사용자만 접근 가능합니다</h1><br>
			<%=session.getAttribute("id") %>님 환영 합니다!!!
			<button type="button" onclick="location.href='logout.jsp'">로그아웃</button>
			<button type="button" onclick="location.href='login.jsp'">로그인페이지</button>
			
</body>
</html>