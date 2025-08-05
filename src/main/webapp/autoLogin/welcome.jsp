<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String sid = (String) session.getAttribute("user");
		
		// 로그인 하지 않은 상태로 welcome 페이지 방문시 로그인 페이지로 강제 이동 
		if ( sid == null ) { 
			response.sendRedirect("login.jsp"); 
		}
	
	%>
	
	<h2><%=sid %>님 로그인 성공</h2>
	<hr>
	<a href="logout.jsp">로그아웃</a> <br><br>
	<a href="login.jsp">로그인 페이지로 바로가기</a>
	
</body>
</html>