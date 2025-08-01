<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Login - Auth Portal</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #00c6ff, #0072ff);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .login-container {
            background-color: white;
            padding: 40px 30px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
            width: 350px;
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        .login-container label {
            font-weight: 600;
            display: block;
            margin: 15px 0 5px;
            color: #333;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 12px;
            border-radius: 10px;
            border: 1px solid #ccc;
            outline: none;
            transition: border 0.3s ease;
        }

        .login-container input[type="text"]:focus,
        .login-container input[type="password"]:focus {
            border-color: #0072ff;
        }

        .login-container input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #0072ff;
            border: none;
            border-radius: 10px;
            color: white;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            margin-top: 20px;
            transition: background 0.3s ease;
        }

        .login-container input[type="submit"]:hover {
            background-color: #0051cc;
        }

        .message {
            text-align: center;
            margin-top: 10px;
        }

        .message p {
            font-size: 14px;
        }

        .message a {
            color: #0072ff;
            text-decoration: none;
            font-weight: bold;
        }

        .error {
            color: #d32f2f;
            font-weight: 500;
            text-align: center;
            margin-bottom: 15px;
        }

        .success {
            color: #2e7d32;
            font-weight: 500;
            text-align: center;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Welcome to Auth Portal</h2>

        <c:if test="${param.error != null}">
            <div class="error">❌ Invalid username or password</div>
        </c:if>

        <c:if test="${param.logout != null}">
            <div class="success">✅ Successfully logged out</div>
        </c:if>

        <form action="<c:url value='/login'/>" method="post">
            <label for="username">Username</label>
            <input type="text" name="username" required>

            <label for="password">Password</label>
            <input type="password" name="password" required>

            <input type="submit" value="Login">
        </form>

        <div class="message">
            <p>New user? <a href="${pageContext.request.contextPath}/register">Register here</a></p>
        </div>
    </div>
</body>
</html>
