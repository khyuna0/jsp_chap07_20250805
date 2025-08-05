<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 상품 추가</title>
</head>
<body>
	<%
	
		request.setCharacterEncoding("utf-8");
	
		String product = request.getParameter("product");
	
		Cookie[] cookies = request.getCookies(); 
		
		String savedCart ="";
		String newCart = "";
		
		if (cookies != null ) { // 쿠키가 널 값이 아닐 때만 -> 기존 쿠키가 존재할 때만 기존 쿠키에 저장된 상품 목록
			for(Cookie cookie : cookies ) {
				if (cookie.getName().equals("cart")) {
				savedCart = cookie.getValue(); // 기존 장바구니에 있던 상품 목록
				}
			}
		}
		
		
		if (savedCart.isEmpty()) {
			newCart = product;
		} else {
			newCart = savedCart + "/" + product;
		}
		
		Cookie cartCookie = new Cookie("cart", newCart);
		cartCookie.setMaxAge(60*60*24*7);
		response.addCookie(cartCookie);
		
	%>
	<a href = "viewCart.jsp">장바구니 보기</a> <br><br>
	<a href = "productList.jsp">상품 추가하기</a>
	
</body>
</html>