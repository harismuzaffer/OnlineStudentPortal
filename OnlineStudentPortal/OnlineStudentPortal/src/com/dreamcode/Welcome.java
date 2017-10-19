package com.dreamcode;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Welcome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Welcome() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Inside Welcome Servlet.");
		String uname=request.getParameter("uname");
		HttpSession session=request.getSession();
		session.setAttribute("uname", uname);
		String s=(String)session.getAttribute("uname");
		if(s==null)
			response.sendRedirect("index.jsp");
		else
		{
			PrintWriter pw = response.getWriter();
			pw.println("<html>");
			pw.println("<body bgcolor='#000000'>");
	        pw.println("<font color='#ffffff'>WELCOME TO STUDENT MANAGEMENT SYSTEM</font>");
	        pw.println("<a href='main.jsp'><font color='cyan'>click here to continue></font></a>");  
	        pw.println("</html>");
	        pw.println("</body>");
		}
	}

}
