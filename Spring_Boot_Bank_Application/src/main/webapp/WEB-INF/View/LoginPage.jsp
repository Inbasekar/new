<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<script type="text/javascript">
     function validate() {
          if (document.getElementById("user_name").value == "") {
              document.getElementById("error").innerHTML = "<center>Username required</center>";
              return false;
          } else if (document.getElementById("user_passwd").value == "") {
              document.getElementById("error").innerHTML = "<center>Password required</center>";
              return false;
          } else {
              return true;
          }
     }
</script>
<body>
  
          </div>
          <ul class="nav navbar-nav navbar-right">
              <li><a href="register"><span
                        class="glyphicon glyphicon-user"></span> Sign Up</a></li>
          </ul>

     </div>
     </nav>
     <div class="container">
   <h4> Login</h4>
          <p id="error" style="color: red;"></p>
          <form:form action="checkUser"  modelAttribute="user">
              <label for="Name">Name:</label>
              <form:input path="name" class="form-control" />
              <br>
              <label for="password">Password:</label>
              <form:password path="password" class="form-control" />
              <br>
              <input type="submit" value="LogIn" onclick="return validate()"
                   class="btn btn-primary" />
          </form:form>
     </div>
</body>
</html>
