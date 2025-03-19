<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="align-items: center;">
		<h1>This is Function tags</h1>
		<p>this page is all about function tag</p>

		<c:set var="name" value="Techsoft India" scope="session"></c:set>
		<h2>
			<c:out value="${name}"></c:out>			
		</h2>
		<h2> length of the name is 
			<c:out value="${fn:length(name) }"></c:out>
		</h2>
		<c:out value="${fn:toUpperCase(name) }"></c:out>
	</div>
</body>
</html>