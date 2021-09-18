<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="bootstrapHead.jsp"></jsp:include>

<title>Add New Patient</title>
</head>
<body>
	<div>
		<form action="add.do" method="POST" >
			<h2>Patient Data</h2>
			<br>
		<h5> 
			<br>
			First Name: <input type="text" name="firstName"> 
			<br>
			Middle Initial: <input type="text" name="middleInitial"> 
			<br>
			Last Name: <input type="text" name="lastName">
			<br>
			Date of Birth: <input type="text" name="dateOfBirth"> 
			<br>
			SSN: <input type="text" name="ssn"> 
			<br>
			Address: <input type="text" name="address"> 
			<br>
			City: <input type="text" name="city">
			<br>
			State: <input type="text" name="state"> 
			<br>
			Zip Code: <input type="text" name="zipcode">
			<br> 
			Phone Number: <input type="text" name="phone"></h5>		
			
			<input class="btn btn-primary" type="submit" value="Add Patient" />
			
		</form>
		
		<form action="home.do" method="GET">
			<input type="hidden" name="home" />
				<input class="btn btn-primary" type="submit" value="HOME" />
		</form>
		
	</div>
</body>
</html>