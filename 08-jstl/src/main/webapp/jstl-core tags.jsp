<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - core tags</title>
</head>
<body>
	<h1>this is JSTL tags Example</h1>
	<!-- 1. out tags  -->
	<!-- 2. set tag  -->
	<br>
	<hr>
	<c:set var="jstlname" value="core-tags" scope="application"></c:set>
	<h1>
		<c:out value="${jstlname}"></c:out>
	</h1>
	<%-- ${jstlname} : This is Expression language --%>
	<a href="test_scope.jsp">do you want to test your scope</a>

	<!-- remove tag -->

	<c:remove var="jstlname"></c:remove>
	<h1>
		<c:out value="${jstlname}">this is default value</c:out>
	</h1>

	<br>
	<hr>

	<!-- 4.  if tag -->

	<c:set var="number" value="20"></c:set>
	<c:if test="${number > 0 }">
		<h2>this is true that number is greater than zero</h2>
		<br>
	</c:if>


	<!-- 5. choose, when, otherwise : use as java switch -->
	<c:choose>
		<c:when test="${number > 0 }">
			<h2>This is first case</h2>
			<h3>number is positive</h3>
		</c:when>

		<c:when test="${number < 0 }">
			<h2>This is second case</h2>
			<h3>number is negative</h3>
		</c:when>

		<c:otherwise>
			<h2>this is default case</h2>
			<h3>number is equal to zero</h3>
		</c:otherwise>

	</c:choose>
	<br>
	<hr>

	<!-- 6. foreach tag : for repeating and traversing (loop) -->
	<c:forEach var="j" begin="1" end="10">
		<h4>
			value of j is :
			<c:out value="${j}"></c:out>
		</h4>
	</c:forEach>
	
	
	<!-- 7. redirect tag  -->
	<!--  url tag , param tag  -->
	<c:url var="myurl" value="https://www.google.com/search">
		<c:param name="q" value="learn code with durgesh sevlet"></c:param>
	</c:url>
	
	<c:out value="${myurl }"></c:out>
	
	<%-- <c:redirect url="${myurl }"></c:redirect> --%>
	
	
	
</body>
</html>