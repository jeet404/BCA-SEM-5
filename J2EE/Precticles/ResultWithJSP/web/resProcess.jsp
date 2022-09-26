<%@page import="java.sql.*" %>
<%
    int tot = 0;
    float per = 0;
    String grade = "";
    int seo, asp, j2ee, prec, viva;
    seo = asp = j2ee = prec = viva = 0;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_demo", "root", "");
        if (request.getParameter("iCal") != null) {
            seo = Integer.parseInt(request.getParameter("seo"));
            asp = Integer.parseInt(request.getParameter("asp"));
            j2ee = Integer.parseInt(request.getParameter("j2ee"));
            prec = Integer.parseInt(request.getParameter("prec"));
            viva = Integer.parseInt(request.getParameter("viva"));

            tot = seo + asp + j2ee + prec + viva;
            per = tot / 5;

            if (per > 85) {
                grade = "A";
            } else if (per > 75) {
                grade = "B";
            } else if (per > 65) {
                grade = "C";
            } else if (per > 55) {
                grade = "D";
            } else if (per > 35) {
                grade = "Fail";
            }

            PreparedStatement stmt = conn.prepareStatement("INSERT INTO `stud_result`(`Name`, `GrNo`, `m_seo`, `m_asp`, `m_j2ee`, `m_prec`, `m_viva`, `m_total`, `m_per`, `m_grade`) VALUES (?,?,?,?,?,?,?,?,?,?)");
            stmt.setString(1, request.getParameter("name"));
            stmt.setString(2, request.getParameter("grno"));
            stmt.setInt(3, seo);
            stmt.setInt(4, asp);
            stmt.setInt(5, j2ee);
            stmt.setInt(6, prec);
            stmt.setInt(7, viva);
            stmt.setInt(8, tot);
            stmt.setFloat(9, per);
            stmt.setString(10, grade);
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