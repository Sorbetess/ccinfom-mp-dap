
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "DiningAccommodation.*, java.util.*" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>Report 3</title>
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
        Booking b = new Booking();
        b.getBookingYears();
        
        %>

	<div id="preloder">
		<div class="loader"></div>
	</div>
	
	<section class="hero-section">
		<div class="hero-slider owl-carousel">
			<div class="hs-item set-bg" data-setbg="img/slider/slider-2.jpg">
				<div class="hs-content">
					<div class="hsc-warp">
						<h2>Customer global distribution<span>.</span></h2>
					</div>
				</div>
			</div>
			<div class="hs-item set-bg" data-setbg="img/slider/slider-2.jpg">
				<div class="hs-content">
					<div class="hsc-warp">
						<h3 class="white">This report shows the distribution of customers according to country for a specified month and year.<span>.</span><h3>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="inter-section spad">
		<div class="container">
			<div class="section-title">
				<i class="flaticon-019-rib"></i>
				<h2>Enter month and year</h2>
			</div>
            <form name="searchbooking" action="gl_report/gl_reportprocessing_year.jsp" method="POST" class="col-12">
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="year">Year</label>
                        <select name="year" class="form-control">
                            <%                           
                            for(int i = 0; i < b.years.size(); i++) { %>
                                <option value="<%=b.years.get(i)%>"> <%=b.years.get(i)%> </option>
                            <% }
                            %>
                        </select>
                    </div>
                </div>
                 <input type="submit" class="btn btn-secondary site-btn my-btn" name="dist" value="Proceed">
            </form>
           
		</div>
	</section>

	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/main.js"></script>

    </body>
</html>