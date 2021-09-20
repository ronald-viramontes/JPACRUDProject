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
	
		<h2>Patient Data</h2>
		<br>
	</div>
	
	<table class="table thead-dark table-striped table-hover">
		
		<thead>
			<tr>
			<th>Patient ID</th>
			<th>First Name</th>
			<th>Middle Initial</th>
			<th>Last Name</th>
			<th>Date of Birth</th>
			<th>SSN</th>
			<th>Address</th>
			<th>City</th>
			<th>State</th>
			<th>Zip Code</th>
			<th>Phone</th>
			</tr>
		</thead>
		<tbody>
		<tr>
			<td>${patient.id}</td> 
			<td>${patient.firstName}</td> 
			<td>${patient.middleInitial}</td>
			<td>${patient.lastName}</td>
			<td>${patient.dateOfBirth}</td> 
			<td>${patient.ssn}</td> 
			<td>${patient.address}</td> 
			<td>${patient.city}</td>
			<td>${patient.state}</td>
			<td>${patient.zipcode}</td>
			<td>${patient.phone}</td>
		</tr>
		</tbody>
	</table>
		<div id="center">
		
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