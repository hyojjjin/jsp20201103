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
contextPath : <%=request.getContextPath() %>
<br />
<a href = "/myjsp/chap04/lecture/bufferEx1.jsp">buffer </a>
<!--context path는 작업 중 바뀔 수 있기때문에 메소드를 넣어준다.  -->
<a href = "<%=request.getContextPath() %>/chap04/lecture/bufferEx1.jsp">buffer </a>
</body>
</html>