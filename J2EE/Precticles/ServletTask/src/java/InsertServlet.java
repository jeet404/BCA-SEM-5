
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class InsertServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String conStat = "";
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            // Database Connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc_demo", "root", "");
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
                    + "    <title>Welcome " + conStat + "</title>\n"
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
                    + "                        <a class=\"nav-link active\" href=\"InsertServlet\">Insert</a>\n"
                    + "                    </li>\n"
                    + "                </ul>\n"
                    + "            </div>\n"
                    + "        </div>\n"
                    + "    </nav>\n"
                    + "    <div class='mt-5 col-md-12 d-flex justify-content-center'>\n"
                    + "        <form action=\"InsertProcess\" method=\"POST\" class=\"form border shadow rounded col-md-0 w-50 p-3 m-3\">\n"
                    + "            <div class=\"mb-3\">\n"
                    + "                <label class=\"form-label\">Name : </label>\n"
                    + "                <input type=\"text\" name=\"name\" class=\"form-control\">\n"
                    + "            </div>\n"
                    + "            <div class=\"mb-3\">\n"
                    + "                <label class=\"form-label\">Age : </label>\n"
                    + "                <input type=\"text\" name=\"age\" class=\"form-control\">\n"
                    + "            </div>\n"
                    + "            <div class=\"mb-3\">\n"
                    + "                <label class=\"form-label\">Course : </label>\n"
                    + "                <input type=\"text\" name=\"course\" class=\"form-control\">\n"
                    + "            </div>\n"
                    + "            <div class=\"mb-3\">\n"
                    + "                <input type=\"submit\" class=\"btn btn-success\" value=\"Save\">\n"
                    + "            </div>\n"
                    + "        </form>\n"
                    + "    </div>\n"
                    + "</body>\n"
                    + "\n"
                    + "</html>");
        } catch (ClassNotFoundException e) {
            out.println(e.toString());
            out.close();
        } catch (SQLException e) {
            out.println(e.toString());
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
