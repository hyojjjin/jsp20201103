<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
response.sendRedirect("redirectEx1target.jsp");
/*요청 응답을 다시 응답함.
redirectEx1target으로 요청해라는 요청.*/
%>
