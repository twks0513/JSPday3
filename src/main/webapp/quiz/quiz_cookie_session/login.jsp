<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>login.jsp</h1><br>
	<%
			boolean bool = true;
			Cookie[] carr = request.getCookies();
			for(Cookie c : carr){
				if(c.getName().equals("closeCookie")){
					bool =false;
				}
			}
			if(bool){ 
		%>
				<script type="text/javascript">
				open("popup.jsp","","width=300, height=200,top=500,left=500");
				</script>
			<%}			
			
		if(session.getAttribute("id")!=null){%>
			<h1><%=session.getAttribute("id") %>님 로그인 상태입니다</h1>
			<form action="index.jsp" method="post">
				<input type="submit" value="index이동 ">
			</form>
		<%}else{%>
	
	<form action="loginCheck.jsp" method="get">
		<input type="text" name="id"><br>
		<input type="password" name="pwd"><br>
		<input type="submit" value="로그인">	
	</form>
	<%} %>
</body>
</html>