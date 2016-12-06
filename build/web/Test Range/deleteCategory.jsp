<%@page import="Hibernate.HibernateUtil"%>
<%@page import="Hibernate.Category"%>
<%@page import="Category.categorySetter" %> 
<%@page import="Category.categoryGetter" %> 

<%-- 
    Document   : deleteCategory
    Created on : 05.12.2016, 14:00:35
    Author     : MM-Produktion
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form>

            <input type="number" name="ID" min="1" max="500">
            <input type="submit" value="löschen">

            <%
                String s1 = request.getParameter("ID");
                if (s1 != null) {

                    categorySetter.CategoryDeleteById(Integer.parseInt((s1)));

                }
            %>
        </form>

        <div class="panel-heading">Kategorien</div>

        <!-- Table -->
        <table class="table" width=”600px” border=”1″ bgcolor=”#FFF380″> 
            <tr>
                <th width=”100px”>ID</th>
                <th width=”100px”>Name</th>
                <th width="100px">Beschreibung</th>
                <th width=”100px”>Typ</th>
                <th width=”100px”>Löschen</th>


            </tr>
            <tr>          

                <%
                    Category[] CategoryArr = categoryGetter.getCategorys();
                    for (int i = 0; i < CategoryArr.length; i++) {

                %> 

            <tr>

                <td><b><%=CategoryArr[i].getCategoryId()%></b></td>
                <td><b><%=CategoryArr[i].getCategoryName()%></b></td>
                <td><b><%=CategoryArr[i].getCategoryDescription()%></b></td>
                <td><b><%=CategoryArr[i].getCategoryType()%></b></td>
                <td><input type="checkbox" name="checker"/></td>

            </tr>

            <% }
                HibernateUtil.getSessionFactory().getCurrentSession().disconnect();
            %>
        </table>       
        <form action="${pageContext.request.contextPath}/CategoryServlet" method="post">
            <input type="submit" value="löschen">
            <% 
                
                
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
            %>               
        </form>
    </div>

</body>
</html>
