<%-- 
    Document   : index
    Created on : 22 Sep, 2022, 12:46:12 PM
    Author     : Jeet404
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Marksheet with JSP</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    </head>
    <body class="d-flex justify-content-center">
        <div class="container shadow rounded m-5 p-5 col-md-6">
            <h1>Marksheet</h1>
            <hr>
            <form action="resProccess" method="POST">
                <div>
                    <div class="col-md-12 mb-2">
                        Full Name :
                        <input type="text" class="form-control" name="fname">
                    </div>
                    <div class="col-md-12 mb-2">
                        GR No :
                        <input type="text" class="form-control" name="grno">
                    </div>
                    <div class="col-md-12 mb-2">
                        Course :
                        <input type="text" class="form-control" name="crs">
                    </div>
                    <hr>
                    <h4>Marks of Subjects :</h4>
                    <hr>
                    <div class="d-flex justify-content-center col-md-12 mb-2 mt-2">
                        <div class="bg-secondary p-3 rounded col-md-6">
                            Maths :
                            <input type="text" class="form-control" name="maths">
                            <br>
                            Sci & Tech :
                            <input type="text" class="form-control" name="snt">
                            <br>
                            English : 
                            <input type="text" class="form-control" name="eng">
                            <br>
                            Sociology : 
                            <input type="text" class="form-control" name="soci">
                            <br>
                        </div>
                        <hr>
                    </div>
                    <div class="col-md-12 mb-2 d-flex justify-content-center">
                        <input type="submit" class="btn btn-success m-2" value="Get Result" name="iCal">
                        <a href="dispData.jsp" class="btn btn-primary m-2">View Data</a>
                    </div>
            </form>
        </div>
    </body>
</html>
