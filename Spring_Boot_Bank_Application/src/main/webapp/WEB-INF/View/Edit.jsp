<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<link rel="stylesheet" href="/resources/demos/style.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script>

  $( function() {

	  $('#datepicker').datepicker({ dateFormat: 'yy-mm-dd' });

  } );

  </script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div align="center" class="table-responsive">

		<form:form action="Update" modelAttribute="user">
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
				<c:if test="${ls.id==user.id}" > 
					<tr>

						<form:hidden path="id" value="${ls.id}" />
						<td>${ls.id}</td>

						<td><form:input path="name" value="${ls.name}" /></td>

						<td><form:input path="password" value="${ls.password}" /></td>


						<td><form:input path="address" value="${ls.address}" /></td>
						<td><form:input path="e_mail" value="${ls.e_mail}" /></td>
						
						<td><form:input path="dob" id="datepicker" value="${ls.dob}"  /></td>
						<td><form:input path="mobile_number" value="${ls.mobile_number}" /></td>
					

						<td> <input type="submit" value="Update"   /><br></td>
					</tr>
					</c:if>
						<c:if test="${ls.id!=user.id}" > 
					<tr>

						<td>${ls.id}</td>

						<td>${ls.name}</td>

						<td>${ls.password}</td>


						<td>${ls.address}</td>
						<td>${ls.e_mail}</td>
						
						<td>${ls.dob}</td>
						<td>${ls.mobile_number}</td>
				
						
						<td><a href="Edit?id=${ls.id}">Edit</a></td>
											</tr>
					</c:if>
				</c:forEach>
			</table>
		
		</form:form>
		</div>
</body>
</html>