<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<title>Home Page</title>
</head>
<body>
  <%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

 /*  if(session.getAttribute("id")==null)
      response.sendRedirect("Index.jsp");  */

  %> 
	<!-- <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    
    <ul class="nav navbar-nav navbar-right">
      <li><a href="addPet"><span class="glyphicon glyphicon-user"></span> Add pet</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav> -->
<%-- 
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<ul class="nav navbar-nav navbar-left">
		<li>welcome<p>${user.name}</p></li>
		</ul>
		
	</div>
	</nav> --%>
<div class="w3-container">

  <div class="w3-bar w3-light-grey">
    <a href="#" class="w3-bar-item w3-button">Welcome ${user.name}   </a>

    <div class="w3-dropdown-hover">
      <button class="w3-button" style="color:blue">Account</button>
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
      <c:if test="${acc.id==user.id}">
        <a href="createAccount?id=${user.id}" class="w3-bar-item w3-button">Create Term Account</a>
      </c:if>
       <c:if test="${acc.id!=user.id}">
        <a href="createAccount?id=${user.id}" class="w3-bar-item w3-button">Create Savings Account</a>
      </c:if>
      </div>
    </div>
     <div class="w3-dropdown-hover">
      <button class="w3-button" style="color:blue">Fund Transfer</button>
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
      <c:if test="${acc.id==user.id}">
        <a href="addBeneficiery?id=${user.id}" class="w3-bar-item w3-button">Add Beneficiery</a>
    
        <a href="transfer?id=${user.id}" class="w3-bar-item w3-button">Transfer</a>
      </c:if>
      </div>
    </div>
     <div class="w3-dropdown-hover">
      <button class="w3-button" style="color:blue">Others</button>
      <div class="w3-dropdown-content w3-bar-block w3-card-4">
      <c:if test="${acc.id==user.id}">
        <a href="requestChque?id=${user.id}" class="w3-bar-item w3-button">Request Cheque Book</a>
     
        <%-- <a href="createAccount?id=${user.id}" class="w3-bar-item w3-button">Request Cheque Book</a> --%>
      </c:if>
      </div>
    </div>
     <ul class="nav navbar-nav navbar-right">
			<li><a href="logout"><span class="glyphicon glyphicon-log-in"></span>
					Logout</a></li>
		</ul>
  </div>
</div>

<table class="table table-bordered table-sm" style="width: 50%; margin-left: 200px;">


				<tr>
				<th>ID</th>
					<th>Acount Type</th>
					<th>Initial Deposit</th>
					<th>Date</th>
			<th>View</th>
				</tr>

					<tr>

						<td>${acc.id}</td>

						<td>${acc.actype}</td>

						<td>${acc.balance}</td>
						<td>${acc.date}</td>
				

						<td><a href="Edit?id=${ls.id}">View</a></td>
						
					</tr>
			
			</table>
		

		
</body>
</html>