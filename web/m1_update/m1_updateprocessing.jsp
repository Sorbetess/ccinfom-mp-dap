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
	<title>Create Booking</title>
	<meta charset="UTF-8">
	<meta name="description" content="Pulse Restaurant HTML Template">
	<meta name="keywords" content="pulse, restaurant, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<base href="..">
	


	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/flaticon.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/animate.css"/>


</head>
<body>

	<% 
		Transactions t = new Transactions();
                t.getTransactions();
                t.getBookings();
                t.getCCNOs();
	%>
        

	<div id="preloder">
		<div class="loader"></div>
	</div>

	<section class="page-top-info set-bg" data-setbg="img/page-top-bg/2.jpg">
		<div class="ptf-center">
			<div class="container">
				<h2>Update Transactions<span>.</span></h2>
			</div>
		</div>
	</section>
  
    
 
	<section class="featured-section set-bg" data-setbg="img/featured-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-6 featured">
					<div class="section-title st-no-style text-left">
						<i class="flaticon-022-tray"></i>
						<h2 class="p-0">Enter the details.</h2>
						
                        
						<form name="createtrans" action="m1_update/m1_updateprocessing_submit.jsp" method="POST">
                                                    
                            <label for="transno">Transaction Number</label>
                            <select name="transno" class="form-control">
                                            <%                            
                                            int tsize = t.tnos.size();
                                            for(int i = 0; i < tsize; i++) { %>
                                                    <option value="<%=t.tnos.get(i)%>"> <%=t.tnos.get(i)%> </option>
                                            <% }
                                            %>
                            </select>
							
							
							<br>
                            <label for="transdate">Transaction Date</label>
							<input type="text" class="form-control" id="transdate" placeholder="YYYY-MM-DD" name ="transdate">

							<br>
                            <label for="transamount">Amount</label>
							<input type="text" class="form-control" id="transamount" placeholder="000000000.00" name ="transamount">

							<br>
                            <label for="transtype">Transaction Type</label>
							<select name="transtype" class="form-control">
								<option value="D">Debit</option>
                                                                <option value="C">Credit</option>
							</select>
                            
                            <label for="transmethod">Transaction Method</label>
							<select name="transmethod" class="form-control">
								<option value="CA">Cash</option>
                                                                <option value="CC">Credit Card</option>
							</select>
							
							<br>
                            
                                                        
                                                        <br>
                            <label for="bookingid">Booking ID</label>
                            <select name="bookingid" class="form-control">
									<%                            
									int size = t.bookings.size();
									for(int i = 0; i < size; i++) { %>
										<option value="<%=t.bookings.get(i)%>"> <%=t.bookings.get(i)%> </option>
									<% }
									%>
							</select>

							<br>
                            <label for="ccnumber">Credit Card</label>
							<select name="ccnumber" class="form-control">
                                                            <option value=0>Cash Payment</option>
								<%                            
								int ccsize = t.ccnos.size();
								for(int i = 0; i < ccsize; i++) { %>
									<option value="<%=t.ccnos.get(i)%>"> <%=t.ccnos.get(i)%> </option>
								<% }
								%>
							</select>
							
							<input type="submit" class="btn btn-secondary site-btn my-btn" name="trans" value="Update Transaction">
							
                        </form>
                        
					</div>
	
				</div>
			</div>
		</div>
	</section>
	
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/main.js"></script>



	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB0YyDTa0qqOjIerob2VTIwo_XVMhrruxo"></script>
	<script src="js/map.js"></script>

    </body>
</html>