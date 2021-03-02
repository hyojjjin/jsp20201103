<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>

<%
String food = request.getParameter("food");

if (food != null) {
//	Map<String, Integer> map = new HashMap<String, Integer>();
	Map<String, Integer> cart = session.getAttribute("cart");
	if(cart == null) {
		cart = new HashMap<String, Integer>();
		session.setAttribute("cart", cart);
	}
	if(cart.containsKey(food) == false) {
		cart.put(food, 1);
	} else {
		cart.put(food, cart.get(food)+1); 
	}
}

/* if(food != null) {
	//세션에 추가
	
	List<String> cart = (List<String>) session.getAttribute("cart");
	if (cart == null) {
		cart = new ArrayList<>();
		session.setAttribute("cart", cart);
	}
	
	cart.add(food);	 */

%>
장바구니 종류 개수 :
<%

	int cnt = 0;
	for(int i = 0; i < cart.size()-1; i++) {
	 if(cart[i] != equals.cart[i+1]) {
	 cnt ++;
	 }
	}
%>

<%
}
%>




<form action="" method="post">
<select name="food" id="">
	<option value="water">물</option>
	<option value="pizza">피자</option>
	<option value="burger">버거</option>
	<option value="choco">초콜렛</option>
	<option value="icecream">아이스크림</option>
</select>
<br />
<input type="submit" value="장바구니 담기" />
<!--submit 누르면 현재페이지로 넘어감.  -->
</form>

<a href="cart.jsp">장바구니 보기</a>

</body>
</html>