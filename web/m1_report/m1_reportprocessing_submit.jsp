
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
	<div id="preloder">
		<div class="loader"></div>
    </div>
    
   
    <section class="page-top-info set-bg" data-setbg="img/page-top-bg/4.jpg" id="reporttitle">
		<div class="ptf-center">
			<div class="container">
				<h2 >Customer global distribution<span>.</span></h2>
				
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
                                    Menu b = new Menu();
                                    b.getTop10Menu(year, month); %>
                                    <h2> <%=year%> - <%=month%> Results</h2> 
                                
                                    <table class="table .table-striped" id="booktable">
                                        <thead>
                                          <tr>
                                            <th scope="col">Top</th>
                                            <th scope="col">Menu ID</th>
                                            <th scope="col">Menu Type</th>
                                            <th scope="col">Total Bookings</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                            <%for(int i = 0; i < b.results.size() ;i++) { %>
                                                <tr>
                                                    <td><%=(i+1)%></td>
                                                    <td><%=b.results.get(i).menuid%></td>
                                                    <td><%switch (b.results.get(i).menutype) {
                                                        case "B":{%>Breakfast<%} break;
                                                        case "L":{%>Lunch<%} break;
                                                        case "S":{%>Snack<%} break;
                                                        case "D":{%>Dinner<%} break;
                                                    }%></td>
                                                    <td><%=b.results.get(i).totalbookings%></td>
                                                </tr>
                                            <%}%>
                                        </tbody>
                                      </table>
                                <%}
                                catch(Exception e) {
                                    %><h2>An error has occurred.</h2><%
                                }
                                %>
                                <br>
                                <a class="btn btn-secondary site-btn my-btn" href="/Dining_Accommodation/" role="button">Return to home</a>
							</div>
							
						</div>
					</div>
				</div>
	</div>	
	</footer>
    
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/main.js"></script>

    </body>
</html>