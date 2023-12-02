<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>

		<meta charset="UTF-8">
		
		
		<link rel="stylesheet" href="style.css">		<!-- Linking with my css file used for styling -->
		
		<title>User Details</title>
	</head>
	
	<body>
	
	
	<!----------- JAVA CODE IS USED FROM THIS POINT TO SHOW DATA ----------->
	
		<%--Importing all the dependent classes--%>
		<%@page import="com.dkak.User" %>
		<%@page import="com.dkak.Addresses" %>
		
		
		<% 	
			User user = (User)session.getAttribute("user");						// Getting the user,addresses objects using the session 
			Addresses addresses=(Addresses)session.getAttribute("addresses");
		%>
			 
				
		<div class="displayingDetailedTable">
			<table cellspacing="2" cellpadding="2">
				
				<tr><th>Firstname</th><th>Lastname</th><th>Gender</th><th>Birthday</th><th>WorkAddress</th><th>HomeAddress</th></tr>
				
				<%
					if(session.getAttribute("user") != null)  					// Checking for the User object 
					{
								
				%>
				
				<tr>
					<td class="listItem"><%=user.getFirstname()%></td>			<!-- Printing User's Data in Table -->
					<td class="listItem"><%=user.getLastname()%></td>
					<td class="listItem"><%=user.getGender()%></td>
					<td class="listItem"><%=user.getBirthdate()%></td>
					<td class="listItem"><%=addresses.getWorkAddress()%></td>
					<td class="listItem"><%=addresses.getHomeAddress()%></td>
				</tr>
				
				<%
						} else{ 
				%>
				
				<tr> 
					<td>Error! Object User is null</td>							<!-- Showing error message in case where User object is null -->
				</tr>
				
				<% 			
						}
				%>
	<!----------- JAVA CODE FINISHED ----------->
					
			</table>
		</div>
	
	</body>
</html>