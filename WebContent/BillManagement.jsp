<%@page import="com.BillManagement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bill Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/BillManagement.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Bill Management</h1>

				<form id="formBillManagement" name="formBillManagement" method="post" action="BillManagement.jsp">


					User ID: <input id="user_id" name="user_id" type="text"
						class="form-control form-control-sm"> 
						
						<br>Unit Usage: <input id="unit_usage" name="unit_usage" type="text"
						class="form-control form-control-sm"> 
						
						<br>Date: <input id="date" name="date" type="date"
						class="form-control form-control-sm"> 
						
						<br> Unit Price: <input id="unit_price" name="unit_price" type="text"
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
					BillManagement projectObj = new BillManagement();
						out.print(projectObj.readProject());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
