<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="shortcut icon" href="assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>MyJobs-Portal-Employer-Profile</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />

<!-- Animation library for notifications   -->
<link href="assets/css/animate.min.css" rel="stylesheet" />

<!--  Light Bootstrap Table core CSS    -->
<link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet" />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="assets/css/demo.css" rel="stylesheet" />


<!--     Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300'
	rel='stylesheet' type='text/css'>
<link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

<!--     extra css     -->

<link rel="stylesheet" href="assets/css/material-kit.css"
	type="text/css">
<!-- Font Awesome CSS -->
<link rel="stylesheet" href="assets/fonts/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/fonts/themify-icons.css">

<!-- Animate CSS -->
<link rel="stylesheet" href="assets/extras/animate.css" type="text/css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="assets/extras/owl.carousel.css"
	type="text/css">
<link rel="stylesheet" href="assets/extras/owl.theme.css"
	type="text/css">
<!-- Rev Slider CSS -->
<link rel="stylesheet" href="assets/extras/settings.css" type="text/css">
<!-- Slicknav js -->
<link rel="stylesheet" href="assets/css/slicknav.css" type="text/css">
<!-- Main Styles -->
<link rel="stylesheet" href="assets/css/main.css" type="text/css">
<!-- Responsive CSS Styles -->
<link rel="stylesheet" href="assets/css/responsive.css" type="text/css">

<!-- Color CSS Styles  -->
<link rel="stylesheet" type="text/css" href="assets/css/colors/red.css"
	media="screen" />


