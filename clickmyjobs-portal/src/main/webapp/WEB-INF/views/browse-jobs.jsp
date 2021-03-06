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
									<li><a class="active" href="browsejobs.do"> Browse
											Jobs </a></li>
									<li><a href="browsecategories.do"> Browse Categories </a>
									</li>
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
					<li><a href="index.do">Home</a></li>
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
							<li><a class="active" href="browsejobs.do">Browse Jobs</a></li>
							<li><a href="browsecategories.do">Browse Categories</a></li>
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
						<h2 class="product-title">Browse Job</h2>
						<ol class="breadcrumb">
							<li><a href="#"><i class="ti-home"></i> Home</a></li>
							<li class="current">Browse Job</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>


	<section class="job-browse section">
		<div class="container">
			<div class="row">
			
			<div class="col-md-12">
             
              <div class="content">
                <form method="" action="">
                  <div class="row">
                    <div class="col-md-4 col-sm-6">
                      <div class="form-group">
                        <input class="form-control" type="text" placeholder="job title / keywords / company name">
                        <i class="ti-time"></i>
                      </div>
                    </div>
                    <div class="col-md-4 col-sm-6">
                      <div class="form-group">
                        <input class="form-control" type="email" placeholder="city / province / zip code">
                        <i class="ti-location-pin"></i>
                      </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                      <div class="search-category-container">
                        <label class="styled-select">
                          <select class="dropdown-product selectpicker">
                            <option>All Categories</option>
                            <option>Finance</option>
                            <option>IT & Engineering</option>
                            <option>Education/Training</option>
                            <option>Art/Design</option>
                            <option>Sale/Markting</option>
                            <option>Healthcare</option>
                            <option>Science</option>                              
                            <option>Food Services</option>
                          </select>
                        </label>
                      </div>
                    </div>
                    <div class="col-md-1 col-sm-6">
                      <button type="button" class="btn btn-search-icon"><i class="ti-search"></i></button>
                    </div>
                  </div>
                </form>
              </div>
              
            </div>
			<div class="col-md-9 col-sm-8">
					<div class="job-list">
						<div class="thumb">
							<a href="jobdetails.do"><img src="assets/img/jobs/img-1.jpg"
								alt=""></a>
						</div>
						<div class="job-list-content">
							<h4>
								<a href="jobdetails.do">We need a web designer</a><span
									class="full-time">Full-Time</span>
							</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Illum quaerat aut veniam molestiae atque dolorum omnis
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
							<a href="jobdetails.do"><img src="assets/img/jobs/img-2.jpg"
								alt=""></a>
						</div>
						<div class="job-list-content">
							<h4>
								<a href="jobdetails.do">Front-end developer needed</a><span
									class="full-time">Full-Time</span>
							</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Illum quaerat aut veniam molestiae atque dolorum omnis
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
					<div class="job-list">
						<div class="thumb">
							<a href="jobdetails.do"><img src="assets/img/jobs/img-3.jpg"
								alt=""></a>
						</div>
						<div class="job-list-content">
							<h4>
								<a href="jobdetails.do">Software Enginner</a><span
									class="part-time">Part-Time</span>
							</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Illum quaerat aut veniam molestiae atque dolorum omnis
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
					<div class="job-list">
						<div class="thumb">
							<a href="jobdetails.do"><img src="assets/img/jobs/img-4.jpg"
								alt=""></a>
						</div>
						<div class="job-list-content">
							<h4>
								<a href="jobdetails.do">Fullstack web developer needed</a><span
									class="full-time">Full-Time</span>
							</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Illum quaerat aut veniam molestiae atque dolorum omnis
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
				<div class="col-md-3 col-sm-4">
					<aside>
						<div class="sidebar">
							<div class="inner-box">
								<h3>Categories</h3>
								<ul class="cat-list">
									<li><a href="#">Finance <span class="num-posts">4,287
												Jobs</span></a></li>
									<li><a href="#">Techonologies <span class="num-posts">4,256
												Jobs</span></a></li>
									<li><a href="#">Art/Design<span class="num-posts">3,245
												Jobs</span></a></li>
									<li><a href="#">Science <span class="num-posts">4,256
												Jobs</span></a></li>
									<li><a href="#">Education Training <span
											class="num-posts">4,560 Jobs</span></a></li>
									<li><a href="#">Logistics <span class="num-posts">3,256
												Jobs</span></a></li>
									<li><a href="#">Food Services <span class="num-posts">1,256
												Jobs</span></a></li>
								</ul>
							</div>
							<div class="inner-box">
								<h3>Job Status</h3>
								<ul class="cat-list">
									<li><a href="#">Full Time <span class="num-posts">12,256
												Jobs</span></a></li>
									<li><a href="#">Part Time <span class="num-posts">6,510
												Jobs</span></a></li>
									<li><a href="#">Freelancer <span class="num-posts">1,171
												Jobs</span></a></li>
									<li><a href="#">Internship <span class="num-posts">876
												Jobs</span></a></li>
								</ul>
							</div>
							<div class="inner-box">
								<h3>Locations</h3>
								<ul class="cat-list">
									<li><a href="#">New York <span class="num-posts">4,197
												Jobs</span></a></li>
									<li><a href="#">San Francisco <span class="num-posts">2,256
												Jobs</span></a></li>
									<li><a href="#">San Diego <span class="num-posts">3,278
												Jobs</span></a></li>
									<li><a href="#">Los Angeles <span class="num-posts">5,294
												Jobs</span></a></li>
									<li><a href="#">Chicago <span class="num-posts">1,746
												Jobs</span></a></li>
									<li><a href="#">Houston <span class="num-posts">871
												Jobs</span></a></li>
									<li><a href="#">New Orleans <span class="num-posts">2,163
												Jobs</span></a></li>
								</ul>
							</div>
						</div>
					</aside>
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