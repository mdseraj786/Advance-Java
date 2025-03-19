package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import jakarta.servlet.Servlet;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;

public class FirstServlet implements Servlet{

	ServletConfig conf;

	@Override
	public void init(ServletConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		this.conf = conf;
		System.out.println("creating object......");
	}

	@Override
	public void service(ServletRequest res, ServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("service method called...");
		// set the content type of the response
		PrintWriter out = resp.getWriter();
		out.print("<h1> this is my first servlet creation by using servlet interface </h1>");
		out.print("<h2> todays date and time is = " + new Date().toString() + "</h2> ");
	}

	@Override
	public void destroy() {
		System.out.println("service is going to destroy......");
	}
	
	@Override
	public ServletConfig getServletConfig() {
		return conf;
	}

	@Override
	public String getServletInfo() {
		// TODO Auto-generated method stub
		return "this method is created by seraj...."; 
	}

}
