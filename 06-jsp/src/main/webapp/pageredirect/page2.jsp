<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color: red;">
	<h1>this is page two...</h1>
	
	
	<%
	out.println("Wait....  redirecting.....");
	response.sendRedirect("page3.jsp");
	%>
</body>
</html>