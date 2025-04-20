package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import app.classes.DbConnector;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class adminpannel1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <link rel=\"stylesheet\" href=\"css.css\">\n");
      out.write("    <title>Admin Panel</title>\n");
      out.write("    <style>\n");
      out.write("        body {\n");
      out.write("            background-color: lightblue;\n");
      out.write("            font-family: Arial, sans-serif;\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 0;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        \n");
      out.write("\n");
      out.write("        form {\n");
      out.write("            margin: 20px;\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .button {\n");
      out.write("            background-color: #007bff;\n");
      out.write("            border: none;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            color: white;\n");
      out.write("            padding: 15px 25px;\n");
      out.write("            text-align: center;\n");
      out.write("            text-decoration: none;\n");
      out.write("            display: inline-block;\n");
      out.write("            font-size: 16px;\n");
      out.write("            margin: 10px;\n");
      out.write("            cursor: pointer;\n");
      out.write("            transition: background-color 0.3s;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .button:hover {\n");
      out.write("            background-color: #0056b3;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        hr {\n");
      out.write("            height: 5px;\n");
      out.write("            border-width: 0;\n");
      out.write("            color: gray;\n");
      out.write("            background-color: blue;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        h1{\n");
      out.write("            text-align: center;\n");
      out.write("            color: red; \n");
      out.write("        }\n");
      out.write("        .container {\n");
      out.write("            display: flex;\n");
      out.write("            justify-content: center;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <header>\n");
      out.write("        <nav class=\"navbar\">\n");
      out.write("            <div class=\"logo\"><img src=\"images/rw.png\" alt=\"Company Logo\" width=\"50%\"></div>\n");
      out.write("            <ul class=\"nav-links\">\n");
      out.write("                <li><a href=\"products.jsp\"><b>Products</b></a></li>\n");
      out.write("                <li><a href=\"logout\" class=\"btn btn-danger\"><b>Logout</b></a></li>\n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("    </header>\n");
      out.write("    \n");
      out.write("    <hr style=\"height:5px;border-width:0;color:gray;background-color:blue\">\n");
      out.write("    <br>\n");
      out.write("    <h1>Welcome to the Admin pannel</h1>\n");
      out.write("    <br>\n");
      out.write("    <form>\n");
      out.write("        <a href=\"add.jsp\" class=\"button\">Add New Product</a>\n");
      out.write("        <a href=\"remove.jsp\" class=\"button\">Edit or Delete Product</a>\n");
      out.write("    </form>\n");
      out.write("    <div class=\"container\">\n");
      out.write("  <img src=\"images/admin.jpg\" alt=\"admin logo\" width=\"20%\">\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("    \n");
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
