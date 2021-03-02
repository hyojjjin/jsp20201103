<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap08.Car" %>
<% request.setCharacterEncoding("utf-8"); %>


<jsp:useBean id="car" class="chap08.Car">
	<jsp:setProperty property="name" name="car" value="김효진" />

</jsp:useBean>

<jsp:useBean id="car2" class="chap08.Car">
	<jsp:setProperty property="name" name="car2" value="김효진2" />
</jsp:useBean>

<%
	Car car3 = new Car();
	car3.setName("benz");
	request.setAttribute("car", car3);
	/* 리퀘스트 영역이라 우선 순위에 따라 page 영역에서 찾은 것만 나옴. */
%>

<%--
<%
pageContext.setAttribute("car", car);
pageContext.setAttribute("car2", car2);
%> 이것과 같은 일을 함.--%>

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
${car } <!--각 영역의 "car" attribute를 찾음  -->
		<!--찾는 순서 : page, request, session, application 
						페이지에서 발견되면 리퀘스트에서 못 찾음. -->
<br />
${car.name }
<br />
${car2 }
<br />
${car3 } <!--없는 것을 적으면 무시됨. 값이 없어도 익셉션이 나타나지않음.  -->

</body>
</html>