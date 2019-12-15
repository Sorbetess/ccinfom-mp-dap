
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "DiningAccommodation.*, java.util.*" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>Report 5</title>
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
				<h2 >Top 10 Menus<span>.</span></h2>
				
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
								<i class="flaticon-022-tray"></i>   

                                <% 	try {
									
                                    int month = Integer.parseInt(request.getParameter("month"));
                                    int year = Integer.parseInt(request.getParameter("year"));  
                                    MenuReport mr = new MenuReport();
                                    mr.reportmonth = month;
                                    mr.reportyear = year;
                                    mr.generateReport(); %>
                                    <h2> <%=year%> - <%=month%> Results</h2> 
                                
                                    <table class="table .table-striped" id="booktable">
                                        <thead>
                                          <tr>
                                            <th scope="col">Menu ID</th>
                                            <th scope="col">Menu Type</th>
                                            <th scope="col">Rating</th>
                                          </tr>
                                        </thead>
                                        <tbody>
                                            <%for(int i = 0; i < mr.report.size() ;i++) { %>
                                                <tr>
                                                    <td><%=mr.report.get(i).menuid%></td>
                                                    <% if (mr.report.get(i).menutype.equalsIgnoreCase("B")){%>
                                                        <td><%="Breakfast"%></td>
                                                    <% }else if (mr.report.get(i).menutype.equalsIgnoreCase("L")){%>
                                                        <td><%="Lunch"%></td>
                                                    <% }else if (mr.report.get(i).menutype.equalsIgnoreCase("D")){%>
                                                        <td><%="Dinner"%></td>
                                                    <% }else{%>
                                                        <td><%="Snack"%></td>
                                                    <%}%>
                                                    <td><%=mr.report.get(i).rating%></td>
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
                                <a class="btn btn-secondary site-btn my-btn" href="http://localhost:8084/Dining_Accommodation/" role="button">Return to home</a>
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