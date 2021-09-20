<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="bootstrapHead.jsp"></jsp:include>
<style>
		#right {
			text-align: right;
		}
		#center {
			text-align: center;
		}
		#left {
			text-align: left;
		}
		
	</style>
<title>Add New Patient</title>
</head>
<body>

	<div id="center">
		<h1>Perfect Health Patient Data Portal</h1>
			
		<img src="images/PerfectHealth.png" /> 
	</div>
	
	<br>
	
	<div id="center">
		<form action="add.do" method="POST" >
			<h2>New Patient Data Entry</h2>
			<br>
		<h5> 
			<br>
			First Name: <input type="text" name="firstName"> Middle Initial: <input type="text" name="middleInitial"> Last Name: <input type="text" name="lastName">
			<br>
			<br>
			Date of Birth: <input type="text" name="dateOfBirth" value="YYYY-MM-DD"> SSN: <input type="text" name="ssn" value="#########"> 
			<br>
			<br>
			Address: <input type="text" name="address"> City: <input type="text" name="city"> State: <input type="text" name="state" value="XX"> Zip Code: <input type="text" name="zipcode" value="#####">
			<br> 
			<br> 
			Phone Number: <input type="text" name="phone" value="##########"></h5>		
			<br>
			<br>			
			<input class="btn btn-warning" type="submit" value="Add Patient" />
			<br>
			<br>
			
		</form>
		<form action="home.do" method="GET">
			<input type="hidden" name="home" />
			<input class="btn btn-primary" type="submit" value="HOME" />
		</form>
		
	</div>
</body>
</html>