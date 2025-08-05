<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String mid = request.getParameter("loginId");
		String mpw = request.getParameter("loginPw");
		String rememberId = request.getParameter("rememberId"); // 아이디 저장 체크박스 값
		// System.out.println(rememberId); 
		// 체크박스 하나만 있을 때 : 체크 - on / 선택 x -> null 
		
		
		if(mid.equals("tiger") && mpw.equals("1234")) { // T - 로그인 성공
			
			if (rememberId != null ) { // 아이디 저장 체크한 상태
				Cookie cookie = new Cookie("saveId" , mid ); // savedId -> tiger 
				Cookie cookie2 = new Cookie("savePw" , mpw); // savedPw -> 12345
				cookie.setMaxAge(60*60*24*7); // 7일 동안 쿠키 유지
				cookie2.setMaxAge(60*60*24*7);
				response.addCookie(cookie); // 쿠키를 클라이언트에게 보내기
				response.addCookie(cookie2);
			} else { // 아이디 저장 체크 안 한 상태 -> 쿠키 삭제-> 자동 로그인 풀림
				Cookie cookie = new Cookie("saveId" , mid ); 
				Cookie cookie2 = new Cookie("savePw" , mpw);
				cookie.setMaxAge(0); // 쿠키 삭제 
				cookie2.setMaxAge(0);
				response.addCookie(cookie); 
				response.addCookie(cookie2);
			}
			session.setAttribute("user", mid);
			response.sendRedirect("welcome.jsp"); // 로그인 성공시 welcome 페이지로 강제이동	
		} else { //로그인 실패
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>