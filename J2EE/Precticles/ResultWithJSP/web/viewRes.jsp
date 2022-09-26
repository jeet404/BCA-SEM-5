<%@include file="header.jsp"%>
<%    if (request.getParameter("id") != null) {
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM `stud_result` WHERE Id = " + request.getParameter("id"));

        rs.first();
%>
<style>
    .cont{
        display: flex;
        justify-content: center
    }
    .main{
        font-size: 1.2em;
        margin-bottom: 2%;
    }
</style>
<div class="cont">
    <div class="main">
        <div style="margin-bottom: 16px;">
            Name : <%= rs.getString("Name")%>   
        </div>
        <div style="margin-bottom: 16px;">
            GR No : <%= rs.getString("GrNo")%> 
        </div>
        <table border="1" width="300px">
            <thead>
                <tr align="center">
                    <th colspan="2">Your Marks</th>
                </tr>
                <tr>
                    <th>Subject</th>
                    <th>Marks(out of 100)</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>SEO</td>
                    <td align="right"><%= rs.getString("m_seo")%></td>
                </tr>
                <tr>
                    <td>ASP.NET</td>
                    <td align="right"><%= rs.getString("m_asp")%></td>
                </tr>
                <tr>
                    <td>J2EE</td>
                    <td align="right"><%= rs.getString("m_j2ee")%></td>
                </tr>
                <tr>
                    <td>Prectical</td>
                    <td align="right"><%= rs.getString("m_prec")%></td>
                </tr>
                <tr>
                    <td>Project Viva</td>
                    <td align="right"><%= rs.getString("m_viva")%></td>
                </tr>
                <tr>
                    <td colspan="2">Obtained Marks : <%= rs.getString("m_total")%></td>
                </tr>
                <tr>
                    <td colspan="2">Percentage : <%= rs.getString("m_per")%>%</td>
                </tr>
                <tr>
                    <td colspan="2">Grade : <%= rs.getString("m_grade")%></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<div style="display: flex;justify-content: center;margin-top: 16px;">
    <a href="allRes.jsp">Go Back</a>
</div>
<%
    }else{
%>
<script>
    location.href = "allRes.jsp";
</script>
<%
}
%>
<%@include file="footer.jsp"%>