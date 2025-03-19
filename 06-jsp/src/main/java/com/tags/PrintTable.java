package com.tags;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.TagSupport;

public class PrintTable extends TagSupport {

	private int number;
	private String color;

	// setter
	public void setNumber(int number) {
		this.number = number;
	}

	public void setColor(String color) {
		this.color = color;
	}

	@Override
	public int doStartTag() throws JspException {

		try {
			JspWriter out = pageContext.getOut();
			out.print("<div style = 'color : " + color + " ' > ");
			for (int i = 0; i <= 10; i++) {
				out.println("<p> " + number + " x " + i + " = " + i * number + "</p >");
			}
			out.print("</div>");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		// print table

		return SKIP_BODY;
	}

}
