<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Education System</title>


<!-- Favicon -->
<link rel="icon"
	href="img/e.jpg">



</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


	<center>
	
	<h1> <font color=red>Create Account Page</font></h1>
	<font color=red>
		<%
		if (request.getAttribute("error") != null) {
			out.print(request.getAttribute("error"));
		}
		%></font>

		<form action="createaccount" method="post">

			username  &nbsp <input type="text" name="username"> <br> <br>
			password &nbsp <input type="password" name="password"> <br> <br>
			 <input type="submit" value="create"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
			  <input type="reset" value="reset"> <br> <br>
			   <a href="loginpage"> Back To Login</a>

		</form>
	</center>
</html>


<style>
body {
  background-image: url('img/s.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}
</style>