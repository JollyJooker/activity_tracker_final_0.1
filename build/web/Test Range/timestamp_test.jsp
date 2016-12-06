<%-- 
    Document   : timestamp_test
    Created on : 05.12.2016, 11:10:32
    Author     : MM-Produktion
--%>

<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.Timestamp"%>
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

        <br></br>
        <br></br>
        <br></br>

        <%
            Timestamp test = Timestamp.valueOf(currentDateTime);
            out.println(test);

        %>



            </body>
            </html>
