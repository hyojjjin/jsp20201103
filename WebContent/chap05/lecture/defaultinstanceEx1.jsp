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

<!--p114 표  -->

request(HttpServletRequest) : <%= request %> <br />
response(HttpServletResponse) : <%= response %> <br />
session(HttpSession) : <%= session %> <br />
out(jspWriter) : <%= out %> <br />


pageContext(PageContext) : <%= pageContext %> <br />
application(servletContext) : <%= application %> <br />
config(ServletConfig) : <%= config %> <br /> <!-- 거의 사용하지 않음 -->
page(Object) : <%= page %> <br /> <!-- 거의 사용하지 않음 -->

exception(Throwable) : <br />
</body>
</html>