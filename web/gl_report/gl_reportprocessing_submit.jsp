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
	<title>Processing request</title>
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

    
    <footer class="footer-section">
	<div class="footer-bg-area set-bg" data-setbg="img/footer-bg.jpg">
			<div class="contact-form-area">
				<div class="container">
					<div class="col-lg-10 offset-lg-1">
						<div class="contact-form-warp">
							<div class="section-title">
								<i class="flaticon-026-chicken-1"></i>   

                                <% 	try {
	
                                    int month = Integer.parseInt(request.getParameter("month"));
                                    int year = Integer.parseInt(request.getParameter("year"));  
                                    Booking b = new Booking();
                                    b.reportMonth = month;
                                    b.reportYear = year;
                                    b.globalReport(month, year); %>
                                    <h2> <%=year%> - <%=month%> Results</h2> 
                                
                                    <table class="table .table-striped" id="booktable">
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
                                <%}
                                catch(Exception e) {
                                    %><h2>An error has occurred</h2><%
                                }
                                finally {
                                    
                                }
                                %>
                                <br>
                                <a class="btn btn-secondary site-btn my-btn" href="/Dining_Accommodation/index.html" role="button">Return to home</a>
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