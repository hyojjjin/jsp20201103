<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="my" tagdir="/WEB-INF/tags/lecture" %>
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

<sctipt>
 $(function() {
 	$("#modify-btn").click(function() {
 		$("#title.input").removeAttr("readonly");
 		$("#body-textarea").removeAttr("readonly");
 		$("#submit-btn").removeAttr("hidden");
 	});
 });
 
 </sctipt>

</head>
<body>
<c:url value="/sample3/post/remove" var="removeURL">
	 <c:param name="id" value="${post.id }" />
</c:url>

	<div class="container">
		<h1>방명록</h1>
		<form action="<%=request.getContextPath() %> /sample3/post/update" methoed="post">
			<input type="text" hidden value="${post.id }" name="id"/>
	
			제목 : <input id="title-input" type="text" name="title" value="${post.title }" readonly />
			<%-- request.getAttribute("post").getTitle() --%>
			<br />
			<textarea id="body-textarea" name="body" id="" cols="30" rows="5" readonly>${post.body }</textarea>
			<br />
			<input type="submit" class="btn btn-primary" hidden id="submit-btn" value="등록" />
		</form>

		<!-- button.btn.btn-warning#modify-btn -->
		<button class="btn btn-warning" id="modify-btn">수정</button>
		<a href="${removeURL }" class="btn btn-danger"
			onclick="return confirm('삭제하시겠습니까?')">삭제</a>
</body>
</html>