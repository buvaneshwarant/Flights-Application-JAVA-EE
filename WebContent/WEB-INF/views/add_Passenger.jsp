<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>World Adventure Airlines</title>

<link rel="stylesheet" href="resources/css/theme.css" />


</head>
<body>

	<div class="container">

		<div class="title">Add a passenger</div>

		<%
			if(request.getAttribute("errors")!= null){


		%>
			<fieldset>
				
				<legend>Errors</legend>
				
				<ul>
					<% if(request.getAttribute("firstname_error") != null) { %>
						<li class="error"> First name error</li>
					<%	} %>

					<% if(request.getAttribute("lastname_error") != null) { %>
						<li class="error"> last name error</li>
					<%	} %>

					<% if(request.getAttribute("dob_error") != null) { %>
						<li class="error"> date format error</li>
					<%	} %>

				</ul>

				</fieldset>

		<%
			}

			%>


		<fieldset>

			<legend>Passenger details</legend>

			<form action="addPassenger" method="post">

				<div class="inputField">
					<label for="first-name" class="inputlabel"> First Name: </label> <input
						name="first-name" type="text" value="<%= request.getAttribute("first_name") %>"></input>
				</div>

				<div class="inputField">
					<label for="last-name" class="inputlabel"> Last Name: </label> 
					<input name="last-name" type="text" value="<%= request.getAttribute("last_name") %>"></input>
				</div>

				<div class="inputField">
					<label for="dob" class="inputlabel"> DOB Name: </label> 
					<input name="dob" type="text" value="<%= request.getAttribute("dob") %>"></input>
				</div>

				<div class="inputField">
					<label for="gender" class="inputlabel"> Gender: </label> <select name="gender">
						<option value="Male">Male</option>
						<option value="Female">Female</option>
					</select>
				</div>
				
		</fieldset>
		
		<div class="inputField" id="submitField">
			<input id="submitBtn" type="submit" value="Add new passenger"></input>
		</div>

		</form>

	</div>

</body>

</html>