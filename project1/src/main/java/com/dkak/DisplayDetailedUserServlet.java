package com.dkak;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DisplayDetailedUserServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		// Retrieving userid 
		int userId = Integer.parseInt(request.getParameter("param"));
	
		UserService us = new UserService();
		ArrayList<Object> al=us.getUserDetails(userId);
		
		User user=(User)al.get(0);
		Addresses addresses=(Addresses)al.get(1);
		
		// Attaching User object to session
		HttpSession session = request.getSession();
		session.setAttribute("user", user);
		session.setAttribute("addresses", addresses);
				
		// Redirecting to jsp page  
		response.sendRedirect("displayDetailedUser.jsp");
	}
}
