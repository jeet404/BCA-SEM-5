<%-- 
    Document   : index
    Created on : 8 Sep, 2022, 8:49:24 PM
    Author     : Jeet404
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.lang.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to our site</title>
        <meta charset='utf-8'>
        <meta http-equiv='X-UA-Compatible' content='IE=edge'>
        <title>Login Page</title>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> 
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="container-fluid">
                <a class="navbar-brand" href="MainServlet">Servlet Task</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Togglenavigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="InsertServlet">Insert</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="container p-5 mt-5">
            <div class='mt-5 col-md-12 d-flex justify-content-center'>
                <form action="loginProcess" method="POST" class="form border shadow rounded col-md-0 w-30 p-3 m-3">
                    <h2 class="mb-3">Login</h2>
                    <div class="mb-3">
                        <label class="form-label">Username : </label>
                        <input type="text" name="uname" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Password : </label>
                        <input type="password" name="pass" class="form-control">
                    </div>
                    <div class="mb-3">
                        <input type="submit" class="btn btn-success" value="Login">
                    </div>
                    <div>
                        <%= request.getAttribute("msg")%>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
