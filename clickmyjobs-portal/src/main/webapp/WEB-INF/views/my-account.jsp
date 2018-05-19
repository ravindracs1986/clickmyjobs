<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="author" content="Jobboard">
<title>MyJobs-Portal-Accounts</title>

<link rel="shortcut icon" href="assets/img/favicon.png">

<link rel="stylesheet" href="assets/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/jasny-bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/css/bootstrap-select.min.css"
	type="text/css">

<link rel="stylesheet" href="assets/css/material-kit.css"
	type="text/css">

<link rel="stylesheet" href="assets/fonts/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="assets/fonts/themify-icons.css">

<link rel="stylesheet" href="assets/css/color-switcher.css"
	type="text/css">

<link rel="stylesheet" href="assets/extras/animate.css" type="text/css">

<link rel="stylesheet" href="assets/extras/owl.carousel.css"
	type="text/css">
<link rel="stylesheet" href="assets/extras/owl.theme.css"
	type="text/css">

<link rel="stylesheet" href="assets/extras/settings.css" type="text/css">

<link rel="stylesheet" href="assets/css/slicknav.css" type="text/css">

<link rel="stylesheet" href="assets/css/main.css" type="text/css">

<link rel="stylesheet" href="assets/css/responsive.css" type="text/css">

<link rel="stylesheet" type="text/css" href="assets/css/colors/red.css"
	media="screen" />
	
<style type="text/css">
.error {
	color: red;
}
</style>
</head>
<body>

