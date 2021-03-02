<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="member" scope="request" class="chap08.member.MemberInfo" />
<%
	member.setId("내사랑");
	member.setName("이문형");
%>

<jsp:forward page="useObject.jsp" />
