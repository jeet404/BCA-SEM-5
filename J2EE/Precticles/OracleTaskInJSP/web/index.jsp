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
        <form action="" method="POST">
            <div>
                <input type="text" id="fname" placeholder="Enter Full Name">
            </div>
            <div>
                <input type="text" id="mno" placeholder="Enter Phonenumber">
            </div>
            <div>
                <input type="text" id="age" placeholder="Enter Age">
            </div>
            <div>
                <select id="fld">
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
                <input type="date" id="dt" placeholder="Choose Date">              
            </div>
            <div style="display: flex;justify-content: center">
                <input type="submit" id="iTake" value="Take Appointment">
            </div>
            <div id="apid" style="color: green"></div>
        </form>
    </div>
</div>
<script>
    $(document).ready(function () {
        $("form").submit(function () {
            var fname = $("#fname").val();
            var mno = $("#mno").val();
            var age = $("#age").val();
            var fld = $("#fld").val();
            var dt = $("#dt").val();
            $.ajax({
                type: "POST",
                url: "inProcess.jsp",
                data: {
                    fname: fname,
                    mno: mno,
                    age: age,
                    fld: fld,
                    dt: dt
                },
                success: function (response) {
                    $("apid").val("Your Appointment ID is : " + response);
                }
            });
        });
    });
</script>
<%@include file="footer.jsp" %>