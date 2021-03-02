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

<h1>main 2 jsp</h1>
<h3><%=request.getParameter("param") %></h3>
<!--jsp:forward 액션태그로 인해서 무시.  -->

<!--jsp:forward를 사용하면!! forward 안쪽 코드만 실행  -->

<jsp:forward page="subEx2.jsp">
	<jsp:param value="newVal" name="newParam" />
</jsp:forward>

<h3><%=request.getParameter("param") %></h3>
<!--경로가 바뀌어서 무시됨  -->

</body>
</html>