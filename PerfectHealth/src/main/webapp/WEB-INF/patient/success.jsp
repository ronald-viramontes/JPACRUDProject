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

<title>Patient Record Change</title>

</head>

<body>
	<div id="center">
		<h1>Perfect Health Patient Data Portal</h1>
			
		<img src="images/PerfectHealth.png" /> 
	</div>
	
	<div id="center">
		<h2>Patient Record Change or Delete Action Successful!</h2>

		<form action="home.do" method="GET">
			<input type="hidden" name="home" /> <input class="btn btn-primary"
				type="submit" value="HOME" />
		</form>

	</div>

</body>
</html>