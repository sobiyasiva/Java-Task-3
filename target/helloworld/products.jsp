<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
    <title>Product List</title>
</head>
<body>
    <h1>Product List</h1>
    <table border='1'>
        <tr>
            <th>ID</th>
            <th>Product Name</th>
            <th>Price</th>
        </tr>
        <%
            ResultSet rs = (ResultSet) request.getAttribute("productList");

            if (rs != null) {
                while (rs.next()) {
        %>
                    <tr>
                        <td><%= rs.getInt("id") %></td>
                        <td><%= rs.getString("name") %></td>
                        <td><%= rs.getString("price") %></td>
                    </tr>
        <%
                }
            } else {
        %>
                <tr>
                    <td colspan="3">No products found.</td>
                </tr>
        <%
            }
        %>
    </table>
    <a href="index.jsp">Back</a>
</body>
</html>
