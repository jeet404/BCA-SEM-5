<%-- 
    Document   : calres
    Created on : 23 Sep, 2022, 11:53:29 AM
    Author     : Jeet404
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body class="d-flex justify-content-center">
        <div class="container m-5 p-5 shadow">
            <h1><%= request.getAttribute("fname")%>'s Result</h1>
            <hr>
            <div>
                <div class="col-md-12 mb-2">
                    Full Name : <%= request.getAttribute("fname")%>
                </div>
                <div class="col-md-12 mb-2">
                    GR No : <%= request.getAttribute("grno")%>
                </div>
                <div class="col-md-12 mb-2">
                    Course : <%= request.getAttribute("crs")%>
                </div>
                <hr>
                <h4>Marks of Subjects :</h4>
                <hr>
                <div class="d-flex justify-content-center col-md-6 mb-2 mt-2">
                    <div class="bg-secondary text-light p-3 rounded col-md-12">
                        Maths : <%= request.getAttribute("math")%>
                        <br>
                        Sci & Tech : <%= request.getAttribute("snt")%>
                        <br>
                        English : <%= request.getAttribute("eng")%>
                        <br>
                        Sociology : <%= request.getAttribute("soci")%>
                        <br>
                    </div>
                    <hr>
                </div>
                <div class="d-flex justify-content-center  col-md-12">
                    Total Marks : <% request.getAttribute("total");%>                        
                    Total Percentage : <% request.getAttribute("per");%> S
                </div>
                <div class="col-md-12 mb-2 d-flex justify-content-center">
                    <a href="dispData.jsp" class="btn btn-primary m-2">View Data</a>
                    <a href="index.jsp" class="btn btn-primary m-2">Go Back</a>
                </div>
            </div>
        </div>
    </body>
</html>
