<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
		
		<link href="style.css" rel="stylesheet" type="text/css">										<!-- Linking with my css file used for styling -->
		
		
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">	<!-- Linking with date tool -->
		
		<title>Registration</title>
		
	</head>
	<body>
	
	<div class="navigationMenu">												<!-- Navigation menu in fixed position on top of the page -->						
			<ul>
		  		<li><a href="homePage.jsp">Home</a></li>
		  		<li><a href="displayUsers">Display Users</a></li>
		  		<li><a href="registerUser.jsp" class="active">Register a new user</a></li>
			</ul>
		</div>
		
		<div class="registrationTable">											<!--Using table to create registration form -->
			<table>
				<form action="insert" method="post">
					<tr>
		                <td>															
		                	<input type="text" name="name" placeholder="Name" required pattern="[A-Za-z]{3,}" autocomplete="off" oninvalid="this.setCustomValidity('Enter a valid name')" onchange="this.setCustomValidity('')"/><label>*</label>
		                </td>
	           		</tr>
	           		
	           		<tr>		       
		                <td>
		                	<input type="text" name="sname" placeholder="Surname" required pattern="[A-Za-z]{3,}" autocomplete="off" oninvalid="this.setCustomValidity('Enter a valid surname')" onchange="this.setCustomValidity('')"/><label>*</label>
		                </td>
	           		</tr>
	
	           		<tr>
		                <td>
		                	<select name="gender" required oninvalid="this.setCustomValidity('Choose your gender')" onchange="this.setCustomValidity('')">
								<option hidden value="">Gender</option>
								<option value="female">F</option>
						  		<option value="male">M</option>
							</select>
							<label>*</label>
		                </td>
	           		</tr>
	           		
	           		
	           		<!-- type date is driving the program to my script,not working as the html element date --> 
	            	<tr>
		                <td>
							<input type="date" name="birthdate" placeholder="Date of Birth" class="date" required autocomplete="off"  oninvalid="this.setCustomValidity('Pick a valid date')" onchange="this.setCustomValidity('')"/><label>*</label>																							
						</td>																		
	           		</tr>
 
	           		
	         		<tr>
		                <td>
		                	<input type="text" name="workAddress" placeholder="Work Address" autocomplete="off" pattern="[A-Za-z]{2,}[A-Za-z0-9\s]+" oninvalid="this.setCustomValidity('Enter a valid address')" onchange="this.setCustomValidity('')"/>
		                </td>
	           		</tr>
	           		
	           		<tr>
		                <td>
		                	<input type="text" name="homeAddress" placeholder="Home Address" pattern="[A-Za-z]{2,}[A-Za-z0-9\s]+" autocomplete="off" oninvalid="this.setCustomValidity('Enter a valid address')" onchange="this.setCustomValidity('')"/>
		                </td>
	           		</tr>
	          	
					<tr>
	           			<td id="requiredFieldsTD">
	           				<label id="requiredFieldsLabel">*Required fields</label>
	           			</td>
	           		</tr>
	           		<tr>
	           			<td>
	           				<input type="submit" value="Sign-up" id="submitButton"/>
	           			</td>
					</tr>
					
				</form>
			</table>
		</div>
		
		<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>			<!-- Linking with Date tool -->
		
		<script src="script.js"></script>										<!-- Linking with my script file -->
			
	</body>
</html>