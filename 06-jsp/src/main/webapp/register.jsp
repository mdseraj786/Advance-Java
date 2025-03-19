<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Page</title>
    <link rel="stylesheet" href="reglog.css">
</head>
<body>
    <div class="container">
        <h2>Register</h2>
        <form id="registerForm" action="registerServlet" method="post">
            <div class="input-group">
                <label for="registerName">Name:</label>
                <input type="text" id="registerName" name="name" required>
            </div>
            <div class="input-group">
                <label for="registerEmail">Email:</label>
                <input type="email" id="registerEmail" name="email" required>
            </div>
            <div class="input-group">
                <label for="registerPassword">Password:</label>
                <input type="password" id="registerPassword" name="password" required>
            </div>
            <button type="submit">Register</button>
        </form>
        <p>Already have an account? <a href="login.jsp">Login here</a></p>
    </div>
    <script src="scripts.js"></script>
</body>
</html>
