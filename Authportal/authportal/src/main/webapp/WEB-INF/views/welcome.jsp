<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Welcome - Auth Portal</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            height: 100vh;
            background: linear-gradient(120deg, #1e3c72, #2a5298);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            overflow: hidden;
        }

        .welcome-box {
            background: rgba(255, 255, 255, 0.05);
            padding: 40px 60px;
            border-radius: 25px;
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(10px);
            text-align: center;
            max-width: 600px;
            animation: fadeInUp 1s ease-out;
        }

        .welcome-box h1 {
            font-size: 36px;
            margin-bottom: 10px;
            color: #fff;
        }

        .welcome-box p {
            font-size: 18px;
            color: #d1d1d1;
            margin-bottom: 30px;
        }

        .btn {
            display: inline-block;
            padding: 12px 30px;
            background: #00c6ff;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
            transition: background 0.3s ease;
            box-shadow: 0 5px 15px rgba(0, 198, 255, 0.4);
        }

        .btn:hover {
            background: #009bd6;
        }

        @keyframes fadeInUp {
            from {
                transform: translateY(40px);
                opacity: 0;
            }
            to {
                transform: translateY(0px);
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <div class="welcome-box">
        <h1>🎉 Welcome to the Portal</h1>
        <p>You’ve successfully logged in. Let’s build something legendary. 👑</p>
        <a class="btn" href="<c:url value='/logout'/>">Logout</a>
    </div>
</body>
</html>
