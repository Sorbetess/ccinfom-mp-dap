<%@page import="DiningAccommodation.DiningOfferings"%>
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
        <%
            DiningOfferings off = new DiningOfferings();
            off.getOfferings();
            
        %>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	
	<!-- Header section -->
	<header class="header-section">
		
	</header>
	<!-- Header section end -->


	<!-- Hero section -->
	<section class="hero-section">
		<div class="hero-slider owl-carousel">
			<div class="hs-item set-bg" data-setbg="img/slider/slider-2.jpg">
				<div class="hs-content">
					<div class="hsc-warp">
						<h2>Search and display offerings<span>.</span></h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero section end -->



	<!-- Intro section -->
	<section class="inter-section spad">
		<div class="container">
			<div class="section-title">
				<i class="flaticon-036-bacon"></i>
				<h2>Display offering details</h2>
			</div>
                    <form name="searchoffering" action="m2/m2_searchdisplay.jsp" method="POST" class="col-12">
                        <label for="offeringid">Input the offering ID</label>
                        <select name="offeringid" class="form-control">
                                 <%     int index;
                                        int size = off.offers.size();
                                        for (index=0; index < size; index++) { %>
                                        <option class="col-md-12 border rounded" value="<%=off.offers.get(index) %>"> <%=off.offers.get(index) %> </option> 
                                 <%     } 
                                 %>               
                        </select> 
                           <input type="submit" class="btn btn-secondary site-btn my-btn" name="search" value="Search Offer">
                    </form>
		</div>
	</section>
        
	<!-- Intro section end -->

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
