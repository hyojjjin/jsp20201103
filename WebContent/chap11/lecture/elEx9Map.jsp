<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
Map<String, String> map = new HashMap<>();
map.put("a", "java");
map.put("b", "html");
map.put("c", "김효진");

map.put("3", "servlet"); 
map.put("class", "spring"); 
map.put("my key", "key");
/*네모 괄호 연산자를 사용해야함  */


request.setAttribute("mymap", map);

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
${mymap }

<hr />
${mymap.a } <br />
${mymap.b } <br />
${mymap.c } <br />

${mymap["3"] } <br />
${mymap["class"] } <br />
${mymap["my key"] } <br />


<hr />
${mymap["a"] } <br />
${mymap[b] } <br />
${mymap[c] } <br />
<!-- 따옴표가 없으면 값을 읽을 수 없음, b라는 어트리뷰트를 페이지 내에서 찾음. -->

</body>
</html>