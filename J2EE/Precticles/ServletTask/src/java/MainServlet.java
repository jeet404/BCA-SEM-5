
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String conStat = "";
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            // Database Connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_demo", "root", "");
            Statement stmt = conn.createStatement();
            ResultSet res = stmt.executeQuery("SELECT * FROM students");
            if (!conn.isClosed()) {
                conStat = "Connected";
            }
            // Web Content
            out.println("<!DOCTYPE html>\n"
                    + "<html>\n"
                    + "\n"
                    + "<head>\n"
                    + "    <meta charset='utf-8'>\n"
                    + "    <meta http-equiv='X-UA-Compatible' content='IE=edge'>\n"
                    + "    <title>Welcome " + conStat + " </title>\n"
                    + "    <meta name='viewport' content='width=device-width, initial-scale=1'>\n"
                    + "    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\n"
                    + "        integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\n"
                    + "    <style>\n"
                    + "        * {\n"
                    + "            margin: 0;\n"
                    + "            padding: 0;\n"
                    + "            box-sizing: border-box\n"
                    + "        }\n"
                    + "    </style>\n"
                    + "</head>\n"
                    + "\n"
                    + "<body>\n"
                    + "    <nav class=\"navbar navbar-expand-lg navbar-dark bg-primary\">\n"
                    + "        <div class=\"container-fluid\">\n"
                    + "            <a class=\"navbar-brand\" href=\"MainServlet\">Servlet Task</a>\n"
                    + "            <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarNav\"\n"
                    + "                aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Togglenavigation\">\n"
                    + "                <span class=\"navbar-toggler-icon\"></span>\n"
                    + "            </button>\n"
                    + "            <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\n"
                    + "                <ul class=\"navbar-nav\">\n"
                    + "                    <li class=\"nav-item\">\n"
                    + "                        <a class=\"nav-link\" href=\"InsertServlet\">Insert</a>\n"
                    + "                    </li>\n"
                    + "                </ul>\n"
                    + "            </div>\n"
                    + "        </div>\n"
                    + "    </nav>\n"
                    + "    <table class=\"table mt-3 container border rounded shadow\">\n"
                    + "         <caption style=\"caption-side:top\"><h3>Student Data</h3></caption>\n"
                    + "        <thead>\n"
                    + "            <tr>\n"
                    + "                <th scope=\"col\">No.</th>\n"
                    + "                <th scope=\"col\">Name</th>\n"
                    + "                <th scope=\"col\">Age</th>\n"
                    + "                <th scope=\"col\">Course</th>\n"
                    + "                <th scope=\"col\">Update/Delete</th>\n"
                    + "            </tr>\n"
                    + "        </thead>\n"
                    + "        <tbody>\n");
            while (res.next()) {
                out.println("<tr>\n"
                        + "<th scope=\"row\">" + res.getInt(1) + "</th>\n"
                        + "<td>" + res.getString(2) + "</td>\n"
                        + "<td>" + res.getInt(3) + "</td>\n"
                        + "<td>" + res.getString(4) + "</td>\n"
                        + "<td>\n"
                        + "<a href=\"EditServlet?id=" + res.getInt(1) + "\" class=\"btn btn-primary\">Update</a>\n"
                        + "<a href=\"DeleteProccess?id=" + res.getInt(1) + "\" class=\"btn btn-danger\">Delete</a>\n"
                        + "</td>\n"
                        + "</tr>\n");
            }
            out.println("        </tbody>\n"
                    + "    </table>\n"
                    + "</body>\n"
                    + "\n"
                    + "</html>"
            );
        } catch (ClassNotFoundException e) {
            out.println(e.toString());
            out.close();
        } catch (SQLException e) {
            out.println(e.toString());
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
