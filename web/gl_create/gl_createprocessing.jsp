<%-- 
    Document   : gl_createprocessing
    Created on : Dec 14, 2019, 10:58:10 PM
    Author     : Bryce Ramirez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>Pulse - Restaurant HTML Template</title>
	<meta charset="UTF-8">
	<meta name="description" content="Pulse Restaurant HTML Template">
	<meta name="keywords" content="pulse, restaurant, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
				<h2>Create bookings<span>.</span></h2>
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
                        <h2 class="p-0">We'll look for what you want.</h2>
                        
                        <form>
                            <br>
                            <label for="firstname">Cost</label>
                            <input type="text" class="form-control" id="firstname" placeholder="Firstname" name ="firstname">

                            <br>
                            <label for="bookdate">Booking Day</label>
                            <input type="date" class="col-md-12 border rounded my-date" name="bookdate" id="bookdate">
                        </form>
                        
					</div>
	
				</div>
			</div>
		</div>
	</section>
	<!-- Featured sectoon end -->


	<!-- Menu section -->
	<section class="mp-menu-section spad">
		<div class="container">
			<div class="section-title">
				<i class="flaticon-022-tray"></i>
				<h2>Our Menu</h2>
			</div>
			<ul class="mp-menu-tab-nav nav nav-tabs" role="tablist">
				<li class="nav-item">
					<a class="nav-link active" data-toggle="tab" href="#tab-1" role="tab" aria-controls="tab-1" aria-selected="true">
						<i class="flaticon-005-coffee-1"></i>
						<div class="mpm-text">
							<h5>Breakfast</h5>
							<p>Weekdays  8:30a.m. — 11:30a.m.</p>
						</div>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="tab" href="#tab-2" role="tab" aria-controls="tab-2" aria-selected="false">
						<i class="flaticon-013-salad"></i>
						<div class="mpm-text">
							<h5>Brunch</h5>
							<p>Weekdays  8:30a.m. — 11:30a.m.</p>
						</div>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="tab" href="#tab-3" role="tab" aria-controls="tab-3" aria-selected="false">
						<i class="flaticon-008-soup"></i>
						<div class="mpm-text">
							<h5>Lunch</h5>
							<p>Weekdays  8:30a.m. — 11:30a.m.</p>
						</div>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" data-toggle="tab" href="#tab-4" role="tab" aria-controls="tab-4" aria-selected="false">
						<i class="flaticon-018-lobster"></i>
						<div class="mpm-text">
							<h5>Dinner</h5>
							<p>Weekdays  8:30a.m. — 11:30a.m.</p>
						</div>
					</a>
				</li>
			</ul>
			<div class="tab-content menu-tab-content">
				<!-- single tab content -->
				<div class="tab-pane fade show active" id="tab-1" role="tabpanel" aria-labelledby="tab-1">
					<div class="row menu-dark">
						<div class="col-lg-6">
							<!-- menu item -->
							<div class="menu-item">
								<h5>Scrambled Eggs with ham</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$9.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Scrambled Eggs in Puff Pastry</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$11.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Eggs Benedict</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$6.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Soft-Boiled Organic Egg</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$8.00</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<!-- menu item -->
							<div class="menu-item">
								<h5>Scrambled Eggs with ham</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$9.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Scrambled Eggs in Puff Pastry</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$11.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Eggs Benedict</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$6.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Soft-Boiled Organic Egg</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$8.00</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- single tab content -->
				<div class="tab-pane fade" id="tab-2" role="tabpanel" aria-labelledby="tab-2">
					<div class="row menu-dark">
						<div class="col-lg-6">
							<!-- menu item -->
							<div class="menu-item">
								<h5>Scrambled Eggs with ham</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$9.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Scrambled Eggs in Puff Pastry</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$11.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Eggs Benedict</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$6.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Soft-Boiled Organic Egg</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$8.00</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<!-- menu item -->
							<div class="menu-item">
								<h5>Scrambled Eggs with ham</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$9.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Scrambled Eggs in Puff Pastry</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$11.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Eggs Benedict</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$6.00</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- single tab content -->
				<div class="tab-pane fade" id="tab-3" role="tabpanel" aria-labelledby="tab-3">
					<div class="row menu-dark">
						<div class="col-lg-6">
							<!-- menu item -->
							<div class="menu-item">
								<h5>Scrambled Eggs with ham</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$9.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Scrambled Eggs in Puff Pastry</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$11.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Eggs Benedict</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$6.00</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<!-- menu item -->
							<div class="menu-item">
								<h5>Scrambled Eggs with ham</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$9.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Scrambled Eggs in Puff Pastry</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$11.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Eggs Benedict</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$6.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Soft-Boiled Organic Egg</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$8.00</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- single tab content -->
				<div class="tab-pane fade" id="tab-4" role="tabpanel" aria-labelledby="tab-4">
					<div class="row menu-dark">
						<div class="col-lg-6">
							<!-- menu item -->
							<div class="menu-item">
								<h5>Scrambled Eggs with ham</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$9.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Scrambled Eggs in Puff Pastry</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$11.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Eggs Benedict</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$6.00</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<!-- menu item -->
							<div class="menu-item">
								<h5>Scrambled Eggs with ham</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$9.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Scrambled Eggs in Puff Pastry</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$11.00</div>
								</div>
							</div>
							<!-- menu item -->
							<div class="menu-item">
								<h5>Eggs Benedict</h5>
								<div class="mi-meta">
									<p>with wild mushrooms and asparagus</p>
									<div class="menu-price">$6.00</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Menu section end -->


	


	



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