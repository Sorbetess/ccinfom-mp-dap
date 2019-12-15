
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "DiningAccommodation.*, java.util.*" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>Processing search request</title>
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

	<section class="page-top-info set-bg" data-setbg="img/page-top-bg/2.jpg" id="booky">
		<div class="ptf-center">
			<div class="container">
				<h2>Booking details<span>.</span></h2>
			</div>
		</div>
	</section>
        

    <div class="container">
        <div class="col-12">

        <%
        Transactions b = new Transactions();
        try {
          b.transno = Integer.parseInt(request.getParameter("transno"));
        }catch(Exception e) {
          response.sendRedirect("http://localhost:8080/Dining_Accommodation/m1_create/m1_create_fail.html");
        }
        
        b.delete();

        if(b.status == 1) {
        %><h1 id="success">Deletion successful.</h1> <%
        }
        else if (b.status == -1){
          %><h1 id="searcherror">No results found.</h1><%
        }
        else {
            response.sendRedirect("http://localhost:8080/Dining_Accommodation/gl_create/gl_create_fail.html");
        }
        %>
        <a class="btn btn-secondary site-btn my-btn btn-lg btn-block" id="searchproceed" href="http://localhost:8080/Dining_Accommodation/" role="button">Return to home</a>
        </div>
       
    </div>
    

	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/main.js"></script>
	
    </body>
</html>