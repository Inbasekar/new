<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
td{
padding:10px;
}
</style>
</head>
<body>
<center>

<form:form modelAttribute="user" action="save">
<table  style=" border-collapse:collapse" >
<tr style="background-color: #f2f2f2;"><td><h2 >Registration Form</h2></td></tr>
<tr>

<td><form:label path="first_name">First Name</form:label><form:input path="first_name" class="form-control"/></td>

<td><form:label path="last_name">Last Name</form:label><form:input path="last_name" class="form-control"/></td>

<td><form:label path="dob" >DOB</form:label><form:input path="dob"  class="form-control"/></td>
</tr>
<tr>

<td><form:label path="address">Address</form:label><form:input path="address" class="form-control"/></td>

<td><form:label path="address">Address 2</form:label><form:input path="address" class="form-control"/></td>

<td><form:label path="city" >City</form:label><form:select class="form-control " path="city">
					<form:option value="Select" label="Select" />
					<form:option value="Chennai" />
					<form:option value="Salem" />
					<form:option value="Coimbatore" />
				</form:select></td></td>
</tr>
<tr>
<td><form:label path="state">State</form:label><form:select class="form-control " path="state">
					<form:option value="Select" label="Select" />
					<form:option value="Tamil Nadu" />
					<form:option value="Kerala" />
					<form:option value="Karnataka" />
				</form:select></td>

<td><form:label path="pin_code">Pin Code</form:label><form:input path="pin_code" class="form-control"/></td>

<td><form:label path="mobile_number" >Mobile Number</form:label><form:input path="mobile_number"  class="form-control"/></td>
</tr>
<tr>
<td><form:label path="e_mail">E-Mail</form:label><form:input path="e_mail" type="email" class="form-control"/></td>

<td><form:label path="pan">PAN</form:label><form:input path="pan" class="form-control"/></td>

<td><form:label path="aadhar" >Aadhar Number</form:label><form:input path="aadhar"  class="form-control"/></td>
</tr>

<tr>
<td><form:label path="name">User Name</form:label><form:input path="name" type="text" class="form-control"/></td>

<td><form:label path="password">Password</form:label><form:password path="password" class="form-control"/></td>

<td><label>Confirm Password</label><input type="password" class="form-control"/></td>
</tr>
<tr><td>Bate of Birth Proof <form:input type="file" path="dob_proof"/></td></tr>
<tr><td>Aadhar Proof <form:input type="file" path="aadhar_proof"/></td></tr>
<tr><td>Address Proof <form:input type="file" path="address_proof"/></td></tr>
<tr><td>PAN Proof <form:input type="file" path="pan_proof"/></td></tr>
<%-- <form:form modelAttribute="account">
<tr><td><form:input  path="actype"/></td></tr>
</form:form> --%>
</table>

<tr>
<td><input type="submit" value="Submit"/></td>
</tr>
</form:form>
</center>
</body>
</html>