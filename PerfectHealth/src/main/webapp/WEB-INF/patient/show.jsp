<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<jsp:include page="../bootstrapHead.jsp"></jsp:include>
<title>Patient Details</title>
</head>
<body>
	<div>
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
			State: ${patient.state} 
			<br>
			Zip Code: ${patient.zipcode}
			<br> 
			Phone Number: ${patient.phone}</h5>
		
	</div>
	
	<a href="edit.jsp">Edit Patient Data</a>
	<a href="home.go">Home</a>

</body>
</html>