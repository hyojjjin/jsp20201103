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
<h1>main jsp</h1>

<jsp:forward page="subEx1.jsp"></jsp:forward>
<!--절대 경로 상대 경로  -->
<!-- forword 경로 바꿈. 기존 흐름은 무시되고 새로운 경로를 생성.-->
<!-- 브라우저내에서는 sub클래스의 경로를 알 수 없음. -->

<h1>main footer</h1>


</body>
</html>