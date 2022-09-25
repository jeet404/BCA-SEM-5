<%-- 
    Document   : index
    Created on : 25 Sep, 2022, 7:54:30 PM
    Author     : Jeet404
--%>

<%@include file="header.jsp" %>
<div style="display: flex;justify-content: center">
    <table border="2" width="300px">
        <thead>
            <tr>
                <th>No.</th>
                <th>Name</th>
                <th>Age</th>
                <th>Course</th>
                <th>Options</th>
            </tr>
        </thead>
        <tbody>
            <%                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("SELECT * FROM `students`");
                while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getInt("Id")%></td>
                <td><%= rs.getString("Name")%></td>
                <td><%= rs.getInt("Age")%></td>
                <td><%= rs.getString("Course")%></td>              
                <td align="center">
                    <a href="editD.jsp?id=<%= rs.getInt(1)%>">Edit</a>     
                    <a href="deleteD.jsp?id=<%= rs.getInt(1)%>">Remove</a>
                </td>

            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</div>
<div style="display: flex;justify-content: center;margin-top: 16px;">
    <a href="addD.jsp">Add New</a>
</div>
<%@include file="footer.jsp" %>