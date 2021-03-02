<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="myAttr" %>
<%@ attribute name="myAttr2" requires="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<h3>attribute  사용 태그</h3>

<h3>받은 myAttr : ${myAttr }</h3>
<h3>받은 myAttr2 : ${myAttr2 }</h3>
<!--attr2는 requires가 true므로 요 태그 사용 시 필수 사용.  -->