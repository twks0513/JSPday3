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
		Cookie c = new Cookie("closeCookie","close");
		c.setMaxAge(30);
		response.addCookie(c);
	%>
	<script type="text/javascript">	
		window.close();
	</script>
</body>
</html>