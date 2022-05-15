<%@page import="com.PowerManagement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Power Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/PowerManagement.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Power Management</h1>

				<form id="formPowerManagement" name="formPowerManagement" method="post" action="PowerManagement.jsp">


					Name: <input id="name" name="name" type="text"
						class="form-control form-control-sm"> 
						
						<br>District Name: <input id="districtName" name="districtName" type="text"
						class="form-control form-control-sm"> 
						
						<br>ZipCode: <input id="zipCode" name="zipCode" type="text"
						class="form-control form-control-sm"> 
						
						<br> Unit : <input id="units" name="units" type="text"
						class="form-control form-control-sm"> .
						
						<br> Total: <input id="total" name="total" type="text"
						class="form-control form-control-sm"> 
						
						
						
						<br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divProjectGrid">
					<%
					PowerManagement projectObj = new PowerManagement();
						out.print(projectObj.readProject());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
