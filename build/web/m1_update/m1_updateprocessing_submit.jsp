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
    <h1>Processing transaction request...</h1>
    
    <%
        String redirectURL = "http://localhost:8080/Dining_Accommodation/m1_create/m1_create_fail.html";
        try{            
            Transactions t = new Transactions();
            t.transno = Integer.parseInt(request.getParameter("transno"));
            t.transdate = request.getParameter("transdate");
            t.transamount = Double.parseDouble(request.getParameter("transamount"));
            t.transtype = request.getParameter("transtype");
            t.transmethod = request.getParameter("transmethod");
            t.bookingid = Integer.parseInt(request.getParameter("bookingid"));
            t.ccnumber = Long.parseLong(request.getParameter("ccnumber"));
            
            t.update();

            if (t.status==1)
                    redirectURL = "http://localhost:8080/Dining_Accommodation/m1_create/m1_create_success.html";

        }
        catch(Exception e) {
            redirectURL = "http://localhost:8080/Dining_Accommodation/m1_create/m1_create_fail.html";
        }
        finally {
            response.sendRedirect(redirectURL);
        }
        
        
        
        
 
    %>
	
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/circle-progress.min.js"></script>
	<script src="js/main.js"></script>


    </body>
</html>