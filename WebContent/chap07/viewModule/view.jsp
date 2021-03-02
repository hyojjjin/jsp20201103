<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<!-- #경로1 -->
<%-- <%
	String code = request.getParameter("code");
	String viewPageURL = null;
	
	if(code.equals("A")) {
			viewPageURL = "/chap07/viewModule/a.jsp";
		} else if (code.equals("B")) {
			viewPageURL = "/chap07/viewModule/b.jsp";
		} else if (code.equals("C")) {
			viewPageURL = "/chap07/viewModule/c.jsp";
		}
%> --%>



<!-- #경로2 -->
<%
	String code = request.getParameter("code");
	String viewPageURL = null;
	
	if(code.equals("A")) {
			viewPageURL = "a.jsp";
		} else if (code.equals("B")) {
			viewPageURL = "b.jsp";
		} else if (code.equals("C")) {
			viewPageURL = "c.jsp";
		}
%>

<jsp:forward page="<%= viewPageURL%>"></jsp:forward>