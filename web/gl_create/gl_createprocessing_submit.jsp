<%-- 
    Document   : gl_createprocessing
    Created on : Dec 14, 2019, 10:58:10 PM
    Author     : Bryce Ramirez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "DiningAccommodation.*, java.util.*" %>
<!DOCTYPE html>
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
       
        double cost = Double.parseDouble(request.getParameter("cost"));
        String bookdate = request.getParameter("bookdate");
        String confirmdate = request.getParameter("confirmdate");
        String paiddate = request.getParameter("paiddate");
        int rating = Integer.parseInt(request.getParameter("rating"));
        String feedback = request.getParameter("feedback");
        String email = request.getParameter("userselector");
        int groupid = Integer.parseInt(request.getParameter("groupselector"));
        int diningoffid = Integer.parseInt(request.getParameter("offeringselector"));
        
        Booking b = new Booking();
        b.getNextBooking();
        b.cost = cost;
        b.bookdate = bookdate;
        b.confirmdate = confirmdate;
        b.paiddate = paiddate;
        b.rating = rating;
        b.feedback = feedback;
        b.groupid = groupid;
        b.diningoffid = diningoffid;
        
        b.book();
        
        String redirectURL;
        if (b.status==1)
                redirectURL = "gl_create_success.html";
        else
                redirectURL = "gl_create_fail.html";
        response.sendRedirect(redurectURL);
        

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