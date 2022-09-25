<%@include file="header.jsp" %>
<style>
    .cont{
        display: flex;
        justify-content: center
    }
    form{
        font-size: 1.5em;
    }
    div{
        margin-bottom: 2%;
    }
</style>
<%                Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM `students` WHERE Id = " + request.getParameter("id") + "");
    rs.first();
%>
<div class="cont">
    <form action="inProcess.jsp" method="POST">
        <input type="hidden" name="id" value="<%= rs.getInt("Id")%>">
        <div>
            <input type="text" name="name" value="<%= rs.getString("Name")%>">
        </div>
        <div>
            <input type="text" name="age" value="<%= rs.getInt("Age")%>">
        </div>
        <div>
            <input type="text" name="course" value="<%= rs.getString("Course")%>">
        </div>
        <div>
            <input type="submit" name="iEdit" value="Edit">
        </div>
    </form>
</div>
<div style="display: flex;justify-content: center;margin-top: 16px;">
    <a href="index.jsp">Go Back</a>
</div>
<%@include file="footer.jsp" %>