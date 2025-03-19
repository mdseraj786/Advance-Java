<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Testing - JSTL</title>
</head>
<body>
	<h1>this page is test the scope of variable or other value</h1>
	
	<c:out value="${jstlname}"></c:out>
</body>
</html>