<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
    Connection conn;
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_demo", "root", "");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Retrieve Data</title>
    </head>
    <body>
        <div style="display: flex;justify-content: center">
            <h1>JSP CRUD Task</h1>
        </div>
        <hr style="margin-bottom: 16px;">