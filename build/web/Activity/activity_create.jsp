<%-- 
    Document   : activity_create
    Created on : 02.12.2016, 13:36:55
    Author     : hools_000
--%>


<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="Category.categoryGetter"%>
<%@page import="Hibernate.Category"%>
<%@page import="Activity.activityGetter"%>
<%@page import="Hibernate.Activity"%>
<%@page import="Hibernate.HibernateUtil"%>
<%@page import="Activity.activitySetter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Activity Tracker - create activity</title>

    <!-- Bootstrap -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="../css/font-awesome.min.css">

    <!-- Custom Style -->
    <link rel="stylesheet" href="../css/style.css">

    <!--.js -->




    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script>
        $(function () {
            jQuery("activity_start_time").combodate({
                minYear: 2000,
                maxYear: 2020
            });
        });
        $(function () {
            jQuery("activity_end_time").combodate({
                minYear: 2000,
                maxYear: 2020
            });
        });


    </script>

</head>




<!-- Jumbotron -->
<div class="jumbotron">
    <div class="container">
        <h1>Activität anlegen.</h1>
        <p>aaaleng</p> 
    </div>
</div><!-- /End Jumbotron -->

<form action="activity_create.jsp">

    <div class="panel panel-default">
        <div class="panel-heading">Name eingeben</div>
        <div class="panel-body">
            <input type="text" name="Name" value="" /> 
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">Beschreibung eingeben</div>
        <div class="panel-body">
            <input type="text" name="Beschreibung" value="" /> 
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">Kategorie auswählen</div>
        <div class="panel-body">
            <select name="Kategorien">

                <%
                    Category[] CategoryArr = categoryGetter.getCategorys();
                    for (int i = 0; i < CategoryArr.length; i++) {

                %> 

                <option value="<%=CategoryArr[i].getCategoryId()%>"><%=CategoryArr[i].getCategoryName()%></option>        

                <%
                    }
                    HibernateUtil.getSessionFactory().getCurrentSession().disconnect();

                %>
            </select>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">Startzeit eingeben</div>
        <div class="panel-body">
            <input type="datetime-local" name="activity_start_time">
            <!--<input type="text" name="activity_start_time" id="activity_start_time" data-format="DD.MM.YYYY HH:mm" data-template="DD / MM / YYYY HH : mm" required="required"/> -->
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">Endzeit eingeben</div>
        <div class="panel-body">
            <input type="datetime-local" name="activity_end_time">
            <!--<input type="text" name="activity_end_time" id="activity_end_time" data-format="DD.MM.YYYY HH:mm" data-template="DD / MM / YYYY HH : mm" required="required"/> -->
        </div>
    </div>
    <input type="submit" value="speichern" >

    <%       
        String s1 = request.getParameter("Name");
        String s2 = request.getParameter("Beschreibung");
        String s3 = request.getParameter("Kategorie");

        String s4 = request.getParameter("activity_start_time");

        String s5 = request.getParameter("activity_end_time");

        if (s1 != null && s2 != null && s3 != null && s4 != null && s5 != null) {
            Integer fkCategoryId = Integer.parseInt(s3);
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            LocalDateTime activity_start_time = LocalDateTime.parse(s4, formatter);
            LocalDateTime activity_end_time = LocalDateTime.parse(s5, formatter);
            


           activitySetter.createActivity(s1, s2, fkCategoryId, activity_start_time, activity_end_time);
           // activitySetter.createActivity(s1, s2, fkCategoryId, LocalDateTime.parse(s4, formatter), LocalDateTime.parse(s5, formatter));
           // out.println("Kategorie" + s2 + "angelegt");
        }
    %> 
</form>

<script type="text/javascript">
<!--
    function toggle_visibility(id) {
        var e = document.getElementById(id);
        if (e.style.display == 'none')
            e.style.display = 'block';
        else
            e.style.display = 'none';
    }
//-->
</script>     
<br></br>

<a href="#" onclick="toggle_visibility('foo');">Aktivitäten anzeigen</a>
<br></br>

<div id="foo" class="panel panel-default">
    <!-- Default panel contents -->
    <div class="panel-heading">Kategorien</div>
    <!-- Table -->
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


    <hr>

    <footer>
        <p>&copy; 2016 MoveoMed, GmbH</p>
    </footer>
</div> <!-- /container -->  



<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.1.1.min.js"></script> 
<script src="js/moment.min.js"></script> 
<script src="js/combodate.js"></script> 

</html>
