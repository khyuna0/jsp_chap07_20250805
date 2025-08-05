<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<% // 쿠키 배열에서 각 쿠키에 저장된 값 꺼내기 -> 클라이언트에게 보낸 쿠키 다시 서버로 가져오기 
		Cookie[] cookies = request.getCookies(); // 쿠키 배열로 반환
		
		for(Cookie cookie : cookies) {
			String cValue = cookie.getValue(); // 쿠키의 값 가져오기 
			if(cValue.equals("tiger")) {
				out.println(cValue +"님 로그인 성공" + "<br>");	
			}		
		}
		
	%>
</body>
</html>