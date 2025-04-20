package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>BuyBliss</title>\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\">\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            .cascading-left {\n");
      out.write("                margin-left: -50px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @media (max-width: 991.98px) {\n");
      out.write("                .cascading-left {\n");
      out.write("                    margin-left: 0;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            #img {\n");
      out.write("                animation: move 2.2s infinite ease-in-out;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @keyframes move {\n");
      out.write("                0% { transform: translateY(0); }\n");
      out.write("                50% { transform: translateY(-20px); }\n");
      out.write("                100% { transform: translateY(0); }\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <section class=\"text-center text-lg-start\">\n");
      out.write("            <div class=\"container py-4\">\n");
      out.write("                <nav class=\"navbar navbar-expand-lg navbar-light bg-white\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <a class=\"navbar-brand d-flex justify-content-between\" href=\"index.html\">\n");
      out.write("                            <img src=\"images/logo1.png\" alt=\"Company Logo\" width=\"80%\">\n");
      out.write("                        </a>\n");
      out.write("                        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNav\"\n");
      out.write("                                aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                            <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                        </button>\n");
      out.write("                        <div class=\"collapse navbar-collapse navbar-light\" id=\"navbarNav\">\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </nav>\n");
      out.write("\n");
      out.write("                <div class=\"row g-0 align-items-center\">\n");
      out.write("                    <div class=\"col-lg-6 mb-5 mb-lg-0\" id=\"img\">\n");
      out.write("                        <img src=\"images/bg.png\" class=\"w-180 d-none d-lg-block\" alt=\"\" style=\"width: 500px;height: 400px\" />\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"col-lg-6 mb-5 mb-lg-0\">\n");
      out.write("                        <div class=\"card cascading-left\"\n");
      out.write("                             style=\"background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px);\">\n");
      out.write("                            <div class=\"card-body p-5 shadow-5 text-center\">\n");
      out.write("                                <h2 class=\"fw-bold mb-5\">Sign Up</h2>\n");
      out.write("                                ");

                                    if (request.getParameter("s") != null) {
                                        String message;
                                        if (request.getParameter("s").equals("1")) {
                                            message = "<h6 class='text-success'>You have successfully registered.</h6>";
                                            
                                        } else {
                                            message = "<h6 class='text-danger'>An error occurred. Please register again.</h6>";
                                        }
                                        out.println(message);
                                    }
                                
      out.write("\n");
      out.write("\n");
      out.write("                                <form method=\"POST\" action=\"registration.jsp\">\n");
      out.write("                                    <div class=\"row\">\n");
      out.write("                                        <div class=\"col-md-6 mb-4\">\n");
      out.write("                                            <div class=\"form-outline\">\n");
      out.write("                                                <input type=\"text\" id=\"firstnameInput\" name=\"firstname\" class=\"form-control\" placeholder=\"First name\" required/>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"col-md-6 mb-4\">\n");
      out.write("                                            <div class=\"form-outline\">\n");
      out.write("                                                <input type=\"text\" id=\"lastnameInput\" name=\"lastname\" class=\"form-control\" placeholder=\"Last name\" required/>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"form-outline mb-4\">\n");
      out.write("                                        <input type=\"email\" id=\"emailInput\" name=\"username\" class=\"form-control\" placeholder=\"Email address\" required/>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"form-outline mb-4\">\n");
      out.write("                                        <input type=\"password\" id=\"passwordInput\" name=\"password\" class=\"form-control\" placeholder=\"Password\" required/>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <button type=\"submit\" class=\"btn btn-primary btn-block mb-4\">\n");
      out.write("                                        Sign Up\n");
      out.write("                                    </button>\n");
      out.write("\n");
      out.write("                                    <div class=\"text-center\">\n");
      out.write("                                        <p>Already have an account? <a href=\"index.jsp\">Sign in</a></p>\n");
      out.write("                                    </div>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </section>\n");
      out.write("        \n");
      out.write("        <footer class=\"bg-dark text-light text-center py-2\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <p>&copy; 2024 BuyBliss. All rights reserved.</p>\n");
      out.write("            </div>\n");
      out.write("        </footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("        \n");
      out.write("        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
