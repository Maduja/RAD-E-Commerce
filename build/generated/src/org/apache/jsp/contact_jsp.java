package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import app.classes.EmailSender;

public final class contact_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>contact</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"css.css\">\n");
      out.write("</head>\n");
      out.write("\n");

    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String name = request.getParameter("name");
        String message = request.getParameter("message");
        String senderEmail = request.getParameter("email");
        String subject = "Contact Form";
        if(EmailSender.sendEmail(senderEmail, subject, message)){
            
      out.write("\n");
      out.write("            <script>\n");
      out.write("                alert(\"Your Message Send Successfully.\")\n");
      out.write("            </script>\n");
      out.write("            ");

        }
    }

      out.write("\n");
      out.write("<body>\n");
      out.write("    <header>\n");
      out.write("        <nav class=\"navbar\">\n");
      out.write("            <div class=\"logo\"><img src=\"images/rw.png\" alt=\"Company Logo\" width=\"50%\"></div>\n");
      out.write("            <ul class=\"nav-links\">\n");
      out.write("                \n");
      out.write("                <li><a href=\"products.jsp\"><b>Products</b></a></li>\n");
      out.write("                <li><a href=\"about_us.jsp\"><b>About</b></a></li>\n");
      out.write("                <li><a href=\"logout\" class=\"btn btn-danger\"><b>Logout</b></a></li>\n");
      out.write("                \n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("    </header>\n");
      out.write("    <hr style=\"height:5px;border-width:0;color:gray;background-color:blue\">\n");
      out.write("    \n");
      out.write("    <div class=\"contact\">\n");
      out.write("        <section class=\"overlay-section\">\n");
      out.write("           \n");
      out.write("            <div class=\"contact_us\" id=\"contact_us\">\n");
      out.write("                <h2>Contact Us</h2>\n");
      out.write("                <form action=\"about_us.jsp\" method=\"post\">\n");
      out.write("                    <label for=\"name\">Name:</label>\n");
      out.write("                    <input type=\"text\" id=\"name\" name=\"name\" required>\n");
      out.write("                     <label for=\"email\">Email:</label>\n");
      out.write("                    <input type=\"email\" id=\"name\" name=\"email\" required>\n");
      out.write("                    <label for=\"message\">FeedBack:</label>\n");
      out.write("                    <textarea id=\"message\" name=\"message\" rows=\"4\" cols=\"70\" required></textarea>\n");
      out.write("                    <button type=\"submit\">Send</button>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <footer>\n");
      out.write("        <p>&copy; 2024 BuyBliss. All rights reserved.</p>\n");
      out.write("    </footer>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
