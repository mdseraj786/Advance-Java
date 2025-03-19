<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import="java.sql.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jdbc in jsp - JSP </title>
</head>
<body>
<h1>this data is without database </h1>
roll no : 1001 <br>
name    : parash <br>
marks   : 84 <br>
city    : patna


<h1>these data are fetch by the database</h1>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/collage";
		String user = "root";
		String pass = "Seraj@123";
		
		Connection con = DriverManager.getConnection(url,user,pass);
		
		Statement st = con.createStatement();
		String query = "select * from student";
		
		ResultSet rs = st.executeQuery(query);
		out.print("<hr> ");
		while(rs.next()){
			String name = rs.getString("full_name");
			String city = rs.getString("city");
			int mark = rs.getInt("marks");
			int rollno = rs.getInt("rollno");
			
			out.println("roll no : "+ rollno + "<br>");
			out.println("name    : "+ name + "<br>");
			out.println("marks   : "+ mark + "<br>");
			out.println("city    : "+ city + "<br>");
			out.print("<hr> ");
			
		}
		
	%>
</body>
</html>