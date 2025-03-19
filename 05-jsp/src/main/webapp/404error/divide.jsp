<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page errorPage="error-er.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result of division </title>
</head>
<body>
	<h1>this is my divide page</h1>
	<%
	// fetch data 
		String a = request.getParameter("first");
		String b = request.getParameter("second");
		
		// converting string to integer
		int dividend = Integer.parseInt(a);
		int divisor = Integer.parseInt(b);
		
		// solve problem
		int quotient = dividend/divisor;
		int remainder = dividend % divisor;
		
	%>
	 
	<h1>Quatient is = <%= quotient %></h1>
	<h1>Remainder is = <%= remainder %></h1>
</body>
</html>