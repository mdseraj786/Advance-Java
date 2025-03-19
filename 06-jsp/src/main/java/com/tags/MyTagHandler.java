package com.tags;

import java.util.Date;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;

public class MyTagHandler extends TagSupport {

	@Override
	public int doStartTag() throws JspException {
		// TODO Auto-generated method stub
		
		try {
//			 task tags.....
			JspWriter out = pageContext.getOut();
			out.println("<h1> this is my custome tag form </h1>");
			out.println("<p> this is custom paragraph... </p>");
			out.println("<h3> " + new Date()+ " </h3>" );
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return SKIP_BODY;
	}
	
}
