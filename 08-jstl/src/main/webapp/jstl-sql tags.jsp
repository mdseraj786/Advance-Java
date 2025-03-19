<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - SQL Tags</title>
</head>
<style>
table {
	width: 100%; /* Table spans full width of container */
	border-collapse: collapse; /* Remove gaps between cells */
	margin: 20px 0; /* Add some spacing above and below */
	font-size: 16px; /* Font size for readability */
	text-align: left; /* Align text to the left */
}

/* Add borders to the table and cells */
th, td {
	border: 1px solid #ddd; /* Light gray border */
	padding: 8px; /* Add some padding for space */
}

/* Header row styling */
th {
	background-color: #f4f4f4; /* Light gray background */
	font-weight: bold; /* Make header text bold */
}

/* Alternate row background for readability */
tr:nth-child(even) {
	background-color: #f9f9f9; /* Light gray for even rows */
}
</style>
<body>
	<h1>This is SQL tags</h1>
	<p>this page is all about sql tag</p>
	<hr>
	<br>

	<h1>All Students are :</h1>

	<sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/collage" user="root"
		password="Seraj@123" var="ds" />

	<sql:query dataSource="${ds}" var="result">select * from student</sql:query>

	<table>
		<tr>
			<th>Roll No</th>
			<th>Name</th>
			<th>Marks</th>
			<th>City</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td>${row.rollno }</td>
				<td>${row.full_name }</td>
				<td>${row.marks }</td>
				<td>${row.city }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>