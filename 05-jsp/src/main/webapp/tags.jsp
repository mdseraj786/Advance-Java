<!-- # Directives tags  -->

<!-- * page directives  -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="java.util.Random , java.util.ArrayList"%>

<%@ page isELIgnored="false"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color: aqua; padding: 0em; margin: 0px;">
	<h3># this is a example of declaration tag</h3>

	<!-- declaration tag -->
	<%!int a = 50;
	int b = 100;
	String name = "Seraj";

	public int doSum(int a, int b) {
		return a + b;
	}

	public String reverse() {
		StringBuffer sb = new StringBuffer(name);
		return sb.reverse().toString();
	}%>

	<!-- include Directive -->
	
	<%@ include file="header.jsp"%>


	<!-- taglib directive -->
	<hr>
	<h2>Taglib Directive </h2>
	<c:set var="username" value="TestUser" />
	<c:out value="${username}" />
	<br>
	<c:if test="${10 > 5}">
		<h3>this is write 10 > 5 </h3>
	</c:if>
	<br>
	<h3>sum of 45 and 135 is <c:out value="${45 + 135 }"></c:out></h3> 

	<!-- scriptlet tag -->
	<hr>
	<h2> Scriptlet Tag</h2>
	<%
	out.println(a);
	out.println("<br>");
	out.println(b);
	out.println("<br>");
	out.println("Sum is = " + doSum(a, b));
	out.println("<br>");
	out.print(name);
	out.println("<br>");
	out.println(reverse());
	%>

	<!-- Expression tag -->
	<hr>
	<h2>Expression Tag</h2> 
	<h2 style="color: red;">
		Hello Mr!
		<%=name%></h2>
	<br>
	<h2 style="color: blue;">
		Sum is =
		<%=doSum(a, b)%>
	</h2>


	<!-- generate random number using java Random class -->
	<h2>
		Random Number is :
		<%
	Random random = new Random();
	/* random no in b/t 1 to 9 */
	int num = random.nextInt(10);
	out.println(num);
	%>
	</h2>
	
	

</body>
</html>