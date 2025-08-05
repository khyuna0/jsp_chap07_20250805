<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 사용 연습</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies(); // 쿠키 가져오기	
		
		if (cookies != null ) {
			for (Cookie cookie : cookies) { // 인덱스로 찍을 수 없어서 getName()과 getValue()로 가져옴
				out.println(cookie.getName() + "<br>");
				out.println(cookie.getValue() + "<br>");
				out.println(cookie.getMaxAge() + "<br>"); // 쿠키 유효 시간
			}
		}
	%>
</body>
</html>