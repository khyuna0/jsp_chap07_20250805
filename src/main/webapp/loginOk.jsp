<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%!
		String mid;
		String mpw;
	%>

	<%
		request.setCharacterEncoding("utf-8");
		
		mid = request.getParameter("id");
		mpw = request.getParameter("pw");
		
		if(mid.equals("tiger") && mpw.equals("12345")) { // 로그인 성공
			session.setAttribute("sid", mid); // 세션에 아이디값 저장함 -> 로그인 성공
			
			// 쿠키 생성하기
			Cookie cookie = new Cookie("cid", mid); // 기본 생성자 x, 세션과 비슷, 문자열만 허용			
			// 클라이언트 -> 서버 (request) 서버 -> 클라이언트 (response)
			response.addCookie(cookie); // 생성한 쿠키를 클라이언트에 전송
			response.sendRedirect("welcome.jsp"); // 페이지 강제이동
		} else {
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>