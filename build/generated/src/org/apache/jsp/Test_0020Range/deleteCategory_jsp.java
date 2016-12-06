package org.apache.jsp.Test_0020Range;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Hibernate.HibernateUtil;
import Hibernate.Category;
import Category.categorySetter;
import Category.categoryGetter;

public final class deleteCategory_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write(" \n");
      out.write(" \n");
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
      out.write("        <form>\n");
      out.write("\n");
      out.write("            <input type=\"number\" name=\"ID\" min=\"1\" max=\"500\">\n");
      out.write("            <input type=\"submit\" value=\"löschen\">\n");
      out.write("\n");
      out.write("            ");

                String s1 = request.getParameter("ID");
                if (s1 != null) {

                    categorySetter.CategoryDeleteById(Integer.parseInt((s1)));

                }
            
      out.write("\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("        <div class=\"panel-heading\">Kategorien</div>\n");
      out.write("\n");
      out.write("        <!-- Table -->\n");
      out.write("        <table class=\"table\" width=”600px” border=”1″ bgcolor=”#FFF380″> \n");
      out.write("            <tr>\n");
      out.write("                <th width=”100px”>ID</th>\n");
      out.write("                <th width=”100px”>Name</th>\n");
      out.write("                <th width=\"100px\">Beschreibung</th>\n");
      out.write("                <th width=”100px”>Typ</th>\n");
      out.write("                <th width=”100px”>Löschen</th>\n");
      out.write("\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("            <tr>          \n");
      out.write("\n");
      out.write("                ");

                    Category[] CategoryArr = categoryGetter.getCategorys();
                    for (int i = 0; i < CategoryArr.length; i++) {

                
      out.write(" \n");
      out.write("\n");
      out.write("            <tr>\n");
      out.write("\n");
      out.write("                <td><b>");
      out.print(CategoryArr[i].getCategoryId());
      out.write("</b></td>\n");
      out.write("                <td><b>");
      out.print(CategoryArr[i].getCategoryName());
      out.write("</b></td>\n");
      out.write("                <td><b>");
      out.print(CategoryArr[i].getCategoryDescription());
      out.write("</b></td>\n");
      out.write("                <td><b>");
      out.print(CategoryArr[i].getCategoryType());
      out.write("</b></td>\n");
      out.write("                <td><input type=\"checkbox\" name=\"checker\"/></td>\n");
      out.write("\n");
      out.write("            </tr>\n");
      out.write("\n");
      out.write("            ");
 }
                HibernateUtil.getSessionFactory().getCurrentSession().disconnect();
            
      out.write("\n");
      out.write("        </table>       \n");
      out.write("        <form action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/CategoryServlet\" method=\"post\">\n");
      out.write("            <input type=\"submit\" value=\"löschen\">\n");
      out.write("            ");
 
                
                
                /*

                String[] checked = request.getParameterValues("checker");
                for (int j = 0; j < checked.length; j++) {
                    if (checked[j] != null) {

                    }
                    Category[] CategoryArr2 = categoryGetter.getCategorys();
                    Integer s2 = CategoryArr2[j].getCategoryId();
                    categorySetter.CategoryDeleteById(s2);

                }

                HibernateUtil.getSessionFactory().getCurrentSession().disconnect();
                 */
            
      out.write("               \n");
      out.write("        </form>\n");
      out.write("    </div>\n");
      out.write("\n");
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
