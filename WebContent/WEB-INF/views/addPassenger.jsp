<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>World Adventure Airlines</title>
</head>
<body>

	<div class="container">

		<div class="title">Add a passenger</div>

		<fieldset>

			<legend>Passenger details</legend>

			<form action="AddPassenger" method="post">

				<div class="inputField">
					<label form="first-name"class"inputlabel"> First Name: </label> <input
						name="first-name" type="test"></input>
				</div>

				<div class="inputField">
					<label form="last-name"class"inputlabel"> First Name: </label> <input
						name="last-name" type="test"></input>
				</div>

				<div class="inputField">
					<label form="dob"class"inputlabel"> First Name: </label> <input
						name="dob" type="test"></input>
				</div>

				<div class="inputField">
					<label form="gender"class"inputlabel"> First Name: </label> <select
						name="gender">
						<option value="Male">Male</option>
						<option vlaue="Female">Female</option>
					</select> <input name="gender" type="test"></input>
				</div>
		

		<div class="inputField" id="submitField">
			<input id="submitBtn" type="submit" value="Add new passenger">
		</div>

		</form>

		</fieldset>
		
	</div>

</body>

</html>