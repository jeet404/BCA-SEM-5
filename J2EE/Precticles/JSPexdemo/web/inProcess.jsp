<%@page import="java.sql.*" %>
<%
    try {
        Connection conn;
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_demo", "root", "");
        if (request.getParameter("iAdd") != null && request.getParameter("name") != null && request.getParameter("age") != null && request.getParameter("course") != null) {
            PreparedStatement ps = conn.prepareStatement("INSERT INTO `students`(`Name`, `Age`, `Course`) VALUES (?,?,?)");
            String name = request.getParameter("name");
            int age = Integer.parseInt(request.getParameter("age"));
            String course = request.getParameter("course");
            ps.setString(1, name);
            ps.setInt(2, age);
            ps.setString(3, course);
            if (1 == ps.executeUpdate()) {
%>
<script>
    alert("Data Inserted!");
    location.href = "addD.jsp";
</script>
<%
        }
    }
    if (request.getParameter("iEdit") != null && request.getParameter("name") != null && request.getParameter("age") != null && request.getParameter("course") != null) {
        int id = Integer.parseInt(request.getParameter("id"));
        PreparedStatement ps = conn.prepareStatement("UPDATE `students` SET `Name`=?,`Age`=?,`Course`=? WHERE Id = ?");
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String course = request.getParameter("course");
        ps.setString(1, name);
        ps.setInt(2, age);
        ps.setString(3, course);
        ps.setInt(4, id);
        if (1 == ps.executeUpdate()) {
%>
<script>
    alert("Data Updated!");
    location.href = "addD.jsp";
</script>
<%
            }
        }
    } catch (Exception e) {
        out.print(e);
    }
%>