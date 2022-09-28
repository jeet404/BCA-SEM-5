<%@include file="header.jsp" %>
<%@include file="oracleCon.jsp" %>
<style>
    .cont{
        display: flex;
        justify-content: center
    }
    div{
        margin-bottom: 16px;
    }
</style>
<div>
    <h1>Take Your Appointment</h1>
    <hr>
    <div class="cont">
        <form action="inProcess.jsp" method="POST">
            <div>
                <input type="text" name="fname" placeholder="Enter Full Name">
            </div>
            <div>
                <input type="text" name="mno" placeholder="Enter Phonenumber">
            </div>
            <div>
                <input type="text" name="age" placeholder="Enter Age">
            </div>
            <div>
                <select name="fld">
                    <option>--Select Field--</option>
                    <%                        Statement stmt = conn.createStatement();
                        ResultSet rs = stmt.executeQuery("select * from ap_fields");
                        while (rs.next()) {
                    %>
                    <option value="<%= rs.getString("f_name")%>"><%= rs.getString("f_name")%></option>
                    <%
                        }
                    %>
                </select>
            </div>
            <div>
                <input type="date" name="dt" placeholder="Choose Date">              
            </div>
            <div style="display: flex;justify-content: center">
                <input type="submit" name="iTake" value="Take Appointment">
            </div>
        </form>
    </div>
</div>
<%@include file="footer.jsp" %>