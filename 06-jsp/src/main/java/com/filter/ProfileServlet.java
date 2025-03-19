package com.filter;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ProfileServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("profile servlet Executed....");
		PrintWriter out = response.getWriter();
    
		out.println("<h1>Welcome to Profile Servlet </h1>");
		out.println("<h2> this is Profile page  </h2>");
	}

}
