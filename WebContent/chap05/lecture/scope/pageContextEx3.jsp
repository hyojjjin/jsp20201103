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
pageContext.setAttribute("myattr1", "myVal1");
request.setAttribute("myattr1", "reqVal1");
session.setAttribute("myattr1", "sesVal1");
application.setAttribute("myattr1", "appVal1");
%>
<!-- 같은 이름 다른 밸류(걊) -->



<%=pageContext.findAttribute("myattr1") %>
<!--findAttribute 같은 이름이면 좁은 범위의 값을 구함  -->

<!-- 범위 : page < request < session < application -->

</body>
</html>