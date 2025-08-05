<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
		request.setCharacterEncoding("utf-8");
		
		String product = request.getParameter("product"); // 장바구니에 넣을 제품
		
		List<String> cart = (ArrayList<String>)session.getAttribute("cart"); 
		// 기존 세션에 cart(Arraylist) 존재하면 가져오기
		// 첫 번째 장바구니에 삽입 시 cart -> null
		
		if (cart == null) { // cart가 null 값일 때만 Arraylist 새로 생성
			cart = new ArrayList<String>(); // 새 장바구니 생성
		}
		
		cart.add(product); // 상품 추가
		session.setAttribute("cart", cart); // 세션에 상품 목록 저장
	%>
	<h2>장바구니에 <%= product %>이(가) 추가되었습니다.</h2>
	<a href="productList.jsp">상품 더 담기</a> <br><br>
	<a href="viewCart.jsp">장바구니 보기</a> <br><br>
</body>
</html>