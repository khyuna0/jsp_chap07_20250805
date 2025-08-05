<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 비우기</title>
</head>
<body>
	<%
		//session.invalidate(); -> 혹시 로그인 되어있으면 로그아웃까지 되어버림
		session.removeAttribute("cart"); // 카트만 지우기
	%>
	
	<h2>장바구니가 비워졌습니다.</h2>
	<a href="productList.jsp">상품 선택 페이지로 돌아가기</a>
</body>
</html>