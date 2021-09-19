<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<jsp:include page="../bootstrapHead.jsp"></jsp:include>
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
	
<title>Patient Details</title>
</head>
<body>

	<div id="center">
		<h1>Perfect Health Patient Data Portal</h1>
			
		<img src="images/PerfectHealth.png" /> 
	</div>
	
	<div id="center">
		<h2>Patient Data</h2>
		<br>
		<h5>Patient ID: ${patient.id} 
			<br>
			First Name: ${patient.firstName} 
			<br>
			Middle Initial: ${patient.middleInitial} 
			<br>
			Last Name: ${patient.lastName}
			<br>
			Date of Birth: ${patient.dateOfBirth} 
			<br>
			SSN: ${patient.ssn} 
			<br>
			Address: ${patient.address} 
			<br>
			City: ${patient.city}
			<br>
			State: ${patient.state} 
			<br>
			Zip Code: ${patient.zipcode}
			<br> 
			Phone Number: ${patient.phone}</h5>
		
	<form action="edit.do" method="GET">
		<input type="hidden" name="pid" value="${patient.id}" />
			<input class="btn btn-warning" type="submit" value="Edit Patient" />
		</form>
		
		<br>
	
	<form action="home.do" method="GET">
			<input type="hidden" name="home" />
				<input class="btn btn-primary" type="submit" value="HOME" />
	</form>
	
	</div>
	
	
</body>
</html>