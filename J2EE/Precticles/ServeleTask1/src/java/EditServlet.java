
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
                + "          <a class=\"nav-link active\" href=\"InsertServlet\">Insert</a>\n"
                + "        </li>\n"
                + "      </ul>\n"
                + "    </div>\n"
                + "  </div>\n"
                + "</nav>";
        String form = "<form class=\"form border shadow rounded col-md-0 w-50 p-3 m-3\">\n"
                + "<div class=\"mb-3\">\n"
                + "       <label class=\"form-label\">Name : </label>\n"
                + "       <input type=\"text\" class=\"form-control\">\n"
                + "</div>\n"
                + "<div class=\"mb-3\">\n"
                + "     <label class=\"form-label\">Age : </label>\n"
                + "     <input type=\"text\" class=\"form-control\">\n"
                + "</div>"
                + "<div class=\"mb-3\">\n"
                + "     <label class=\"form-label\">Course : </label>\n"
                + "     <input type=\"text\" class=\"form-control\">\n"
                + "</div>"
                + "<div class=\"mb-3\">\n"
                + "     <input type=\"submit\" class=\"btn btn-success\" value=\"Save\">\n"
                + "</div>"
                + "</form>";
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Update Page</title>");
            out.println(css);
            out.println(mystyle);
            out.println("</head>");
            out.println("<body>");
            out.println(navbar);
            out.println("<div class='mt-5 col-md-12 d-flex justify-content-center'>");
            out.println(form);
            out.println("</div>");
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
