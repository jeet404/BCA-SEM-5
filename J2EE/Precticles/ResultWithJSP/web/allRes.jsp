<%@include file="header.jsp"%>
<%    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM `stud_result`");
%>
<style>
    .cont{
        display: flex;
        justify-content: center
    }
</style>
<div class="cont">
    <table border="1" width="300px">
        <thead>
            <tr>
                <th>Name</th>
                <th>Option</th>
            </tr>
        </thead>
        <tbody>
            <%                
                while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getString("Name")%></td>
                <td align="right"><a href="viewRes.jsp?id=<%= rs.getInt("Id")%>">View</a></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>

</div>
<div style="display: flex;justify-content: center;margin-top: 16px;">
    <a href="index.jsp">Add Result</a>
</div>
<%@include file="footer.jsp"%>