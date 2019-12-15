
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "DiningAccommodation.*, java.util.*" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>Search Display</title>
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

    <!-- Page info section -->
	<section class="page-top-info set-bg" data-setbg="img/page-top-bg/2.jpg" id="booky">
		<div class="ptf-center">
			<div class="container">
				<h2>Offering details<span>.</span></h2>
			</div>
		</div>
	</section>
        




    <div class="container">
        
        <div class="col-12">
            <%
        DiningOfferings off = new DiningOfferings();
        off.offeringid = Integer.parseInt(request.getParameter("offeringid"));
        try {
            off.deleteOffering();
        } catch (Exception e){
            e.printStackTrace();
            response.sendRedirect("http://localhost:8084/Dining_Accommodation/gl_create/gl_create_fail.html");
        }%>      
        <table class="table.table-striped" id="booktable">
        <thead>
          <tr>
            <th scope="col">Offering ID</th>
            <th scope="col">Offering Date</th>
            <th scope="col">Status</th>
            <th scope="col">Max Clients</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><%=off.offeringid%></td>
            <td><%=off.offeringdate%></td>
            <td><%=off.status%></td>
            <td><%=off.maxclient%></td>
          </tr>
        </tbody>
      </table> 
        <a class="btn btn-secondary site-btn my-btn" href="http://localhost:8084/Dining_Accommodation/" role="button">Return to home</a>
        </div>
       
    </div>

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