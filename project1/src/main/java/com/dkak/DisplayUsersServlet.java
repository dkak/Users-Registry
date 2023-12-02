package com.dkak;

import java.io.IOException;
import java.util.ArrayList;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQuery;
import javax.persistence.Persistence;
import javax.persistence.QueryHint;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DisplayUsersServlet extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
		// Calling service
		UserService us=new UserService();
		ArrayList<User> usersList =us.getAllUsers();

		// Attaching usersList to session
		HttpSession session = request.getSession();
		session.setAttribute("usersList", usersList);
				
		// Redirecting to jsp page 
		response.sendRedirect("displayUsers.jsp");

	}
}
