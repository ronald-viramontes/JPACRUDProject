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
		
		<form action="edit.do" method="POST"  >
			<h2>Edit Existing Patient Data</h2>
		<br>
		<h5>
			Patient ID: <input type="text" value="${patient.id}" name="id">
			<br>
			First Name: <input type="text" value="${patient.firstName}" name="firstName" > 
			<br>
			Middle Initial: <input type="text" value="${patient.middleInitial}" name="middleInitial" > 
			<br>
			Last Name: <input type="text" value="${patient.lastName}" name="lastName">
			<br>
			Date of Birth: <input type="text" value="${patient.dateOfBirth}" name="dateOfBirth" > 
			<br>
			SSN: <input type="text" value="${patient.ssn}" name="ssn" > 
			<br>
			Address: <input type="text" value="${patient.address}" name="address" > 
			<br>
			City: <input type="text" value="${patient.city}" name="city" >
			<br>
			State: <input type="text" value="${patient.state}" name="state" > 
			<br>
			Zip Code: <input type="text" value="${patient.zipcode}" name="zipcode" >
			<br> 
			Phone Number: <input type="text" value="${patient.phone}" name="phone" ></h5>		
			
			<input type="hidden" name="pid" value="${patient.id}">
			<input class="btn btn-warning" type="submit" value="Submit Changes" />
			
		</form>
		
		<form action="home.do" method="GET">
			<input type="hidden" name="home" />
				<input class="btn btn-primary" type="submit" value="HOME" />
		</form>
		
	</div>

</body>
</html>