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

	<% 
		Booking book = new Booking();
        book.getBookings();
        book.getEmails();
        book.getGroups();
        book.getOfferings();
	%>
        
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
						
                        
						<form name="updatebooking" action="gl_update/gl_updateprocessing_submit.jsp" method="POST">
							<br>
                            <label for="bookingsselector">Booking ID</label>
                            <select name="bookingsselector">
									<%                            
									for(int i = 0; i < book.bookings.size(); i++) { %>
										<option value="<%=book.bookings.get(i)%>"> <%=book.bookings.get(i)%> </option>
									<% }
									%>
							</select>
							<br>
                            <label for="cost">Cost</label>
							<input type="text" class="form-control" id="cost" placeholder="Cost" name ="cost">
							
							<br>
                            <label for="bookdate">Book date</label>
							<input type="text" class="form-control" id="bookdate" placeholder="YYYY-MM-DD" name ="bookdate">
							
							<br>
                            <label for="confirmdate">Confirm date</label>
							<input type="text" class="form-control" id="confirmdate" placeholder="YYYY-MM-DD" name ="confirmdate">
                            
                            <br>
                            <label for="savedate">Save date</label>
                            <input type="text" class="form-control" id="savedate" placeholder="YYYY-MM-DD" name ="savedate">
                            
                            <br>
                            <label for="canceldate">Cancel date</label>
                            <input type="text" class="form-control" id="canceldate" placeholder="YYYY-MM-DD" name ="canceldate">
                            
                            <br>
                            <label for="refunddate">Refund date</label>
							<input type="text" class="form-control" id="refunddate" placeholder="YYYY-MM-DD" name ="refunddate">

							<br>
                            <label for="paiddate">Paid date</label>
							<input type="text" class="form-control" id="paiddate" placeholder="YYYY-MM-DD" name ="paiddate">

                            <br>
                            <label for="rating">Rating</label>
							<select name="rating">
								<option value=1>1</option>
								<option value=2>2</option>
								<option value=3>3</option>
								<option value=4>4</option>
								<option value=5>5</option>
								<option value=6>6</option>
								<option value=7>7</option>
								<option value=8>8</option>
								<option value=9>9</option>
								<option value=10>10</option>
							</select>
                            
                            <br>
                            <label for="feedback">Feedback</label>
							<input type="text" class="form-control" id="confirmdate" placeholder="Feedback" name ="feedback">

							<br>
                            <label for="userselector">Booker email</label>
							<select name="userselector">
								<%                            
								int usersize = book.emails.size();
								for(int i = 0; i < usersize; i++) { %>
									<option value="<%=book.emails.get(i)%>"> <%=book.emails.get(i)%> </option>
								<% }
								%>
							</select>
							
							<br>
                            <label for="groupselector">Group ID</label>
							<select name="groupselector">
								<option value=0>Not a group booking</option>
								<%                            
								int groupsize = book.groups.size();
								for(int i = 0; i < groupsize; i++) { %>
									<option value="<%=book.groups.get(i)%>"> <%=book.groups.get(i)%> </option>
								<% }
								%>
                            </select>
                            
                            <br>
                            <label for="offeringselector">Dining offering</label>
                            <select name="offeringselector">
									<%                            
						
									int size = book.offers.size();
									for(int i = 0; i < size; i++) { %>
										<option value="<%=book.offers.get(i)%>"> <%=book.offers.get(i)%> </option>
									<% }
									%>
							</select>

							
							<br>
							<input type="submit" class="btn btn-secondary site-btn my-btn" name="book" value="Update booking">
							
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