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
        <% 
        Booking b = new Booking();
        int month = request.getParamater(month);
        int year = request.getParamater(year);
        b.globalReport(month, year);
        if(b.status==1){%>
            <table class="table .table-striped" id="booktable">
                <thead>
                  <tr>
                    <th scope="col">Country</th>
                    <th scope="col">Population</th>
        
                    
                  </tr>
                </thead>
                <tbody>
                    <%for(int i = 0; i < b.populationReport.size() ;i++) { %>
                        <tr>
                            <td><%=b.populationReport.get(i).country%></td>
                            <td><%=b.populationReport.get(i).population%></td>
                        </tr>
                    }
                </tbody>
              </table>
       <% }
        else {
            response.sendRedirect("http://localhost:8084/Dining_Accommodation/gl_create/gl_create_fail.html");

        } %>
        <a class="btn btn-secondary site-btn my-btn" href="http://localhost:8084/Dining_Accommodation/" role="button">Return to home</a>
    </div>
   
   
        




   
    
    <footer class="footer-section">
	<div class="footer-bg-area set-bg" data-setbg="img/footer-bg.jpg">
			<div class="contact-form-area">
				<div class="container">
					<div class="col-lg-10 offset-lg-1">
						<div class="contact-form-warp">
							<div class="section-title">
								<i class="flaticon-026-chicken-1"></i>   
								<% 
										int year = 0;
										int month = 0;
										Booking b = new Booking();
									try {
										month = Integer.parseInt(request.getParameter("month"));
										year = Integer.parseInt(request.getParameter("year"));  
										b.reportMonth = month;
										b.reportYear = year;
										b.globalReport(); 
									}catch(Exception e) {
										response.sendRedirect("http://localhost:8084/Dining_Accommodation/gl_create/gl_create_fail.html");
									}
									%><h2> <%=year%> - <%=month%> Results</h2><% 
									if(b.status == 1) { %>

										<table class="table table-striped table-hover" id="booktable">
											<thead>
											  <tr>
												<th scope="col">Country</th>
												<th scope="col">Population</th>
											  </tr>
											</thead>
											<tbody>
												<%for(int i = 0; i < b.report.size() ;i++) { %>
													<tr>
														<td><%=b.report.get(i).name%></td>
														<td><%=b.report.get(i).population%></td>
													</tr>
												<%}%>
											</tbody>
										  </table>
										<% if(b.report.size() < 1) { %>
											<h2>No matching results found.</h2>
										<%}
										}
									else {
										response.sendRedirect("http://localhost:8084/Dining_Accommodation/gl_create/gl_create_fail.html");
									}%>
								
                                <br>
                                <a class="btn btn-secondary site-btn my-btn" href="http://localhost:8084/Dining_Accommodation/" role="button">Return to home</a>
							</div>
							
						</div>
					</div>
				</div>
	</div>	
	</footer>
    

   
	



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