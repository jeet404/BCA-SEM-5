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
<div class="cont">
    <form action="inProcess.jsp" method="POST">
        <div>
            <input type="text" name="name" placeholder="Enter Name">
        </div>
        <div>
            <input type="text" name="age" placeholder="Enter Age">
        </div>
        <div>
            <input type="text" name="course" placeholder="Enter Course">
        </div>
        <div>
            <input type="submit" name="iAdd" value="Add">
        </div>
    </form>
</div>
<div style="display: flex;justify-content: center;margin-top: 16px;">
    <a href="index.jsp">View Data</a>
</div>
<%@include file="footer.jsp" %>