<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
/*
Object o = request.getAttribute("member");
System.out.println("fw;" + o);
*/
%>

<jsp:usebean id="member"
			 class="chap08.member.MemberInfo" scope="request"/>
<!-- member 객체가 있으면 있는 것을 꺼내옴 -->
			 
<%-- <%
chap08.member.MemberInfo member
	=(chap08.member.MemberInfo) request.getAttribute("member");
%>
꺼내올때 쓰는 것 --%>

<%
System.out.println("fw:" + member);
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