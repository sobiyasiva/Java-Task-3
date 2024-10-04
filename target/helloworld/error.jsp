<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8d7da;
            color: #721c24;
            margin: 50px;
            padding: 20px;
            border: 1px solid #f5c6cb;
            border-radius: 5px;
        }
        h1 {
            color: #721c24;
        }
        a {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Error</h1>
    <p>
        An error has occurred while processing your request.
    </p>
    <p>
        <strong>Error Message:</strong> <%= request.getAttribute("errorMessage") %>
    </p>
    <p>
        <a href="index.jsp">Go Back to Home</a>
    </p>
</body>
</html>
