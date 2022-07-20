
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //Web Content
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String css = "<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">";
        String mystyle = "<style>"
                + "*{\n"
                + "    margin: 0;\n"
                + "    padding: 0;\n"
                + "    box-sizing: border-box;\n"
                + "}\n"
                + "</style>";
        String navbar = "<nav class=\"navbar navbar-expand-lg navbar-dark bg-primary\">\n"
                + "  <div class=\"container-fluid\">\n"
                + "    <a class=\"navbar-brand\" href=\"MainServlet\">Servlet Task</a>\n"
                + "    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n"
                + "      <span class=\"navbar-toggler-icon\"></span>\n"
                + "    </button>\n"
                + "    <div class=\"collapse navbar-collapse\" id=\"navbarNav\">\n"
                + "      <ul class=\"navbar-nav\">\n"
                + "        <li class=\"nav-item\">\n"
                + "          <a class=\"nav-link\" href=\"InsertServlet\">Insert</a>\n"
                + "        </li>\n"
                + "      </ul>\n"
                + "    </div>\n"
                + "  </div>\n"
                + "</nav>";
        String table = "<table class=\"table mt-1\">\n"
                + "  <thead>\n"
                + "    <tr>\n"
                + "      <th scope=\"col\">No.</th>\n"
                + "      <th scope=\"col\">Name</th>\n"
                + "      <th scope=\"col\">Age</th>\n"
                + "      <th scope=\"col\">Course</th>\n"
                + "      <th scope=\"col\">Update/Delete</th>\n"
                + "    </tr>\n"
                + "  </thead>\n"
                + "  <tbody>\n"
                + "    <tr>\n"
                + "      <th scope=\"row\">1</th>\n"
                + "      <td>Jeet Patel</td>\n"
                + "      <td>19</td>\n"
                + "      <td>BCA5</td>\n"
                + "       <td>\n"
                + "       <a href=\"#\" class=\"btn btn-primary\">Update</a>\n"
                + "       <a href=\"#\" class=\"btn btn-danger\">Delete</a>\n"
                + "       </td>\n"
                + "    </tr>\n"
                + "  </tbody>\n"
                + "</table>";
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Welcome to Website</title>");
            out.println(css);
            out.println(mystyle);
            out.println("</head>");
            out.println("<body>");
            out.println(navbar);
            out.println(table);
            out.println("</body>");
            out.println("</html>");
        } finally {
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
