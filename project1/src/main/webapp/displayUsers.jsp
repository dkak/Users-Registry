<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<meta charset="UTF-8">
	
		
		<link rel="stylesheet" href="style.css">		<!-- Linking with my css file used for styling -->

		<title>All Users</title>

	</head>

	
	<body>

		<!-- Navigation menu in fixed position on top of the page -->
		<div class="navigationMenu">
			<ul>
		  		<li><a href="homePage.jsp">Home</a></li>
		  		<li><a href="displayUsers" class="active">Display Users</a></li>
		  		<li><a href="registerUser.jsp">Register a new user</a></li>
			</ul>
		</div>
		
		
		
	<!----------- JAVA CODE IS USED FROM THIS POINT TO SHOW DATA ----------->

		<%--Importing all the dependent classes--%>		
		<%@page import="java.util.ArrayList"%>      
		<%@page import="com.dkak.User" %>
		<%@page import="java.util.Iterator" %> 
		
		
		
		<% 	
			ArrayList<User> usersList = (ArrayList)session.getAttribute("usersList");			// Get the usersList using the session ;			
		%>
			 
			
		<div class="displayingTable">
			<table cellspacing="2" cellpadding="2">
				
				
				<%

					if(!usersList.isEmpty())  								// Checking if the usersList is empty
					{
				%>
				
				<tr>
					<th>Firstname</th> <th>Lastname</th>
				</tr>
				
				<%
						Iterator<User> iterator = usersList.iterator();  	// Iterator interface
						
						while(iterator.hasNext())  							// iterating through all the data until the last record
						{
							User user = iterator.next(); 
				%>
				
				
				<!-- Printing firstname and lastname of every user -->
				<tr>
					<td><a href="displayDetailedUser?param=<%=user.getUserId() %>" target="blank" class="listItem"><%=user.getFirstname()%></a></td>
					<td><a href="displayDetailedUser?param=<%=user.getUserId() %>" target="blank" class="listItem"><%=user.getLastname()%></a></td>
				</tr>
				
				<%
						}
					}else{ 
				
				%>
						
				<tr> 
					<th>There are no registered Users</th>			<!-- Showing message in case where list is empty -->
				</tr>
				
				<% 			
						}
				%>
				
			</table>
		</div>
	<!-----------JAVA CODE FINISHED----------->
		
	</body>
</html>