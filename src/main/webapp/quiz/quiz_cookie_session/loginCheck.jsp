<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id="1" ,pwd="1";
		String uid = request.getParameter("id");
		String upwd = request.getParameter("pwd");
		if(id.equals(uid) && pwd.equals(upwd)){
			session.setAttribute("id", "홍길동");
			response.sendRedirect("index.jsp");
		}else{
			response.sendRedirect("login.jsp");
		}	
	%>
</body>
</html>