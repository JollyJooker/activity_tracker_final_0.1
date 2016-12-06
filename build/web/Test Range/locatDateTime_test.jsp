<%-- 
    Document   : locatDateTime_test
    Created on : 05.12.2016, 09:23:55
    Author     : MM-Produktion
--%>

<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="Activity.activityGetter"%>
<%@page import="Hibernate.HibernateUtil"%>
<%@page import="Hibernate.Activity"%>
<%@page import="java.time.LocalDateTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%

            LocalDateTime currentDateTime = LocalDateTime.now();
            out.println(currentDateTime);

        %>

        <table class="table" width=”600px” border=”1″ bgcolor=”#FFF380″> 
            <tr>
                <th width=”100px”>ID</th>
                <th width=”100px”>Name</th>
                <th width=”100px”>Beschreibung</th>
                <th width=”100px”>Kategorie/typ</th>
                <th width=”100px”>Startzeit</th>
                <th width=”100px”>Endzeit</th>
            </tr>
            <tr>                
                <% 
                    Activity[] ActivityArr = activityGetter.getActivities();
                    for (int i = 0; i < ActivityArr.length; i++) {
                    
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            

                %> 
            <tr>
                <td><b><%=ActivityArr[i].getActivityId()%></b></td>
                <td><b><%=ActivityArr[i].getActivityName()%></b></td>
                <td><b><%=ActivityArr[i].getActivityDescription()%></b></td>
                <td><b><%=ActivityArr[i].getFkCategoryId()%></b></td>
                <td><b><%=ActivityArr[i].getActivityStartTime()%></b></td>
                <td><b><%=ActivityArr[i].getActivityEndTime()%></b></td>                  


                <%
                    }
                    HibernateUtil.getSessionFactory().getCurrentSession().disconnect();

                %>               
            </tr>
        </table>


    </body>
</html>
