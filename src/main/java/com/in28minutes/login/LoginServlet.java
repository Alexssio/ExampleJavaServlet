package com.in28minutes.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/login.do")
public class LoginServlet extends HttpServlet {
	private LoginService validation = new LoginService();
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {	
		
		//String attribute = request.getParameter("name");
		//String pass = request.getParameter("password");
		//request.setAttribute("name", attribute);
		//request.setAttribute("password", pass);
		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {	
		String username = request.getParameter("name");
		String pass = request.getParameter("password");
		if (validation.isUserValid(username, pass)){
			request.setAttribute("name", username);
			request.setAttribute("password", pass);
			request.getRequestDispatcher("/WEB-INF/views/welcomepage.jsp").forward(request, response);
		}
		else {
			request.setAttribute("errore", "Login errato");
			request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
		}
	}
}
