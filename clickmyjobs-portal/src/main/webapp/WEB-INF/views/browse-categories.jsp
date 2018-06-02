<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta name="author" content="Jobboard">
<title>MyJobs-Portal-Candidates</title>

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

<!-- <link rel="stylesheet" href="assets/css/color-switcher.css"
	type="text/css"> -->

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
</head>
<body>

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
								</li>
							<li><a href="about.do"> About us <i
									class="fa fa-angle-down"></i>
							</a>
								<ul class="dropdown">
									<li><a href="about.do"> About </a></li>
									<li><a href="privacypolicy.do"> Privacy Policy </a></li>
									<li><a href="faq.do"> FAQ </a></li>
									<li><a href="pricing.do"> Pricing Tables </a></li>
									<li><a href="contact.do"> Contact </a></li>
								</ul></li>
							<li><a class="active" href="#"> Candidates <i
									class="fa fa-angle-down"></i>
							</a>
								<ul class="dropdown">
									<li><a href="browsejobs.do"> Browse Jobs </a></li>
									<li><a class="active" href="browsecategories.do">
											Browse Categories </a></li>
									<li><a href="addResume.do"> Add Resume </a></li>
								</ul></li>
							<li><a href="#"> Employers <i class="fa fa-angle-down"></i>
							</a>
								<ul class="dropdown">
									<li><a href="addjobs.do"> Add Job </a></li>
									<li><a href="managejobs.do"> Manage Jobs </a></li>
								</ul></li>
							<li><a href="blog.do"> Blog <i class="fa fa-angle-down"></i>
							</a>
								<ul class="dropdown">
									<li><a href="blog-full-post.do">Blog - Full Width</a></li>
									<li><a href="single-post.do"> Blog Single Post </a></li>
								</ul></li>
						</ul>
						<c:choose> 
							  <c:when test="${userObject !=null}">
							    <ul class="nav navbar-nav navbar-right float-right">
				                  <li class="left"><a href="profile.do"><i class="ti-pencil-alt"></i>Profile</a></li>
				                  <li class="right"><a href="logout.do"><i class="ti-lock"></i>Log out</a></li>
				                </ul>
							  </c:when>
							  <c:otherwise>
							     <ul class="nav navbar-nav navbar-right float-right">
				                  <li class="left"><a href="addjobs.do"><i class="ti-pencil-alt"></i> Post A Job</a></li>
				                  <li class="right"><a href="my-account.do"><i class="ti-lock"></i>  Log In</a></li>
				                </ul>
							  </c:otherwise>
							</c:choose>
					</div>
				</div>

				<ul class="wpb-mobile-menu">
					<li><a href="index.do">Home</a>
					<li><a href="about.do">About us</a>
						<ul>
							<li><a href="about.do">About</a></li>
							<li><a href="privacypolicy.do">Privacy Policy</a></li>
							<li><a href="faq.do">FAQ</a></li>
							<li><a href="pricing.do">Pricing Tables</a></li>
							<li><a href="contact.do">Contact</a></li>
						</ul></li>
					<li><a class="active" href="#">For Candidates</a>
						<ul>
							<li><a href="browsejobs.do">Browse Jobs</a></li>
							<li><a class="active" href="browsecategories.do">Browse
									Categories</a></li>
							<li><a href="addResume.do">Add Resume</a></li>
						</ul></li>
					<li><a href="#">For Employers</a>
						<ul>
							<li><a href="addjobs.do">Add Job</a></li>
							<li><a href="managejobs.do">Manage Jobs</a></li>
						</ul></li>
					<li><a href="blog.do">Blog</a>
						<ul class="dropdown">
							<li><a href="blog-full-post.do">Blog - Full Width</a></li>
							<li><a href="single-post.do">Blog Single Post</a></li>
						</ul></li>
					<li class="btn-m"><a href="addjobs.do"><i
							class="ti-pencil-alt"></i> Post A Job</a></li>
					<li class="btn-m"><a href="my-account.do"><i
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


		</div>
	</div>


	<div class="page-header"
		style="background: url(assets/img/banner1.jpg);">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="breadcrumb-wrapper">
						<h2 class="product-title">Categories</h2>
						<ol class="breadcrumb">
							<li><a href="#"><i class="ti-home"></i> Home</a></li>
							<li class="current">Browse Categories</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>


	<section class="section">
		<div class="container">
			<h2 class="section-title">Browse Categories</h2>
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-3 col-sm-3 col-xs-12 f-category">
						<a href="browsecategories.do">
							<div class="icon">
								<i class="ti-home"></i>
							</div>
							<h3>Finance</h3>
							<p>4286 jobs</p>
						</a>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-12 f-category">
						<a href="browsecategories.do">
							<div class="icon">
								<i class="ti-world"></i>
							</div>
							<h3>Sale/Markting</h3>
							<p>2000 jobs</p>
						</a>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-12 f-category">
						<a href="browsecategories.do">
							<div class="icon">
								<i class="ti-book"></i>
							</div>
							<h3>Education/Training</h3>
							<p>1450 jobs</p>
						</a>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-12 f-category">
						<a href="browsecategories.do">
							<div class="icon">
								<i class="ti-desktop"></i>
							</div>
							<h3>Technologies</h3>
							<p>5100 jobs</p>
						</a>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-12 f-category">
						<a href="browsecategories.do">
							<div class="icon">
								<i class="ti-brush"></i>
							</div>
							<h3>Art/Design</h3>
							<p>5079 jobs</p>
						</a>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-12 f-category">
						<a href="browsecategories.do">
							<div class="icon">
								<i class="ti-heart"></i>
							</div>
							<h3>Healthcare</h3>
							<p>3235 jobs</p>
						</a>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-12 f-category">
						<a href="browsecategories.do">
							<div class="icon">
								<i class="ti-filter"></i>
							</div>
							<h3>Science</h3>
							<p>1800 jobs</p>
						</a>
					</div>
					<div class="col-md-3 col-sm-3 col-xs-12 f-category">
						<a href="browsecategories.do">
							<div class="icon">
								<i class="ti-cup"></i>
							</div>
							<h3>Food Services</h3>
							<p>4286 jobs</p>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>


	<section class="all-categories section">
		<div class="container">
			<h2 class="section-title">Browse All Categories</h2>
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<h3 class="cat-title">
						Business <span>(33 Sub Categories)</span>
					</h3>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<ul>
						<li><a href="#">Accounting & Finance</a></li>
						<li><a href="#">Asset Management</a></li>
						<li><a href="#">Capital Markets</a></li>
						<li><a href="#">Commercial Banking</a></li>
						<li><a href="#">Commodities</a></li>
						<li><a href="#">Consultiong</a></li>
						<li><a href="#">Corporate</a></li>
						<li><a href="#">Credit</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<ul>
						<li><a href="#">Debt/Fixed Income</a></li>
						<li><a href="#">Derivatives</a></li>
						<li><a href="#">Equities</a></li>
						<li><a href="#">FX & Money Markets</a></li>
						<li><a href="#">Global Custody</a></li>
						<li><a href="#">Covernment</a></li>
						<li><a href="#">Graduates & Internships</a></li>
						<li><a href="#">Hedge Funds</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<ul>
						<li><a href="#">Information Services</a></li>
						<li><a href="#">Insurance</a></li>
						<li><a href="#">Investment Consulting</a></li>
						<li><a href="#">Investment Banking</a></li>
						<li><a href="#">Islamic Finance</a></li>
						<li><a href="#">Operations</a></li>
						<li><a href="#">Private Banking & Wealth Management</a></li>
						<li><a href="#">Private Equity & Venture Capital</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<ul>
						<li><a href="#">Quantitative Analytics</a></li>
						<li><a href="#">Real Estate</a></li>
						<li><a href="#">Research</a></li>
						<li><a href="#">Retail Banking</a></li>
						<li><a href="#">Risk Management</a></li>
						<li><a href="#">Trading</a></li>
					</ul>
				</div>
				<div class="col-md-12 col-sm-12 col-xs-12">
					<h3 class="cat-title">
						Science <span>(34 Sub Categories)</span>
					</h3>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<ul>
						<li><a href="#">Aeronautical Engineering</a></li>
						<li><a href="#">Aerospace Engineering</a></li>
						<li><a href="#">Algorthm</a></li>
						<li><a href="#">Biology</a></li>
						<li><a href="#">Broadcast Engineering</a></li>
						<li><a href="#">Circuit Design</a></li>
						<li><a href="#">Civil Engineering</a></li>
						<li><a href="#">Clean Technology</a></li>
						<li><a href="#">Construction Monitoring</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<ul>
						<li><a href="#">Climate Sciences</a></li>
						<li><a href="#">Cryptography</a></li>
						<li><a href="#">Data Mining</a></li>
						<li><a href="#">Data Science</a></li>
						<li><a href="#">Digital Design</a></li>
						<li><a href="#">Drones</a></li>
						<li><a href="#">Electrical Engineering</a></li>
						<li><a href="#">Electronics</a></li>
						<li><a href="#">Engineering</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<ul>
						<li><a href="#">Gelolgy</a></li>
						<li><a href="#">Human Science</a></li>
						<li><a href="#">Imaging</a></li>
						<li><a href="#">Industrial Engineering</a></li>
						<li><a href="#">Instrumentation</a></li>
						<li><a href="#">Machine Learning</a></li>
						<li><a href="#">Mathematics</a></li>
						<li><a href="#">Machanical Engineering</a></li>
						<li><a href="#">Medical</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<ul>
						<li><a href="#">Nanotechnology</a></li>
						<li><a href="#">Natural Language</a></li>
						<li><a href="#">Physics</a></li>
						<li><a href="#">Quantum</a></li>
						<li><a href="#">Remote Sensing</a></li>
						<li><a href="#">Robotics</a></li>
						<li><a href="#">Statistics</a></li>
						<li><a href="#">Wireless</a></li>
					</ul>
				</div>
				<div class="col-md-12 col-sm-12 col-xs-12">
					<h3 class="cat-title">
						Sales & Marketing <span>(21 Sub Categories)</span>
					</h3>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<ul>
						<li><a href="#">Display Advertising</a></li>
						<li><a href="#">Email Marketing</a></li>
						<li><a href="#">Lead Generation</a></li>
						<li><a href="#">Market &amp; Customer Research</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<ul>
						<li><a href="#">Marketing Strategy</a></li>
						<li><a href="#">Public Relations</a></li>
						<li><a href="#">Telemarketing &amp; Telesales</a></li>
						<li><a href="#">Other - Sales &amp; Marketing</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<ul>
						<li><a href="#">SEM - Search Engine Marketing</a></li>
						<li><a href="#">SEO - Search Engine Optimization</a></li>
						<li><a href="#">SMM - Social Media Marketing</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<ul>
						<li><a href="#">Climate Sciences</a></li>
						<li><a href="#">Cryptography</a></li>
						<li><a href="#">Data Mining</a></li>
						<li><a href="#">Digital Design</a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>


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
	<!-- <script type="text/javascript" src="assets/js/color-switcher.js"></script> -->
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