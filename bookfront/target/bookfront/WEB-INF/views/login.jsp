<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="<c:url value="resource/Bootstrap/bootstrap.min.css"/>">
<script src="<c:url value="resource/Bootstrap/jquery.min.js"/>"></script>
<script src="<c:url value="resource/Bootstrap/bootstrap.min.js"/>"></script>
<script src="<c:url value="resource/Bootstrap/angular.min.js"/>"></script>
<link href="<c:url value="resource/css/style.css"/>" rel="stylesheet" type="text/css" />
<title>Login</title>
</head>
<body>
	<div ng-app="myApp">
	<form action="validate" method="post">
		<br>
<center>
		<h1 style="color: red">
			<b> Login
				
			</b>
		</h1>
</center>
		<br> <br>
		<div class="table-responsive">
		<table class="table-unbordered" border='0' width='auto' cellpadding='0' cellspacing='0'
			align='center'>
			<tr>
				<td align='center' style="color: white"><b>User Id :</b></td>
				<td><input type="text"name="User Id"ng-model="name"ng-minlength="5"ng-maxlength=""required /></td>			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td align='center' style="color: white"><b>Password :</b></td>
				<td><input type='password' name='password'></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><b></b></td>
				<td>${incorrect}</td>
			</tr>

			<table class="table-unbordered" border='0' cellpadding='0' cellspacing='0' width='480px'
				align='center'>
				<tr>
					<td align='center'><button type="submit"
							class="btn btn-danger">Log in</button></td>
				</tr>
			</table>
		</table></div>
	</form></div>
</body>
</html>