<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" href="assets/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>MyJobs-Portal-Candidate-Profile</title>

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


<!-- <link rel="stylesheet" href="assets/css/jasny-bootstrap.min.css" type="text/css">  
    <link rel="stylesheet" href="assets/css/bootstrap-select.min.css" type="text/css">   -->
    <!-- Material CSS -->
    <link rel="stylesheet" href="assets/css/material-kit.css" type="text/css">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css" type="text/css"> 
    <link rel="stylesheet" href="assets/fonts/themify-icons.css"> 

    <!-- Animate CSS -->
    <link rel="stylesheet" href="assets/extras/animate.css" type="text/css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="assets/extras/owl.carousel.css" type="text/css">
    <link rel="stylesheet" href="assets/extras/owl.theme.css" type="text/css">
    <!-- Rev Slider CSS -->
    <link rel="stylesheet" href="assets/extras/settings.css" type="text/css"> 
    <!-- Slicknav js -->
    <link rel="stylesheet" href="assets/css/slicknav.css" type="text/css">
    <!-- Main Styles -->
    <link rel="stylesheet" href="assets/css/main.css" type="text/css">
    <!-- Responsive CSS Styles -->
    <link rel="stylesheet" href="assets/css/responsive.css" type="text/css">

    <!-- Color CSS Styles  -->
    <link rel="stylesheet" type="text/css" href="assets/css/colors/red.css" media="screen" />


</head>
<body>

	<div class="wrapper">
		<div class="sidebar" data-image="assets/img/sidebar-5.jpg" style="background-color:#DCDCDC">

			<div class="sidebar-wrapper">
				<div class="logo logo_grid">
					<h2>
						<a href="http://clickmyjobs.com">Click<span>myjobs.com</span>
						</a>
					</h2>
				</div>

				<ul class="nav">
					<li><a href="dashboard.do"> <i
							class="pe-7s-graph"></i>
							<p>Dashboard</p>
					</a></li>
					<li><a href="resume.do"> <i class="pe-7s-user"></i>
							<p>My Resume</p>
					</a></li>
					<li class="active"><a href="bookmarked.do"> <i class="pe-7s-note2"></i>
							<p>Bookmarked Jobs</p>
					</a></li>
					<li><a href="notifications.do"> <i class="pe-7s-news-paper"></i>
							<p>Notifications</p>
					</a></li>
					<li><a href="browsejobs.do"> <i class="pe-7s-science"></i>
							<p>Browse jobs</p>
					</a></li>
					<li><a href="browsecategories.do"> <i class="pe-7s-map-marker"></i>
							<p>Browse Categories</p>
					</a></li>
					<li><a href="manage-applications.do"> <i class="pe-7s-info"></i>
							<p>Manage Applications</p>
					</a></li>
					<li><a href="job-alerts.do"> <i class="pe-7s-bell"></i>
							<p>Job Alerts</p>
					</a></li>
					<!-- <li class="active-pro">
                    <a href="upgrade.html">
                        <i class="pe-7s-rocket"></i>
                        <p>Upgrade to PRO</p>
                    </a>
                </li>-->
				</ul>
			</div>
		</div>

		<div class="main-panel">
			<nav class="navbar navbar-default navbar-fixed">
				<div class="container-fluid" style="background-color:#fff">
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
					    data-toggle="dropdown" style="background-color:#FF4F57;">
					    Markarn Doe
					    <span class="caret"></span></button>
					    <ul class="dropdown-menu">
					     <li><a href="update-profile.do" style="background-color:#FFE4E1;">Update Profile</a></li>
                         <li><a href="changepassword.do" style="background-color:#FFE4E1;">Change Password</a></li>
                         <li><a href="logout.do" style="background-color:#FFE4E1;">Log out</a></li>
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
								<h3 class="alerts-title">Bookmarked</h3><br>
									<div class="job-list">
										<div class="thumb">
											<a href="#"><img src="assets/img/jobs/img-1.jpg" alt=""></a>
										</div>
										<div class="job-list-content">
											<h4>
												<a href="#">We need a web designer</a><span
													class="full-time">Full-Time</span>
											</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit. Illum quaerat aut veniam molestiae atque dolorum omnis
												temporibus consequuntur saepe. Nemo atque consectetur saepe
												corporis odit in dicta reprehenderit, officiis, praesentium?</p>
											<div class="job-tag">
												<div class="pull-left">
													<div class="meta-tag">
														<span><a href="browsecategories.do"><i
																class="ti-brush"></i>Art/Design</a></span> <span><i
															class="ti-location-pin"></i>Cupertino, CA, USA</span> <span><i
															class="ti-time"></i>60/Hour</span>
													</div>
												</div>
												<div class="pull-right">
													<div class="icon">
														<i class="ti-heart"></i>
													</div>
													<div class="btn btn-common btn-rm">Apply Job</div>
												</div>
											</div>
										</div>
									</div>

									<div class="job-list">
										<div class="thumb">
											<a href="#"><img src="assets/img/jobs/img-2.jpg" alt=""></a>
										</div>
										<div class="job-list-content">
											<h4>
												<a href="#">Front-end developer needed</a><span
													class="full-time">Full-Time</span>
											</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit. Illum quaerat aut veniam molestiae atque dolorum omnis
												temporibus consequuntur saepe. Nemo atque consectetur saepe
												corporis odit in dicta reprehenderit, officiis, praesentium?</p>
											<div class="job-tag">
												<div class="pull-left">
													<div class="meta-tag">
														<span><a href="browsecategories.do"><i
																class="ti-desktop"></i>Technologies</a></span> <span><i
															class="ti-location-pin"></i>Cupertino, CA, USA</span> <span><i
															class="ti-time"></i>60/Hour</span>
													</div>
												</div>
												<div class="pull-right">
													<div class="icon">
														<i class="ti-heart"></i>
													</div>
													<div class="btn btn-common btn-rm">Apply Job</div>
												</div>
											</div>
										</div>
									</div>
									<ul class="pagination">
										<li class="active"><a href="#" class="btn btn-common"><i
												class="ti-angle-left"></i> prev</a></li>
										<li><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">5</a></li>
										<li class="active"><a href="#" class="btn btn-common">Next
												<i class="ti-angle-right"></i>
										</a></li>
									</ul>

								</div>

							</div>
							<br> <br>

						</div>
					</div>
				</div>
			</div>



			<footer class="footer">
				<div class="container-fluid">
					<nav class="pull-left">
						<ul>
							<li><a href="index.do"> Home </a></li>
							<li><a href="about.do"> Company </a></li>
							<!-- <li><a href="#"> Portfolio </a></li> -->
							<li><a href="blog.do"> Blog </a></li>
						</ul>
					</nav>
					<p class="copyright pull-right">
						&copy; 2018 <a href="http://www.clickmyjobs.com">Click Myjobs</a>,
						made for job hunting 
						
					</p>
				</div>
			</footer>

		</div>
	</div>


</body>

<!--   Core JS Files   -->
<script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script src="assets/js/bootstrap-checkbox-radio-switch.js"></script>



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
	
    	
		
		
	</script>

</html>
