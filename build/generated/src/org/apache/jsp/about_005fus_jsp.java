package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import app.classes.EmailSender;

public final class about_005fus_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>about</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css.css\">\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <nav class=\"navbar\">\n");
      out.write("                <div class=\"logo\"><img src=\"images/rw.png\" alt=\"Company Logo\" width=\"50%\"></div>\n");
      out.write("                <ul class=\"nav-links\">\n");
      out.write("                    \n");
      out.write("                    <li><a href=\"products.jsp\"><b>Products</b></a></li>\n");
      out.write("                    <li><a href=\"contact.jsp\"><b>Contact</b></a></li>\n");
      out.write("                    <li><a href=\"logout\" class=\"btn btn-danger\"><b>Logout</b></a></li>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("\n");
      out.write("        <div class=\"about\">\n");
      out.write("\n");
      out.write("            <div class=\"about_us\" id=\"about_us\">\n");
      out.write("                <h2>About Us</h2>\n");
      out.write("                <p>\n");
      out.write("                    At BuyBliss, we believe that shopping should be more than just a transaction it should be an experience that brings joy, value, and convenience to your life. As a proud local business, we are committed to offering a diverse range of high quality products at unbeatable prices, ensuring that you can shop smart and live better every day.<br><br>\n");
      out.write("                    Our mission is to create a seamless and enjoyable shopping experience for our customers, where satisfaction is not just a promise but a guarantee. We meticulously curate our product selection to meet the unique needs and tastes of our community, combining the latest trends with timeless essentials.<br><br>\n");
      out.write("                    Whether you're searching for the latest gadgets, everyday essentials, or that perfect gift, BuyBliss is your one stop destination. We are passionate about helping you discover great deals and exceptional products, all while supporting our local economy.<br><br>\n");
      out.write("                    Join us on our journey to redefine local shopping. With BuyBliss, you can shop with confidence, knowing that you are getting the best value, while contributing to the growth and success of our local community. Because at BuyBliss, we don't just sell products we enrich lives.<br><br>\n");
      out.write("                    Shop Smart, Live Better with BuyBliss.<br>\n");
      out.write("                </p>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <footer>\n");
      out.write("            <p>&copy; 2024 BuyBliss. All rights reserved.</p>\n");
      out.write("        </footer>\n");
      out.write("    </body>\n");
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
