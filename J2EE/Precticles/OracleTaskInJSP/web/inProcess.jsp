<%@page import="java.util.Random"%>
<%@include file="oracleCon.jsp" %>
<%@page import="java.util.Collection.*" %>
<%    try {
        Random rd = new Random();
        if (request.getParameter("fname") != null && request.getParameter("mno") != null && request.getParameter("age") != null && request.getParameter("fld") != null && request.getParameter("dt") != null) {
            int apid = rd.nextInt(30000);
            PreparedStatement stmt = conn.prepareStatement("INSERT INTO appointments VALUES(?,?,?,?,?,?)");
            stmt.setString(1, request.getParameter("fname"));
            stmt.setString(2, request.getParameter("mno"));
            stmt.setInt(3, Integer.parseInt(request.getParameter("age")));
            stmt.setString(4, request.getParameter("fld"));
            stmt.setString(5, request.getParameter("dt"));
            stmt.setInt(6, apid);
            if (1 == stmt.executeUpdate()) {
                out.print(apid);
            }
        }
    } catch (Exception e) {
        out.print(e);
    }
%>