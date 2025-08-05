<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 장바구니 보기</title>
</head>
<body>
	<%
		Cookie[] cookies = request.getCookies();
		String savedCart ="";
		
		if (cookies != null ) { 
			for(Cookie cookie : cookies ) {
				if (cookie.getName().equals("cart")) {
				savedCart = cookie.getValue(); 
				}
			}
		}
	
	if (savedCart == null) {
		out.println("장바구니에 상품 없음");
	} else {
		out.println(savedCart);
	}
		
	%>
</body>
</html>