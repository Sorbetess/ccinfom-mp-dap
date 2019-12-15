<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>Delete Transactions</title>
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
						<h2>Delete Transactions<span>.</span></h2>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="inter-section spad">
		<div class="container">
			<div class="section-title">
				<i class="flaticon-019-rib"></i>
				<h2>Delete transaction details</h2>
			</div>
			<form name="searchtrans" action="m1_delete/m1_deleteprocessing_submit.jsp" method="POST" class="col-12">
                <label for="transno">Transaction Number</label>
                <input type="text" class="col-md-12 border rounded form-control" name="transno" id="transno">
                <input type="submit" class="btn btn-secondary site-btn my-btn btn-lg btn-block" name="search" value="Search Transactions">
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
