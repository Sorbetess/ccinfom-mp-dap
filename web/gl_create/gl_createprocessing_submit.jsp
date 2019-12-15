<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "DiningAccommodation.*, java.util.*" %>
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
    <h1>Processing booking request</h1>
    
    <%
        String redirectURL = "/Dining_Accommodation/gl_create/gl_create_fail.html";
        try{
            double cost = Double.parseDouble(request.getParameter("cost"));
            String bookdate = request.getParameter("bookdate");
            String confirmdate = request.getParameter("confirmdate");
            String paiddate = request.getParameter("paiddate");
            int rating = Integer.parseInt(request.getParameter("rating"));
            String feedback = request.getParameter("feedback");
            String email = request.getParameter("userselector");
            int groupid = Integer.parseInt(request.getParameter("groupselector"));
            int diningoffid = Integer.parseInt(request.getParameter("offeringselector"));
            
            Booking b = new Booking();
            b.cost = cost;
            b.bookdate = bookdate;
            b.confirmdate = confirmdate;
            b.paiddate = paiddate;
            b.rating = rating;
            b.feedback = feedback;
            b.groupid = groupid;
            b.email = email;
            b.diningoffid = diningoffid;
            
            b.book();

            if (b.status==1)
                    redirectURL = "/Dining_Accommodation/gl_create/gl_create_success.html";

        }
        catch(Exception e) {
            redirectURL = "/Dining_Accommodation/gl_create/gl_create_fail.html";
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