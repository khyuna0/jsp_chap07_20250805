<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<h2>상품을 선택하세요</h2>
	<hr>
	<form action="addToCart.jsp">
		<select name="product">
			<option value="스마트폰">스마트폰</option>
			<option value="노트북">노트북</option>
			<option value="아이패드">아이패드</option>
			<option value="무선이어폰">무선이어폰</option>
		</select>
		<input type="submit" value="장바구니에 담기">
	</form>
	<a href="viewCart.jsp" >장바구니 바로가기</a>
	</body>
</html>