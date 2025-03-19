package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class HiddenFormField1
 */
@WebServlet("/HiddenFormField1")
public class HiddenFormField1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HiddenFormField1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("user_name");
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		out.println("<h2> Hii !  Mr. "+name + " </h2>");
//		out.println("<h2> <a href=\"HiddenFormField2? type=\"hidden\" name="+name +" \"> Do you want to go to 2nd servlet </a>  </h2>");

		// hidden form field coding...
		 String htmlResponse = "<!DOCTYPE html>"
	                + "<html lang='en'>"
	                + "<head>"
	                + "    <meta charset='UTF-8'>"
	                + "    <meta name='viewport' content='width=device-width, initial-scale=1.0'>"
	                + "    <title>Servlet Example</title>"
	                + "    "
	                + "</head>"
	                + "<body>"
	                + "    <form action='HiddenFormField2' >"
	                + "    <input type = 'hidden' name = 'user_name' value = '"+name + "' />"
	                + "    <button type='submit'> go to 2nd servlet </button>"
	                + "    "
	                + "    </form>"
	                + "</body>"
	                + "</html>";
		 out.println(htmlResponse);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
