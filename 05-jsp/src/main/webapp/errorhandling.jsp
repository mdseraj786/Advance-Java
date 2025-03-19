<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!int a = 200;
	int b = 15;%>
	
	<% 
	int division = a/b;
	%>
	
	<h3>Division = <%= division %></h3>

</body>
</html>