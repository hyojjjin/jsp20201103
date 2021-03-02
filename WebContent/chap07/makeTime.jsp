<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	Calendar cal = Calendar.getInstance();
	/*getInstance() 클래스에서 객체를 가져오는 메소드.
	Calendar라는 클래스에서 객체 하나를 가져온다.*/
	request.setAttribute("time", cal);
%>

<jsp:forward page="/chap07/viewTime.jsp"></jsp:forward>