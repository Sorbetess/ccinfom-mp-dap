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

    <!-- Page info section -->
	<section class="page-top-info set-bg" data-setbg="img/page-top-bg/2.jpg" id="booky">
		<div class="ptf-center">
			<div class="container">
				<h2>Booking details<span>.</span></h2>
			</div>
		</div>
	</section>
        




    <div class="container">
        
        <div class="col-12">
            <%
        Booking b = new Booking();
        b.bookingid = Integer.parseInt(request.getParameter("bookingid"));
        b.search();

        if(b.status == 1) {
    %>      <table class="table .table-striped" id="booktable">
        <thead>
          <tr>
            <th scope="col">Booking ID</th>
            <th scope="col">Cost</th>
            <th scope="col">Book date</th>
            <th scope="col">Confirm date</th>
            <th scope="col">Save date</th>
            <th scope="col">Cancel date</th>
            <th scope="col">Refund date</th>
            <th scope="col">Paid date</th>
            <th scope="col">Rating</th>
            <th scope="col">Feedback</th>
            <th scope="col">Email</th>
            <th scope="col">Group ID</th>
            <th scope="col">Dinning Off. ID</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            
            <td><%=b.bookingid%></td>
            <td><%=b.cost%></td>
            <td><%=b.bookdate%></td>
            <td><%=b.confirmdate%></td>
            <td><%=b.savedate%></td>
            <td><%=b.canceldate%></td>
            <td><%=b.refunddate%></td>
            <td><%=b.paiddate%></td>
            <td><%=b.rating%></td>
            <td><%=b.feedback%></td>
            <td><%=b.email%></td>
            <td><%=b.groupid%></td>
            <td><%=b.diningoffid%></td>
          </tr>
        </tbody>
      </table> <%
        }
        else {
            response.sendRedirect("/Dining_Accommodation/gl_create/gl_create_fail.html");
        }
        %>
        <a class="btn btn-secondary site-btn my-btn" href="/Dining_Accommodation/index.html" role="button">Return to home</a>
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