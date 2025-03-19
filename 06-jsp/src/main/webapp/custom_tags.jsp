<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="/WEB-INF/mylib" prefix="t"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>custom tags - JSP</title>
</head>
<body>
	<h1>This is custom Tags</h1>
	<hr>
	<t:mytag />
	<hr>

	<t:printTable number="15" color = "red"/>
	<hr>
	
	<t:printTable number="57" color = "green" />
	<hr>
	
	<t:printTable number="101" color = "blue" />
	<hr>
	
	
</body>
</html>