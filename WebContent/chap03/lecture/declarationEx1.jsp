<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	int i = 3;
	static int j = 10;
%>
<!-- 위치가 중요하지 않음. 보통 맨 위에 올려쓰자. -->

<%!
int k = 20;
%>

<%!
void mymethod() {
	System.out.println("hello");
}

static void mymethod2() {
	System.out.println("hello static");
}
%>

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


<h1>Lorem ipsum dolor.</h1>
<%this.mymethod(); %>
<!-- 인스턴트메소드라서 this를 붙여도 되고 안붙여도 된다. -->

<%mymethod2(); %>

</body>
</html>