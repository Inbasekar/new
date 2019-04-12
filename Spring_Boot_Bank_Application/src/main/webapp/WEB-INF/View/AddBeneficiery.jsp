<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Add Beneficiery</title>
</head>
<body>
<c:if test="${str=='IFSC no Needed'}">
<c:set value="SameBank" var="action"/>
</c:if>
<c:if test="${str=='IFSC  Needed'}">
<c:set value="otherBank" var="action"/>
</c:if>
<form:form action="${action}" modelAttribute="beneficiery">

<div class="w3-container">

  <div class="w3-bar w3-light-grey">
    <a href="#" class="w3-bar-item w3-button">Welcome ${user.name}   </a>

  
    <a href="AccountSummary" class="w3-bar-item w3-button">Account Summary  </a>
     <a href="#" class="w3-bar-item w3-button">Add  </a>
     <ul class="nav navbar-nav navbar-right">
			<li><a href="logout"><span class="glyphicon glyphicon-log-in"></span>
					Logout</a></li>
		</ul>
  </div>
</div>
<center>
 <div class="panel panel-primary" style="width: 70%" style="height: 70%" >
      <div class="panel-heading">Beneficiary Details</div>
      <table>
      <tr><td>Name <form:input  path="name"/></td></tr>
<tr><td>Account Number <form:input  path="accnum"/></td></tr>
<c:if test="${str=='IFSC  Needed'}">
<tr><td>IFSC <form:input  path="ifsc"/></td></tr>
</c:if>
<tr><td>Remarks <form:input  path="remarks"/></td></tr>
<tr><td> <input type="submit" value="Submit"/></td></tr>
</table>
    </div>
    </center>
    </form:form>
</body>
</html>