package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class Servlet1 extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = req.getParameter("name");
		
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
		out.println("<h2> Hello! "+name+ " Welcome to my website.....");
		out.println("<h2> <a href = 'Servlet2' > Go to Servlet 2 </a> </h2>");
		
	}
	
}
