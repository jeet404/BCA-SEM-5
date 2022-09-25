<%@page import="java.sql.*" %>
<%
    try {
        Connection conn;
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_demo", "root", "");
        if (request.getParameter("id") != null) {
            int id = Integer.parseInt(request.getParameter("id"));
            PreparedStatement stmt = conn.prepareStatement("DELETE FROM `students` WHERE Id = ?");
            stmt.setInt(1, id);
            if (1 == stmt.executeUpdate()) {
%>
<script>
    location.href = "index.jsp";
</script>
<%
            }
        }
    } catch (Exception e) {
        out.print(e);
    }
%>