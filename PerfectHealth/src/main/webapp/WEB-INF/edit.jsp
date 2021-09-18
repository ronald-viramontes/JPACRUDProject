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
		
		<form action="edit.do" method="GET">
			<h2>Patient Data</h2>
		<br>
		<h5>Patient ID: ${patient.id} 
			<br>
			First Name: <input type="text" name="${patient.firstName}"> 
			<br>
			Middle Initial: <input type="text" name="${patient.middleInitial}"> 
			<br>
			Last Name: <input type="text" name="${patient.lastName}">
			<br>
			Date of Birth: <input type="text" name="${patient.dateOfBirth}"> 
			<br>
			SSN: <input type="text" name="${patient.ssn}"> 
			<br>
			Address: <input type="text" name="${patient.address}"> 
			<br>
			State: <input type="text" name="${patient.state}"> 
			<br>
			Zip Code: <input type="text" name="${patient.zipcode}">
			<br> 
			Phone Number: <input type="text" name="${patient.phone}"></h5>		
			
			<input class="btn btn-warning" type="submit" value="Submit Changes" />
			
		</form>
		
		
	</div>

</body>
</html>