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

초기화 파라미터 목록:

<!-- 처음 로딩될때 필요한 정보들을 읽는 메소드 -->
<!-- WEB-INF 폴더에 있는 web.xml 파일에 있는 정보를 읽어온다. -->

<ul>
<%
	Enumeration<String> initParamEnum = application.getInitParameterNames();
	while (initParamEnum.hasMoreElements()) {
	String initParamName = initParamEnum.nextElement();
%>

<li><%= initParamName %> =
<%=application.getInitParameter(initParamName)%>

<%
}
%>
</ul>
</body>
</html>