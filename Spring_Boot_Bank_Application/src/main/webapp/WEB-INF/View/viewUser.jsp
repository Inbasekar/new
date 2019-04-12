<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>

	<div align="center" class="table-responsive">

		<form:form  modelAttribute="user">
			<table class="table table-bordered table-sm" style="width: 50%; margin-left: 200px;">


				<tr>
				<th>ID</th>
					<th>Name</th>
					<th>Password</th>
					<th>Address</th>
					<th>E-mail</th>
					<th>DOB</th>
					<th>Mobile Number</th>
				
					<th>Edit</th>
					<th>Delete</th>

				</tr>
				<c:forEach var="ls" items="${list}">
					<tr>

						<td>${ls.id}</td>

						<td>${ls.name}</td>

						<td>${ls.password}</td>


						<td>${ls.address}</td>
						<td>${ls.e_mail}</td>
						
						<td>${ls.dob}</td>
						<td>${ls.mobile_number}</td>
				

						<td><a href="Edit?id=${ls.id}">Edit</a></td>
						<td><a href="Delete?id=${ls.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		
		</form:form>
		</div>
</body>
</html>