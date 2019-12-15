<%-- 
    Document   : gl_createprocessing
    Created on : Dec 14, 2019, 10:58:10 PM
    Author     : Bryce Ramirez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>Member 1 - Create Transaction</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<base href="../../">
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
	
	<!-- Header section -->
	<header class="header-section">
	
	</header>
	<!-- Header section end -->


	<!-- Page info section -->
	<section class="page-top-info set-bg" data-setbg="img/page-top-bg/2.jpg">
		<div class="ptf-center">
			<div class="container">
				<h2>Create a transaction<span>.</span></h2>
			</div>
		</div>
	</section>
    <!-- Page info section end -->
    
    <!-- Featured sectoon -->
	<section class="featured-section set-bg" data-setbg="img/featured-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-6 featured">
					<div class="section-title st-no-style text-left">
						<i class="flaticon-022-tray"></i>
                        <h2 class="p-0">Input details here.</h2>
                        
                        <form name="transregform" action="m1_createprocessing.jsp" method="POST">
                            <br>
                            <label for="transno">Transaction No.</label>
                            <input type="text" class="form-control" id="transno" placeholder="transno" name ="transno">

                            <br>
                            <label for="transdate">Transaction Date</label>
                            <input type="date" class="col-md-12 border rounded my-date form-control" name="transdate" id="transdate">
                            
                            <br>
                            <label for="transamount">Transaction Amount</label>
                            <input type="text" class="form-control" id="transamount" placeholder="transamount" name ="transamount">
                                                        
                            <br>
                            <label for="transtype">Transaction Type</label>
                            <select name="transtype" class="form-control">
                                <option value="D">Debit</option>
                                <option value="C">Credit</option>
                            </select>
                            
                            <br>
                            <label for="transmethod">Transaction Method</label>
                            <select name="transmethod" class="form-control">
                                <option value="CA">Cash</option>
                                <option value="CC">Credit Card</option>
                            </select>
                            
                            <br>
                            <label for="bookingid">Booking ID</label>
                            <input type="text" class="form-control" id="bookingid" placeholder="bookingid" name ="bookingid">
                            
                            <br>
                            <label for="ccnumber">Credit Card Number</label>
                            <input type="text" class="form-control" id="ccnumber" name="ccnumber">
                            
                            <br>
                            <input class="btn btn-secondary site-btn my-btn" type="submit" value="Create!" name="selectbutton"> 
                        </form>
                        
					</div>
	
				</div>
			</div>
		</div>
	</section>
	<!-- Featured sectoon end -->


	
        
        
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