<%@page import="java.util.Random"%>
<%@include file="oracleCon.jsp" %>
<%@page import="java.util.Collection.*" %>
<%    Random rd = new Random();
    if (request.getParameter("iTake") == null) {
        int apid = rd.nextInt(30000);
        PreparedStatement stmt = conn.prepareStatement("INSERT INTO appointments VALUES(?,?,?,?,?,?)");
        stmt.setInt(1, apid);
        stmt.setString(2, request.getParameter("fname"));
        stmt.setString(3, request.getParameter("mno"));
        stmt.setInt(4, Integer.parseInt(request.getParameter("age")));
        stmt.setString(5, request.getParameter("fld"));
        stmt.setString(6, request.getParameter("dt"));
        if (1 == stmt.executeUpdate()) {

%>
<%        }
    }
%>