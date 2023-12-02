package com.dkak;

import java.io.IOException;
import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 * Servlet implementation class AddServlet
 */
public class InsertServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// Retrieving data  
		String name=String.valueOf(request.getParameter("name"));
		String sname=String.valueOf(request.getParameter("sname"));
		String gender=String.valueOf(request.getParameter("gender"));
		String bdate=String.valueOf(request.getParameter("birthdate"));
		String workAddress=String.valueOf(request.getParameter("workAddress"));
		String homeAddress=String.valueOf(request.getParameter("homeAddress"));
		
		Date birthdate=null;
	    try {
			birthdate=new SimpleDateFormat("dd/MM/yyyy").parse(bdate);
		} catch (ParseException e) {
			e.printStackTrace();
		}  
	    	
		User u = new User(name,sname,gender,birthdate);
    	Addresses a = new Addresses(workAddress,homeAddress);
    	
		// Calling service
    	UserService us = new UserService();
    	us.insertObjects(u,a);
    	
    	
		response.sendRedirect("registerUser.jsp");
	}

}
