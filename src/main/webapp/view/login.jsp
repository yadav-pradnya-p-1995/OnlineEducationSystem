<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        .login-form input[type="text"],
		.login-form input[type="password"] {
		    width: calc(100% - 22px);
		    padding: 10px;
		    border: 1px solid #ccc;
		    border-radius: 5px;
		    margin-bottom: 10px;
		}
		        
        .container {
            max-width: 600px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .header {
            text-align: center;
            margin-bottom: 30px;
        }

        .header h1 {
            font-size: 36px;
        }

        .header p {
            font-size: 18px;
            color: #777;
        }

        .login-title {
            color: #333;
        }

        .login-form label,
        .login-form input {
            display: block;
            width: 100%;
            margin-bottom: 10px;
        }

        .login-form input {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .buttons input {
            margin-right: 10px;
        }

        .create-account {
            margin-top: 20px;
            text-align: center;
        }

        .create-account a {
            color: #333;
            text-decoration: none;
        }

        .error-message {
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="header">
        <h1>Online Education System</h1>
        <p>Providing Quality Education</p>
    </div>

    <div class="content">
        <h2 class="login-title">Login</h2>
        <div class="error-message">
            <font color="red">
                <%
                if (request.getAttribute("error") != null) {
                    out.print(request.getAttribute("error"));
                }
                %>
            </font>
        </div>

        <form action="login" method="post" class="login-form">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>

            <div class="buttons">
                <input type="submit" value="Login">
                <input type="reset" value="Reset">
            </div>
        </form>

        <div class="create-account">
            <a href="createaccountpage">Create Account</a>
        </div>
    </div>
</div>

</body>
</html>
