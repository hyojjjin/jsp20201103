<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap09." %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

boolean login = false;

if(id != null && pw != null && id.equals(pw)) {
	login = true;
}
3041 5000 1137 3897

/* //로그인 성공 : main.jsp로 redirection
if(login) {
	response.sendRedirect("main.jsp");

	
	//세션에 유저정보 속성(attribute) 추가
	session.setAttribute("user", id);

	//rememberme 체크할 경우 세션을 유지하도록
	String remember = request.getParameter("remember");
	
	  if (remember != null && remember.equals("on")) {
		     Cookies cookies = new Cookies(request);
		     Cookie cookie = cookies.getCookie("JSESSIONID");
		     cookie.setMaxAge(24*60*60);
		     cookie.setPath(request.getContextPath());
		     cookie.setHttpOnly(true);
		     response.addCookie(cookie);
		     session.setMaxInactiveInterval(24*60*60);
	
		
	}
} else {

//로그인 실패 : loginForm.jsp 로 redirection
	response.sendRedirect("loginForm.jsp");
}
 */


if (login) {
	  // 로그인 성공
	  // 세션에 유저정보 속성(attribute) 추가
	  session.setAttribute("user", id);
	  // rememberme 체크할 경우 세션을 유지하도록
	  String remember = request.getParameter("remember");
	  
	  // JSESSIONID 쿠키 얻고, path, httponly setting.
	  Cookie cookie = cookies.getCookie("JSESSIONID");
	  cookie.setPath(request.getContextPath());
	  cookie.setHttpOnly(true);
	  
	  if (remember != null && remember.equals("on")) {
	    cookie.setMaxAge(24*60*60);
	    response.addCookie(cookie);
	    
	    session.setMaxInactiveInterval(24*60*60);
	  } else {
	    cookie.setMaxAge(-1);
	    response.addCookie(cookie);
	    
	    session.setMaxInactiveInterval(30*60);
	  }
	  // main.jsp 로 redirection
	  response.sendRedirect("main.jsp");
	} else {
	  //로그인 실패 : loginForm.jsp 로 redirection
	  response.sendRedirect("loginForm.jsp");
	}

	%>

