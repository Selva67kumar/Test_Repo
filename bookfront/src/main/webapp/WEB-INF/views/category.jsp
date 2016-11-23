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
<script src="<c:url value="resource/Bootstrap/angular.min.js"/>"></script>
<script src="<c:url value="resource/Bootstrap/bootstrap.min.js"/>"></script>
<link href="<c:url value="resource/css/style.css"/>" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<form:form method="POST" commandName="categoryobj" action="managecategory">
		<center>
			<h2 style="color: gold">MANAGE CATEGORY</h2>
		</center>
		<br>
		<div ng-app="" color="white">
			<center>
				<form>
					<input type="radio" ng-model="select" value="add" ><font style="color:white">Add & update</font>
					<input type="radio" ng-model="select" value="view"><font style="color:white">View & delete</font>
				</form>
			</center>

			<br> <br> <br>


			<div ng-switch="select">
				<div ng-switch-when="add">
				<center>
					<table class="unbordered" class="table-responsive">

						<tr>
							<td align='center' style="color: white"><b>Category ID :<b></td>
							<td><input type='text' name='cate_id'></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align='center' style="color: white"><b>Category Name
									:<b></td>
							<td><input type='text' name='cate_name'></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td align='center' style="color: white"><b>Description :<b></td>
							<td><input type='text' name='cate_description'></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
					</table>
					</center>
				</div>
				<div ng-switch-when="view">

					<table class="unbordered" class="table-responsive" align='center'>

						<tr>
							<td align='center' style="color: white"><b>Category ID :<b></td>
							<td><input type='text' name='cate_id'></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
							</table>
						</div>
						
				
				
				
				<div ng-switch-when="add">
					<table class="unbordered" class="table-responsive" align="center">
						<tr>
							<td align="center"><input type="submit" name="Add" class="btn btn-success" value="add"/></td>
							<td>&nbsp;</td>
							<td align="center"><input type="submit" name="Update" class="btn btn-danger" value="update"/></td>
						</tr>
					</table>
				</div><div ng-switch-when="view">
					<table class="unbordered" class="table-responsive" align='center'>
						<tr>
							<td align='left'><input type="submit"
									class="btn btn-primary" name="View" value="view"/></td>
									<td>&nbsp;</td>
							<td align='center'><input type="submit"
									class="btn btn-success" name="View All" value="viewall"/></td>
									<td>&nbsp;</td>
							<td align='right'><input type="submit"
									class="btn btn-primary" name="Delete" value="delete"/></td>
						</tr>
					</table>
				</div>
				
				
			
		</div>
		</div>
	</form:form>
</body>
</html>