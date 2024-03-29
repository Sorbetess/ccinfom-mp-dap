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
	
	<section class="hero-section">
		<div class="hero-slider owl-carousel">
			<div class="hs-item set-bg" data-setbg="img/slider/slider-2.jpg">
				<div class="hs-content">
					<div class="hsc-warp">
						<h2>Top 10 Menus<span>.</span></h2>
					</div>
				</div>
			</div>
			<div class="hs-item set-bg" data-setbg="img/slider/slider-2.jpg">
				<div class="hs-content">
					<div class="hsc-warp">
						<h3 class="white">This report shows the top 10 highly rated menus according to month and year<span>.</span><h3>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="inter-section spad">
		<div class="container">
			<div class="section-title">
				<i class="flaticon-028-cheese"></i>
				<h2>Enter month and year</h2>
			</div>
            <form name="searchbooking" action="m2/m2_report5submit.jsp" method="POST" class="col-12">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="year">Year</label>
                        <input type="text" class="form-control" id="year" placeholder="YYYY" name="year">
                    </div>
                    <div class="form-group col-md-6">
                            <label for="month">Month</label>
                            <input type="text" class="form-control" id="ppplace" placeholder="MM" name="month">
                    </div>
                </div>
                 <input type="submit" class="btn btn-secondary site-btn my-btn" name="dist" value="Get distribution">
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
