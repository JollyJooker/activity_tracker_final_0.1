package org.apache.jsp.Test_0020Range;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.time.format.DateTimeFormatter;
import Activity.activityGetter;
import Hibernate.HibernateUtil;
import Hibernate.Activity;
import java.time.LocalDateTime;

public final class locatDateTime_005ftest_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        ");


            LocalDateTime currentDateTime = LocalDateTime.now();
            out.println(currentDateTime);

        
      out.write("\n");
      out.write("\n");
      out.write("        <table class=\"table\" width=”600px” border=”1″ bgcolor=”#FFF380″> \n");
      out.write("            <tr>\n");
      out.write("                <th width=”100px”>ID</th>\n");
      out.write("                <th width=”100px”>Name</th>\n");
      out.write("                <th width=”100px”>Beschreibung</th>\n");
      out.write("                <th width=”100px”>Kategorie/typ</th>\n");
      out.write("                <th width=”100px”>Startzeit</th>\n");
      out.write("                <th width=”100px”>Endzeit</th>\n");
      out.write("            </tr>\n");
      out.write("            <tr>                \n");
      out.write("                ");

                    Activity[] ActivityArr = activityGetter.getActivities();
                    for (int i = 0; i < ActivityArr.length; i++) {
                    
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            

                
      out.write(" \n");
      out.write("            <tr>\n");
      out.write("                <td><b>");
      out.print(ActivityArr[i].getActivityId());
      out.write("</b></td>\n");
      out.write("                <td><b>");
      out.print(ActivityArr[i].getActivityName());
      out.write("</b></td>\n");
      out.write("                <td><b>");
      out.print(ActivityArr[i].getActivityDescription());
      out.write("</b></td>\n");
      out.write("                <td><b>");
      out.print(ActivityArr[i].getFkCategoryId());
      out.write("</b></td>\n");
      out.write("                <td><b>");
      out.print(ActivityArr[i].getActivityStartTime());
      out.write("</b></td>\n");
      out.write("                <td><b>");
      out.print(ActivityArr[i].getActivityEndTime());
      out.write("</b></td>                  \n");
      out.write("\n");
      out.write("\n");
      out.write("                ");

                    }
                    HibernateUtil.getSessionFactory().getCurrentSession().disconnect();

                
      out.write("               \n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("\n");
      out.write("\n");
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