<input type="hidden" id="errors" value='${errors}'/>

	<div class="header">
		<div class="logo-menu">
			<nav class="navbar navbar-default main-navigation" role="navigation"
				data-spy="affix" data-offset-top="50">
				<div class="container">

					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#navbar">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand logo" href="index.do"><img
							src="assets/img/logo.png" alt=""></a>
					</div>
					<div class="collapse navbar-collapse" id="navbar">

						<ul class="nav navbar-nav">
							<li><a href="index.do"> Home <i class="fa"></i>
							</a>
								<!-- <ul class="dropdown">
									<li><a class="active" href="index.do"> Home 1 </a></li>
									<li><a href="index-02.jsp"> Home 2 </a></li>
									<li><a href="index-03.jsp"> Home 3 </a></li>
									<li><a href="index-04.jsp"> Home 4 </a></li>
								</ul> --></li>
							<li><a class="active" href="about.do"> About us <i
									class="fa fa-angle-down"></i>
							</a>
								<ul class="dropdown">
									<li><a class="active" href="about.do"> About </a></li>
									<!-- <li><a href="jobpage.do"> Job Page </a></li>
									<li><a href="jobdetails.do"> Job Details </a></li>
									<li><a href="resume.do"> Resume Page </a></li> -->
									<li><a href="privacypolicy.do"> Privacy Policy </a></li>
									<li><a href="faq.do"> FAQ </a></li>
									<li><a href="pricing.do"> Pricing Tables </a></li>
									<li><a href="contact.do"> Contact </a></li>
								</ul></li>
							<li><a href="#"> Candidates <i class="fa fa-angle-down"></i>
							</a>
								<ul class="dropdown">
									<li><a href="browsejobs.do"> Browse Jobs </a></li>
									<li><a href="browsecategories.do"> Browse Categories </a>
									</li>
									<li><a href="addResume.do"> Add Resume </a></li>
									<!-- <li><a href="manageresumes.do"> Manage Resumes </a></li>
									<li><a href="jobalerts.do"> Job Alerts </a></li> -->
								</ul></li>
							<li><a href="#"> Employers <i class="fa fa-angle-down"></i>
							</a>
								<ul class="dropdown">
									<li><a href="addjobs.do"> Add Job </a></li>
									<li><a href="managejobs.do"> Manage Jobs </a></li>
									<!-- <li><a href="manageapplications.do"> Manage
											Applications </a></li>
									<li><a href="browseresumes.do"> Browse Resumes </a></li> -->
								</ul></li>
							<li><a href="blog.do"> Blog <i class="fa fa-angle-down"></i>
							</a>
								<ul class="dropdown">
									<!-- <li><a href="blog.do"> Blog - Right Sidebar </a></li>
									<li><a href="blog-left-sidebar.jsp"> Blog - Left
											Sidebar </a></li> -->
									<li><a href="blog-full-post.do">Blog - Full Width</a></li>
									<li><a href="single-post.do"> Blog Single Post </a></li>
								</ul></li>
						</ul>
						<ul class="nav navbar-nav navbar-right float-right">
							<li class="left"><a href="addjobs.do"><i
									class="ti-pencil-alt"></i> Post A Job</a></li>
							<li class="right"><a href="my-account.do"><i
									class="ti-lock"></i> Log In</a></li>
						</ul>
					</div>
				</div>

				<ul class="wpb-mobile-menu">
					<li><a href="index.do">Home</a>
						<!-- <ul>
							<li><a href="index.do">Home 1</a></li>
							<li><a href="index-02.jsp">Home 2</a></li>
							<li><a href="index-03.jsp">Home 3</a></li>
							<li><a href="index-04.jsp">Home 4</a></li>
						</ul> --></li>
					<li><a href="about.do">About us</a>
						<ul>
							<li><a href="about.do">About</a></li>
							<!-- <li><a href="jobpage.do">Job Page</a></li>
							<li><a href="jobdetails.do">Job Details</a></li>
							<li><a href="resume.do">Resume Page</a></li> -->
							<li><a href="privacypolicy.do">Privacy Policy</a></li>
							<li><a href="faq.do">FAQ</a></li>
							<li><a href="pricing.do">Pricing Tables</a></li>
							<li><a href="contact.do">Contact</a></li>
						</ul></li>
					<li><a href="#">For Candidates</a>
						<ul>
							<li><a href="browsejobs.do">Browse Jobs</a></li>
							<li><a href="browsecategories.do">Browse Categories</a></li>
							<li><a href="addResume.do">Add Resume</a></li>
							<!-- <li><a href="manageresumes.do">Manage Resumes</a></li>
							<li><a href="jobalerts.do">Job Alerts</a></li> -->
						</ul></li>
					<li><a href="#">For Employers</a>
						<ul>
							<li><a href="addjobs.do">Add Job</a></li>
							<li><a href="managejobs.do">Manage Jobs</a></li>
							<!-- <li><a href="manageapplications.do">Manage Applications</a></li>
							<li><a href="browseresumes.do">Browse Resumes</a></li> -->
						</ul></li>
					<li><a href="blog.do">Blog</a>
						<ul class="dropdown">
						<!-- 	<li><a href="blog.do">Blog - Right Sidebar</a></li>
							<li><a href="blog-left-sidebar.jsp">Blog - Left Sidebar</a></li> -->
							<li><a href="blog-full-post.do">Blog - Full Width</a></li>
							<li><a href="single-post.do">Blog Single Post</a></li>
						</ul></li>
					<li class="btn-m"><a href="addjobs.do"><i
							class="ti-pencil-alt"></i> Post A Job</a></li>
					<li class="btn-m"><a class="active" href="my-account.do"><i
							class="ti-lock"></i> Log In</a></li>
				</ul>

			</nav>

			<div class="navmenu navmenu-default navmenu-fixed-left offcanvas">

				<div class="close" data-toggle="offcanvas" data-target=".navmenu">
					<i class="ti-close"></i>
				</div>
				<h3 class="title-menu">All About us</h3>
				<ul class="nav navmenu-nav">
					<li><a href="index.do">Home</a></li>
					<!-- <li><a href="index-02.jsp">Home Page 2</a></li>
					<li><a href="index-03.jsp">Home Page 3</a></li>
					<li><a href="index-04.jsp">Home Page 4</a></li> -->
					<li><a href="about.do">About us</a></li>
					<li><a href="jobpage.do">Job Page</a></li>
					<li><a href="jobdetails.do">Job Details</a></li>
					<li><a href="resume.do">Resume Page</a></li>
					<li><a href="privacypolicy.do">Privacy Policy</a></li>
					<li><a href="pricing.do">Pricing Tables</a></li>
					<li><a href="browsejobs.do">Browse Jobs</a></li>
					<li><a href="browsecategories.do">Browse Categories</a></li>
					<li><a href="addResume.do">Add Resume</a></li>
					<li><a href="manageresumes.do">Manage Resumes</a></li>
					<li><a href="jobalerts.do">Job Alerts</a></li>
					<li><a href="addjobs.do">Add Job</a></li>
					<li><a href="managejobs.do">Manage Jobs</a></li>
					<li><a href="manageapplications.do">Manage Applications</a></li>
					<li><a href="browseresumes.do">Browse Resumes</a></li>
					<li><a href="contact.do">Contact</a></li>
					<li><a href="faq.do">Faq</a></li>
					<li><a href="my-account.do">Login</a></li>
				</ul>
			</div>
			<!-- <div class="tbtn wow pulse" id="menu" data-wow-iteration="infinite"
				data-wow-duration="500ms" data-toggle="offcanvas"
				data-target=".navmenu">
				<p>
					<i class="ti-files"></i> All About us
				</p>
			</div> -->
		</div>
	</div>


	<div class="page-header"
		style="background: url(assets/img/banner1.jpg);">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="breadcrumb-wrapper">
						<h2 class="product-title">My Account</h2>
						<ol class="breadcrumb">
							<li><a href="#"><i class="ti-home"></i> Home</a></li>
							<li class="current">My Account</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="content" class="my-account">
		<div class="container">
			<div class="row">
				<div
					class="col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-6 cd-user-modal">
					<div class="my-account-form">
						<ul class="cd-switcher">
							<li><a class="selected" href="#0">LOGIN</a></li>
							<li><a href="#0">REGISTER</a></li>
						</ul>

						<div id="cd-login" class="is-selected">
							<div class="page-login-form">
								<form:form role="form" class="login-form" modelAttribute="userFormDto" method="post" action="${pageContext.request.contextPath}/login.do?action=login">
									<div class="form-group">
										<div class="input-icon">
											<i class="ti-user"></i> <form:input type="text" id="sender-email2"
												class="form-control" name="email" placeholder="Username" path="email"/>
												<form:errors path="email" cssClass="error" />
										</div>
									</div>
									<div class="form-group">
										<div class="input-icon">
											<i class="ti-lock"></i> <form:input type="password"
												class="form-control" placeholder="Password" path="password"/>
												<form:errors path="password" cssClass="error" />
										</div>
									</div>
									<button class="btn btn-common log-btn">Login</button>
									<div class="checkbox-item">
										<div class="checkbox">
											<label for="rememberme" class="rememberme"> <form:checkbox
												name="rememberme" id="rememberme" value="forever"
												 path="rememberme"/> Remember Me
											</label>
										</div>
										<p class="cd-form-bottom-message">
											<a href="#0">Lost your password?</a>
										</p>
									</div>
								</form:form>
							</div>
						</div>

						<div id="cd-signup">
							<div class="page-login-form register">
								<form:form role="form" class="login-form" modelAttribute="userFormDto" method="post" action="${pageContext.request.contextPath}/my-account.do" >
									<div class="form-group">
										<div class="input-icon">
											<i class="ti-user"></i> <form:input type="text" id="name"
												class="form-control" name="name" placeholder="Name" path="name"/>
												<form:errors path="name" cssClass="error" />
										</div>
									</div>
									<div class="form-group">
										<div class="input-icon">
											<i class="ti-microphone"></i> <form:input type="text" id="phone"
												class="form-control" name="phone" placeholder="Phone" path="phone"/>
												<form:errors path="phone" cssClass="error" />
										</div>
									</div>
									
									<div class="form-group">
										<div class="input-icon">
											<i class="ti-email"></i> <form:input type="text" id="email"
												class="form-control" name="email" placeholder="Email" path="email"/>
												<form:errors path="email" cssClass="error" />
										</div>
									</div>
									<div class="form-group">
										<div class="input-icon">
											<i class="ti-lock"></i> <form:input type="password"
												class="form-control" name ="password" placeholder="Password" path="password"/>
												<form:errors path="password" cssClass="error" />
										</div>
									</div>
									<div class="form-group">
										<div class="input-icon">
											<i class="ti-lock"></i> <form:input type="password"
												class="form-control" name ="cpassword" placeholder="Repeat Password" path="cpassword"/>
										<form:errors path="cpassword" cssClass="error" />
										</div>
									</div>
									
									<div class="form-group">
										<!-- <label class="control-label">Country</label> -->
										<div class="search-category-container input-icon">
											<label class="styled-select"> <form:select
												class="dropdown-product selectpicker form-control" id="country" name="country" path="country" multiple="true">
													<form:option value="NA">Select Country</form:option>
													<form:option value="IN">India</form:option>
													<form:option value="MYS">Maylaysia</form:option>
													
											</form:select>
											<form:errors path="country" cssClass="error" />
											</label>
										</div>
									</div>
									<div class="form-group">
										<div class="search-category-container input-icon">
											<label class="styled-select"> <form:select
												class="dropdown-product selectpicker form-control" id="userType" name="userType" path="userType" multiple="true">
												    <form:option value="NA">Select UserType</form:option>
													<form:option value="EM">Employer</form:option>
						                            <form:option value="CAN">Candidate</form:option>
											</form:select>
											<form:errors path="userType" cssClass="error" />
											</label>
										</div>
									</div>
				                    <button class="btn btn-common log-btn" type="submit">Register</button>
				                   
								</form:form>
							</div>
						</div>
						<div class="page-login-form" id="cd-reset-password">
							<p class="cd-form-message">Lost your password? Please enter
								your email address. You will receive a link to create a new
								password.</p>
							<form class="cd-form">
								<div class="form-group">
									<div class="input-icon">
										<i class="ti-email"></i> <input type="text" id="sender-email1"
											class="form-control" name="email" placeholder="Email">
									</div>
								</div>
								<p class="fieldset">
									<button class="btn btn-common log-btn" type="submit">Reset
										password</button>
								</p>
							</form>
							<p class="cd-form-bottom-message">
								<a href="#0">Back to log-in</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<footer>

		<section class="footer-Content">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="widget">
							<h3 class="block-title">
								<img src="assets/img/logo.png" class="img-responsive"
									alt="Footer Logo">
							</h3>
							<div class="textwidget">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Quisque lobortis tincidunt est, et euismod purus suscipit quis.
									Etiam euismod ornare elementum. Sed ex est, consectetur eget
									facilisis sed, auctor ut purus.</p>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="widget">
							<h3 class="block-title">Quick Links</h3>
							<ul class="menu">
								<li><a href="#">About Us</a></li>
								<li><a href="#">Support</a></li>
								<li><a href="#">License</a></li>
								<li><a href="#">Terms & Conditions</a></li>
								<li><a href="#">Contact</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="widget">
							<h3 class="block-title">Trending Jobs</h3>
							<ul class="menu">
								<li><a href="#">Android Developer</a></li>
								<li><a href="#">Senior Teamleader</a></li>
								<li><a href="#">iOS Developer</a></li>
								<li><a href="#">Junior Tester</a></li>
								<li><a href="#">Full Stack Developer</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="widget">
							<h3 class="block-title">Follow Us</h3>
							<div class="bottom-social-icons social-icon">
								<a class="twitter" href="https://twitter.com/GrayGrids"><i
									class="ti-twitter-alt"></i></a> <a class="facebook"
									href="https://web.facebook.com/GrayGrids"><i
									class="ti-facebook"></i></a> <a class="youtube"
									href="https://youtube.com"><i class="ti-youtube"></i></a> <a
									class="dribble" href="https://dribbble.com/"><i
									class="ti-dribbble"></i></a> <a class="linkedin"
									href="https://www.linkedin.com/"><i class="ti-linkedin"></i></a>
							</div>
							<p>Join our mailing list to stay up to date and get notices
								about our new releases!</p>
							<form class="subscribe-box">
								<input type="text" placeholder="Your email"> <input
									type="submit" class="btn-system" value="Send">
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>


		<div id="copyright">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<p>
							All Rights reserved &copy; 2017 - Designed & Developed by <a
								rel="nofollow" href="http://graygrids.com">GrayGrids</a>
						</p>
					</div>
				</div>
			</div>
		</div>

	</footer>


	<a href="#" class="back-to-top"> <i class="ti-arrow-up"></i>
	</a>
	<div id="loading">
		<div id="loading-center">
			<div id="loading-center-absolute">
				<div class="object" id="object_one"></div>
				<div class="object" id="object_two"></div>
				<div class="object" id="object_three"></div>
				<div class="object" id="object_four"></div>
				<div class="object" id="object_five"></div>
				<div class="object" id="object_six"></div>
				<div class="object" id="object_seven"></div>
				<div class="object" id="object_eight"></div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="assets/js/jquery-min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/material.min.js"></script>
	<script type="text/javascript" src="assets/js/material-kit.js"></script>
	<script type="text/javascript" src="assets/js/color-switcher.js"></script>
	<script type="text/javascript" src="assets/js/jquery.parallax.js"></script>
	<script type="text/javascript" src="assets/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="assets/js/jquery.slicknav.js"></script>
	<script type="text/javascript" src="assets/js/main.js"></script>
	<script type="text/javascript" src="assets/js/jquery.counterup.min.js"></script>
	<script type="text/javascript" src="assets/js/waypoints.min.js"></script>
	<script type="text/javascript" src="assets/js/jasny-bootstrap.min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-select.min.js"></script>
	<script type="text/javascript" src="assets/js/form-validator.min.js"></script>
	<script type="text/javascript" src="assets/js/contact-form-script.js"></script>
	<script type="text/javascript"
		src="assets/js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript"
		src="assets/js/jquery.themepunch.tools.min.js"></script>
</body>
</html>