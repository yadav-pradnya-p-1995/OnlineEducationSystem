<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Education System</title>
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

.course {
    border: 1px solid #ccc;
    border-radius: 10px;
    margin: 20px 0;
    padding: 20px;
    background-color: #f8f8f8;
    text-align: left;
    transition: transform 0.3s;
}

.course:hover {
    transform: scale(1.02);
}

.course h2 {
    margin: 0;
    font-size: 1.5em;
    color: #333;
    margin-bottom: 10px;
}

.course p {
    margin: 0;
    font-size: 1.1em;
    color: #555;
    margin-bottom: 10px;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    font-size: 1em;
    cursor: pointer;
    transition: background-color 0.3s;
}

button:hover {
    background-color: #45a049;
}

.navbar a:hover {
    color: #f00;
}

</style>
</head>
<body>

<div class="container">
    <div class="navbar">
        <a href="homePage">Home</a>
        <a href="aboutpage">About</a>
        <a href="coursespage">Courses</a>
        <a href="contactpage">Contact</a>
        <a href="loginpage">Logout</a>
    </div>

    <h1>Welcome to the Online Education System</h1>
    <p>Empowering minds through quality education.</p>

    <div class="course">
        <h2>Core Java</h2>
        <p>Duration: 6 months</p>
        <p>Fees: $1000</p>
        <button>Enroll Now</button>
    </div>

    <div class="course">
        <h2>Advance Java</h2>
        <p>Duration: 4 months</p>
        <p>Fees: $800</p>
        <button>Enroll Now</button>
    </div>

    <div class="course">
        <h2>Salesforce</h2>
        <p>Duration: 3 months</p>
        <p>Fees: $600</p>
        <button>Enroll Now</button>
    </div>

    <!-- Add more courses as needed -->

</div>

</body>
</html>
