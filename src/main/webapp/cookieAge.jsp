<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키의 유효시간 설정</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
	
		for (Cookie cookie : cookies ) {
			cookie.setMaxAge(60*60*24); // 쿠키의 유효시간 설정하기 (초 단위)
			response.addCookie(cookie); // 클라이언트에게 변경된 쿠키 보내기
		}
		// 쿠키는 삭제 명령어가 따로 없어서 쿠키 유효기간을 0으로 만들어 삭제할 수 있음
		for (Cookie cookie : cookies ) { // 모든 쿠키 삭제
			cookie.setMaxAge(0); // 유효시간 0 -> 쿠키 삭제
			response.addCookie(cookie); // 클라이언트에게 변경된 쿠키 보내기
		}
		
		
			
	%>
</body>
</html>