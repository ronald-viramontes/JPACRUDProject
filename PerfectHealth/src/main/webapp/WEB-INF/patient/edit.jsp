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
		
		<form action="edit.do" method="POST" modelAttribute="patient">
			<h2>Patient Data</h2>
		<br>
		<h5>Patient ID: ${patient.id} 
			<br>
			First Name: <input type="text" value="${patient.firstName}"> 
			<br>
			Middle Initial: <input type="text" value="${patient.middleInitial}"> 
			<br>
			Last Name: <input type="text" value="${patient.lastName}">
			<br>
			Date of Birth: <input type="text" value="${patient.dateOfBirth}"> 
			<br>
			SSN: <input type="text" value="${patient.ssn}"> 
			<br>
			Address: <input type="text" value="${patient.address}"> 
			<br>
			State: <input type="text" value="${patient.state}"> 
			<br>
			Zip Code: <input type="text" value="${patient.zipcode}">
			<br> 
			Phone Number: <input type="text" value="${patient.phone}"></h5>		
			
			<input class="btn btn-warning" type="submit" value="Submit Changes" />
			
		</form>
		
		
	</div>

</body>
</html>