package com.dreamcode;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

public class LoginFilter implements Filter {

    public LoginFilter() {
        
    }

	public void destroy() {
		
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		String uname= request.getParameter("uname");
		String pwd= request.getParameter("pwd");
		PrintWriter pw= response.getWriter();
		pw.print("<html>");
		//pw.print("<body bgcolor='cyan'>");
		if(!(uname!=null && pwd!=null)){
			pw.print("You are not logged in...");
			pw.print("<a href='index.jsp'> Click here to Login</a>");
		}
			
		else if(uname.equals("admin")&& pwd.equals("123456"))
			chain.doFilter(request, response);
		
		else{
			pw.print("The Username and Password combination didnt match");
			pw.print("<a href='index.jsp'> Click here to Login</a>");
		}
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
