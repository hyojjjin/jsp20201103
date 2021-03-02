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
<form action="elExParamView">
<!-- label*5>input:checkbox[name=food]^br -->
<label for="">딸기<input type="checkbox" name="food" id="berry" /></label>
<label for="">바나나<input type="checkbox" name="food" id="banana" /></label>
<label for="">물<input type="checkbox" name="food" id="water" /></label>
<label for="">커피<input type="checkbox" name="food" id="coffee" /></label>
<label for="">케잌<input type="checkbox" name="food" id="cake" /></label>
<br />
<input type="submit" value="등록" />
</form>
</body>
</html>