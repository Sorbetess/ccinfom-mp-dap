<%@page import="java.text.*"%>
<%@page import="java.util.Date"%>
<%@page import="DiningAccommodation.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <head>
            <title>Pulse - Restaurant HTML Template</title>
            <meta charset="UTF-8">
            <meta name="description" content="Pulse Restaurant HTML Template">
            <meta name="keywords" content="pulse, restaurant, creative, html">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <base href="..">
            <!-- Favicon -->   
            <link href="img/favicon.ico" rel="shortcut icon"/>

            <!-- Stylesheets -->
            <link rel="stylesheet" href="css/bootstrap.min.css"/>
            <link rel="stylesheet" href="css/font-awesome.min.css"/>
            <link rel="stylesheet" href="css/flaticon.css"/>
            <link rel="stylesheet" href="css/owl.carousel.css"/>
            <link rel="stylesheet" href="css/style.css"/>
            <link rel="stylesheet" href="css/animate.css"/>


            <!--[if lt IE 9]>
              <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
              <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->

    </head>
<body>


	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
    </div>
    <h1>Processing your request.</h1>
    
    <%
        DiningOfferings off = new DiningOfferings();
        
        try {
        Date date = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("date"));
        off.offeringdate = new java.sql.Date(date.getTime());
        off.maxclient = Integer.parseInt(request.getParameter("maxclient"));
        
        off.createOffering();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("http://localhost:8084/Dining_Accommodation/gl_create/gl_create_fail.html");
        }
        response.sendRedirect("http://localhost:8084/Dining_Accommodation/gl_create/gl_create_success.html");
    %>
	



	<!--====== Javascripts & Jquery ======-->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/main.js"></script>


	<!-- load for map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB0YyDTa0qqOjIerob2VTIwo_XVMhrruxo"></script>
	<script src="js/map.js"></script>
	
    </body>
</html>
