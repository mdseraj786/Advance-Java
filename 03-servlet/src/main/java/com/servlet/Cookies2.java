package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class Cookies2
 */
@WebServlet("/Cookies2")
public class Cookies2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cookies2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		// get all cookie / fetch cookies
		
		Cookie cook[] = request.getCookies();
		boolean flag = false;
		String name = "";
		if(cook == null) {
			out.println("<h2> you are a new user go to home and submit your name </h2>");
			out.println("<h2> <a href = 'home.jsp' > click here go to home page </a>");
			return ;
		} 
		else {
			for(Cookie c : cook) {
				String temp = c.getName();
				
				if(temp.equals("name")) {
					flag = true;
					name = c.getValue();
				}
			}
		}
		
		if(flag) {
			out.println("<h2> Hello! " + name + " Welcome back to my Website...... </h2>");
			out.println("<h2> Thankyou!!</h2>");
		}
		else {
			out.println("<h2> you are a new user go to home and submit your name </h2>");
			out.println("<h2> <a href = 'home.jsp' > click here go to home page </a>");
			return ;
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
