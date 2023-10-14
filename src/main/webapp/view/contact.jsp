<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Online Education System - Contact Us</title>
	<link rel="icon" href="img/e.jpg">

<style>
body {
    font-family: Arial, sans-serif;
    background-image: url('img/s.jpg');
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    margin: 0;
}

.container {
    max-width: 800px;
    margin: 0 auto;
    padding: 50px;
    text-align: center;
    background-color: rgba(255, 255, 255, 0.8);
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.navbar {
    margin-bottom: 30px;
}

.navbar a {
    margin: 0 10px;
    text-decoration: none;
    color: #333;
}

.navbar a:hover {
    color: #f00;
}

.form-content {
    text-align: left;
}

.form-content input {
    display: block;
    width: calc(100% - 22px);
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-bottom: 10px;
}

.form-content input[type="submit"],
.form-content input[type="reset"] {
    width: auto;
    display: inline-block;
    margin-right: 10px;
}

</style>
</head>
<body>

<div class="container">
    <div class="navbar">
        <a href="homePage">Home</a>
        <a href="aboutpage">About Us</a>
        <a href="coursespage">Courses</a>
        <a href="contactpage">Contact Us</a>
        <a href="loginpage">Logout</a>
    </div>

    <div class="form-content">
        <h2>Contact Us</h2>
        <form action="contact" method="post">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>
            
            <label for="address">Address</label>
            <input type="text" id="address" name="address" required>
            
            <label for="email">Email</label>
            <input type="text" id="email" name="email" required>
            
            <label for="mobile">Mobile</label>
            <input type="text" id="mobile" name="mobile" required>
            
            <input type="submit" value="Submit">
            <input type="reset" value="Reset">
        </form>
    </div>
</div>

</body>
</html>
