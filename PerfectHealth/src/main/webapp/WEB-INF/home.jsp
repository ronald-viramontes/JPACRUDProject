<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<title>Perfect Health!</title>
</head>
<body>
	<div id="center">

		<h1>Welcome to Perfect Health</h1>	
	
	</div>
	
	<div id="center" >
	
		<img src="images/PerfectHealth.png" /> </div>
	
	<div>
		
	<br>
	<div id="center">	
		
		<form action="remove.do" method="GET">
			Enter Patient ID: <input type="text" name="pid" />
			<input class="btn btn-warning" type="submit" value="Remove Patient" />
		</form>
		
		<br>		
		
		<form action="getPatient.do" method="GET">
			Patient ID:	<input type="text" name="pid" />
			<input class="btn btn-primary" type="submit" value="Show Patient" />
		</form>
		
		
		<br>
		
		<form action="add.do" method="GET">
			<input type="hidden" />
				<input class="btn btn-primary" type="submit" value="Add New Patient" />
		</form>
		
	</div>

		<br>
		
	<table class="table thead-dark table-striped table-hover">
	<thead>
		<tr>
			<th>Patient ID</th>
			<th>Name</th>
		
		</tr>
	</thead>
	
	<tbody>
		<c:forEach var="p" items="${patients}" >
		<tr>
			<td> ${p.id } </td>
			<td><a href="getPatient.do?pid=${p.id }"> ${p.firstName } ${p.lastName} </a></td> 
		</tr>
	</c:forEach>
	</tbody>		
		
</table>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
</body>
</html>