<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        .container {
            text-align: center;
            margin-top: 100px;
        }

        .error-message {
            font-size: 24px;
            color: #ff0000;
        }

        .back-link {
            text-decoration: none;
            color: #0070c9;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="error-message">
            An error occurred. Please try again later.
        </div>
        <p><a href="home.jsp" class="back-link">Back to Home</a></p>
    </div>
</body>
</html>
