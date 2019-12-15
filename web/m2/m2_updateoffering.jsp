<%-- 
    Document   : m2_updateoffering
    Created on : Dec 15, 2019, 10:56:01 AM
    Author     : Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "DiningAccommodation.*, java.util.*" %>
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <title>Pulse - Restaurant HTML Template</title>
	<meta charset="UTF-8">
	<meta name="description" content="Pulse Restaurant HTML Template">
	<meta name="keywords" content="pulse, restaurant, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<base href="..">
        
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/main.js"></script>
        
        <link rel="stylesheet" type="text/css" href="css/bootstrap-datepicker.css"/>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/flaticon.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>
	<link rel="stylesheet" href="css/animate.css"/>
        
        <script>
            $(function(){
                $('.dates #user1').datepicker({
                    'format' : 'yyyy-mm-dd',
                    'autoclose' : true
                });
            });
        </script>
    </head>
    <body> 
        <%
            DiningOfferings off = new DiningOfferings();
            off.getOfferings();
            
        %>
	<!-- Page Preloader -->
	<div id="preloader">
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
                    <h2>Update offerings<span>.</span></h2>
                </div>
            </div>
	</section>
    <!-- Page info section end -->
    
    <!-- Featured section -->
	<section class="featured-section set-bg" data-setbg="img/featured-bg.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-6 featured">
                        <div class="section-title st-no-style text-left">
                            <i class="flaticon-024-crab"></i>
                            <h2 class="p-0">Need an update?</h2>
                            <br>
                            
                            <form name="createoffering" action="m2/m2_updateofferingsubmit.jsp" method="POST">
                                <label for="id">ID of your offering.</label>
                                <!--<input type="text" class="form-control" name="id" placeholder="11829117">-->
                                
                                <select name="id" class="form-control">
                                 <%     int index;
                                        int size = off.offers.size();
                                        for (index=0; index < size; index++) { %>
                                        <option class="col-md-12 border rounded" value="<%=off.offers.get(index) %>"> <%=off.offers.get(index) %> </option> 
                                 <%     } 
                                 %>               
                               </select> 

                                <br>
                                <div class="dates">
                                    <label for="date">Update the offering date</label>
                                    <input type="text" autocomplete="off" id="user1" class="form-control" placeholder="yyyy-mm-dd" name="date">
                                </div>

                                <br>
                                <label for="category">Update the status</label>
                                <select size="1" name="category" class="form-control">
                                    <option value ="1">O</option>
                                    <option value ="2">F</option>
                                </select>
                                
                                <br>
                                <label for="maxclient">Update the maximum clients you will be having</label>
                                <input type="number" min="1" max="100" id="maxclient" value="1" name="maxclient" class="form-control">

                                <br>
                                <input type="submit" class="btn btn-secondary site-btn my-btn" value="Create Offering">    
                            </form>
                            
                        </div>
                    </div>
                </div>
            </div>
	</section>
                               
        <script type="javascript" src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/main.js"></script>
        
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB0YyDTa0qqOjIerob2VTIwo_XVMhrruxo"></script>
	<script src="js/map.js"></script>
    </body>
</html>
