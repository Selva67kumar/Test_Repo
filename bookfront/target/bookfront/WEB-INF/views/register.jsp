<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="<c:url value="resource/Bootstrap/bootstrap.min.css"/>">
<script src="<c:url value="resource/Bootstrap/jquery.min.js"/>"></script>
<script src="<c:url value="resource/Bootstrap/bootstrap.min.js"/>"></script>
<link href="<c:url value="resource/css/style.css"/>" rel="stylesheet"
	type="text/css" />
<title>register</title>
</head>
<body>
	<form:form method="POST" commandName="userobj" action="save">
		<h2 style="color: gold">
			<center>
				REGISTER AS LIBRIE<i>ian</i>
			</center>
		</h2>
		<br>
		<center>
		<table class="unbordered" class="table-responsive">
			<tr>
				<td align='center' style="color: white"><b>Name :</b></td>
				<td><form:input path="user_name" /></td>
			</tr>
			
			<tr>
				<td>&nbsp;</td>
			</tr>
			
			<tr>
				<td align='center' style="color: white"><b>Email :<b></td>
				<td><form:input path="user_id" /></td>
			</tr>
			
			<tr>
				<td>&nbsp;</td>
			</tr>
			
			<tr>
				<td align='center' style="color: white"><b>Password :<b></td>
				<td><form:input path="user_pwd" /></td>
			</tr>
			
			<tr>
				<td>&nbsp;</td>
			</tr>
			
			<tr>
				<td align='center' style="color: white"><b>Mobile No. :<b></td>
				<td><form:input path="user_con" /></td>
			</tr>
			
			<tr>
				<td>&nbsp;</td>
			</tr>
			
			<tr>
				<td align='center' style="color: white"><b>Address :</b></td>
				<td><form:input path="user_add" /></td>
			</tr>
			
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<table border='0' cellpadding='0' cellspacing='0' width='480px'
				align='center'>
				<tr>
					<td align='center'><button type="button" value="save"
							class="btn btn-danger">Register</button></td>
				</tr>

			</table>
		</table>
		</center>
	</form:form>
</body>
</html>