</head>
<body>
<input type="hidden" id="userType" value='${userType}'/>
	<div class="wrapper">
		<div class="sidebar" data-color="purple"
			data-image="assets/img/sidebar-5.jpg" id="canId" style='display: none;'>
				<div class="sidebar-wrapper">
				<div class="logo">
					<a href="http://www.creative-tim.com" class="simple-text">
						Creative Tim </a>
				</div>

				<ul class="nav">
					<li class="active"><a href="dashboard.do"> <i
							class="pe-7s-graph"></i>
							<p>Dashboard</p>
					</a></li>
					<li><a href="resume.do"> <i class="pe-7s-user"></i>
							<p>My Resume</p>
					</a></li>
					<li><a href="bookmarked.do"> <i class="pe-7s-note2"></i>
							<p>Bookmarked Jobs</p>
					</a></li>
					<li><a href="notifications.do"> <i
							class="pe-7s-news-paper"></i>
							<p>Notifications</p>
					</a></li>
					<li><a href="browsejobs.do"> <i class="pe-7s-science"></i>
							<p>Browse jobs</p>
					</a></li>
					<li><a href="browsecategories.do"> <i
							class="pe-7s-map-marker"></i>
							<p>Browse Categories</p>
					</a></li>
					<li><a href="manage-applications.do"> <i
							class="pe-7s-info"></i>
							<p>Manage Applications</p>
					</a></li>
					<li><a href="job-alerts.do"> <i class="pe-7s-bell"></i>
							<p>Job Alerts</p>
					</a></li>
					
				</ul>
			</div>
		</div>
		<div class="sidebar" data-color="purple"
			data-image="assets/img/sidebar-5.jpg" id="empId" style='display: none;'>
			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="http://www.creative-tim.com" class="simple-text">
						Creative Tim </a>
				</div>

				<ul class="nav">
					<li><a href="empdashboard.do"> <i
							class="pe-7s-graph"></i>
							<p>Dashboard</p>
					</a></li>
					<li><a href="empaddjobs.do"> <i class="pe-7s-user"></i>
							<p>Add Jobs</p>
					</a></li>
					<li><a href="managejobs.do"> <i class="pe-7s-note2"></i>
							<p>Manage Jobs</p>
					</a></li>
					<li class="active"><a href="empapplications.do"> <i
							class="pe-7s-news-paper"></i>
							<p>Manage Applications</p>
					</a></li>
					<li><a href="browseresumes.do"> <i class="pe-7s-science"></i>
							<p>Browse Resumes</p>
					</a></li>

				</ul>
			</div>
		</div>

		<div class="main-panel">
			<nav class="navbar navbar-default navbar-fixed">
				<div class="container-fluid" style="background-color: #fff">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#navigation-example-2">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">Dashboard</a>
					</div>

					<div class="dropdown navbar-right collapse navbar-collapse btn-rm">
						<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown" style="background-color: #FF4F57;">
							Markarn Doe <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="update-profile.do"
								style="background-color: #FFE4E1;">Update Profile</a></li>
							<li><a href="price.do"
								style="background-color: #FFE4E1;">Balance</a></li>
							<li><a href="changepassword.do"
								style="background-color: #FFE4E1;">Change Password</a></li>
							<li><a href="logout.do" style="background-color: #FFE4E1;">Log
									out</a></li>
						</ul>
					</div>


				</div>

			</nav>

			<div class="content">
				<div class="container-fluid">
					<div class="card">
						<div class="content">
							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<section id="pricing-table" class="section">
		<div class="container">
			<div class="row">
				<div class="col-sm-4">
					<div class="table">
						<div class="title">
							<h3>Pricing Plan 1</h3>
						</div>
						<div class="pricing-header">
							<p class="price-value">
								<sup>$</sup>0
							</p>
							<p class="price-quality">/forever</p>
						</div>
						<ul class="description">
							<li>Post 1 Job</li>
							<li>No Featured Job</li>
							<li>Edit Your Job Listing</li>
							<li>Manage Application</li>
							<li>30-day Expired</li>
						</ul>
						<button class="btn btn-common" type="submit">Get Started</button>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="table" id="active-tb">
						<div class="title">
							<h3>Pricing Plan 2</h3>
						</div>
						<div class="pricing-header">
							<p class="price-value">
								<sup>$</sup>99
							</p>
							<p class="price-quality">/90 DAYS</p>
						</div>
						<ul class="description">
							<li>Post 1 Job</li>
							<li>No Featured Job</li>
							<li>Edit Your Job Listing</li>
							<li>Manage Application</li>
							<li>30-day Expired</li>
						</ul>
						<button class="btn btn-common" type="submit">Get Started</button>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="table">
						<div class="title">
							<h3>Pricing Plan 3</h3>
						</div>
						<div class="pricing-header">
							<p class="price-value">
								<sup>$</sup>199
							</p>
							<p class="price-quality">/180 DAYS</p>
						</div>
						<ul class="description">
							<li>Post 1 Job</li>
							<li>No Featured Job</li>
							<li>Edit Your Job Listing</li>
							<li>Manage Application</li>
							<li>30-day Expired</li>
						</ul>
						<button class="btn btn-common" type="submit">Get Started</button>
					</div>
				</div>
			</div>
		</div>
	</section>




								</div>

							</div>
							<br> <br>

						</div>
					</div>
				</div>
			</div>


			<!-- Footer Section Start -->
    <footer>
    	<!-- Footer Area Start -->
    	<section class="footer-Content">
    		<div class="container">
    			<div class="row">
    				<div class="col-md-3 col-sm-6 col-xs-12">
              <div class="widget">
                <h3 class="block-title"><img src="assets/img/logo.png" class="img-responsive" alt="Footer Logo"></h3>
                <div class="textwidget">
                  <p>ClickMyjobs for Jobs is a product from ClickMyjobs Team that aims to help job seekers find job listings that are right for them. 
                  ClickMyjobs for Jobs is a job search engine that compiles listings from many different sources, including other job search engines. 
                  Instead of using a specific job search site, users can simply type a job into their ClickMyjobss search bar. 
                  ClickMyjobs then pulls up related listings. Users can then narrow their search by type of job, location, company type, date posted, and more</p>
                </div>
              </div>
            </div>
    				<div class="col-md-3 col-sm-6 col-xs-12">
    					<div class="widget">
    						<h3 class="block-title">Quick Links</h3>
  							<ul class="menu">
                  <li><a href="about.do">About Us</a></li>
                  <li><a href="contact.do">Support</a></li>
                 <!--  <li><a href="#">License</a></li> -->
                  <li><a href="privacypolicy.do">Terms & Conditions</a></li>
                  <li><a href="contact.do">Contact</a></li>
                </ul>
    					</div>
    				</div>
    				<div class="col-md-3 col-sm-6 col-xs-12">
    					<div class="widget">
                <h3 class="block-title">Trending Jobs</h3>
                <ul class="menu">
                  <li><a href="#">Android Developer</a></li>
                  <li><a href="#">Senior Accountant</a></li>
                  <li><a href="#">Frontend Developer</a></li>
                  <li><a href="#">Junior Tester</a></li>
                  <li><a href="#">Project Manager</a></li>
                </ul>
              </div>
    				</div>
    				<div class="col-md-3 col-sm-6 col-xs-12">
    					<div class="widget">
    						<h3 class="block-title">Follow Us</h3>
                <div class="bottom-social-icons social-icon">  
                  <a class="twitter" href="https://twitter.com/GrayGrids"><i class="ti-twitter-alt"></i></a>
                  <a class="facebook" href="https://web.facebook.com/GrayGrids"><i class="ti-facebook"></i></a>                   
                  <a class="youtube" href="https://youtube.com"><i class="ti-youtube"></i></a>
                  <a class="dribble" href="https://dribbble.com/GrayGrids"><i class="ti-dribbble"></i></a>
                  <a class="linkedin" href="https://www.linkedin.com/GrayGrids"><i class="ti-linkedin"></i></a>
                </div>	
                <p>Join our mailing list to stay up to date and get notices about our new releases!</p>
                <form class="subscribe-box">
                  <input type="text" placeholder="Your email">
                  <input type="submit" class="btn-system" value="Send">
                </form>	
    					</div>
    				</div>
    			</div>
    		</div>
    	</section>
    	<!-- Footer area End -->
    	
    	<!-- Copyright Start  -->
    	<div id="copyright">
    		<div class="container">
    			<div class="row">
    				<div class="col-md-12">
              <div class="site-info text-center">
                <p>All Rights reserved &copy; 2018 - Designed & Developed by <a rel="nofollow" href="http://http://clickmyjobs.com">Click MyJobs team</a></p>
              </div>   
    				</div>
    			</div>
    		</div>
    	</div>
    	<!-- Copyright End -->

    </footer>
    <!-- Footer Section End --> 

		</div>
	</div>


</body>

<!--   Core JS Files   -->
<script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script src="assets/js/bootstrap-checkbox-radio-switch.js"></script>

<!--  Charts Plugin -->
<script src="assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="assets/js/light-bootstrap-dashboard.js"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>
<script type="text/javascript">
	
$(document).ready(function(){
	var userTypeValue = $("#userType").val();
	if(userTypeValue=='EMP'){
		$("#empId").show();
		$("#canId").hide();
	}else{
		$("#canId").show();
		$("#empId").hide();
		
	}
	
	

});
	
	
	
</script>


</html>
