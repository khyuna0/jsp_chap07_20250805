<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 자동저장 구현하기</title>
</head>
<body>
	<%	
		Cookie[] cookies = request.getCookies(); // 기존 존재하는 쿠키 가져오기
		String savedId = "";
		// 처음 사이트 방문인 경우, 쿠키 유효시간 초과 후 방문 = 쿠키값 null
		if (cookies != null) { // 쿠키가 존재할 때만 쿠키 추출
			for(Cookie cookie : cookies) {
				if(cookie.getName().equals("saveId")) { // 쿠키 중 이름이 saveId 인 쿠키를 추출
					savedId = cookie.getValue(); // 쿠키에 saveId 이름으로 저장된 실제 아이디 값 가져오기 (tiger)
				}
			}
		}
		
	%>
	<h2>회원 로그인</h2>
	<hr>
	<form action="loginOk.jsp" method="post">
		아이디 : <input type="text" name = "loginId" value = "<%=savedId%>"> <br><br>
		비밀번호 : <input type="text" name = "loginPw"> <br><br>	
		<input type="checkbox" name = "rememberId" <%= savedId.isEmpty() ? "" : "checked" %>> 아이디 저장 <br><br>
		<input type="submit" value="로그인">
	</form>
</body>
</html>