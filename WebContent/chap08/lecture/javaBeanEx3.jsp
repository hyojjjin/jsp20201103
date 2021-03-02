<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
/*
MemberInfo member= new MemberInfo()
pageContext.getAttribute("member", member);

평소 이렇게 두줄로 쓰던 것을 유즈빈을 이용해서 씀.
*/

%>

<jsp:usebean id="member" class = "chap08.member.MemberInfo">
</jsp:usebean>

<!-- 왜 이렇게 쓰는 지는 다음 챕터에서 알게됨 -->

<%
Object o = pageContext.getAttribute("member");
System.out.println(o);
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

</body>
</html>