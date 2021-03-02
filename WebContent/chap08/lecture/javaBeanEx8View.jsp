<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="car" class="chap08.Car" />

<%--
<jsp:setProperty name="car" property="name" param="name" />
<jsp:setProperty name="car" property="speed" param="speed" />
 --%>
 
<%--
<jsp:setProperty name="car" property="name"  />
<jsp:setProperty name="car" property="speed" />
<!-- 파람과 프로퍼티값이 같으면 파람 생략 가능 -->
--%>

<jsp:setProperty name="car" property="*" />
<!-- 프로퍼티의 값을 "" *으로 두면 같은 일을 하는 것을 찾아서 자동으로 찾아냄 -->
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
<jsp:getProperty property="name" name="car" /> <br />
<jsp:getProperty property="speed" name="car" /> <br />
</body>
</html>