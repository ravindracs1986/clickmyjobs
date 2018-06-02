<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="shortcut icon" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>MyJobs-Portal-Employer-Profile</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Animation library for notifications   -->
    <link href="assets/css/animate.min.css" rel="stylesheet"/>

    <!--  Light Bootstrap Table core CSS    -->
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>


    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="assets/css/demo.css" rel="stylesheet" />


    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    
     <!--     extra css     -->

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
    <div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">
	<div class="sidebar-wrapper">
            <div class="logo logo_grid">
					<h2>
						<a href="http://clickmyjobs.com">Click<span>myjobs.com</span>
						</a>
					</h2>
				</div>

            <ul class="nav">
                <li>
                    <a href="empdashboard.do">
                        <i class="pe-7s-graph"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                <li class="active">
                    <a href="empaddjobs.do">
                        <i class="pe-7s-user"></i>
                        <p>Add Jobs</p>
                    </a>
                </li>
                <li>
                    <a href="managejobs.do">
                        <i class="pe-7s-note2"></i>
                        <p>Manage Jobs</p>
                    </a>
                </li>
                <li>
                    <a href="empapplications.do">
                        <i class="pe-7s-news-paper"></i>
                        <p>Manage Applications</p>
                    </a>
                </li>
                <li>
                    <a href="browseresumes.do">
                        <i class="pe-7s-science"></i>
                        <p>Browse Resumes</p>
                    </a>
                </li>
                
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
						<a class="navbar-brand" href="#">Welcome,${userObject.name}</a>
					</div>
					
					<div class="dropdown navbar-right collapse navbar-collapse btn-rm">
					    <button class="btn btn-primary dropdown-toggle" type="button" 
					    data-toggle="dropdown" style="background-color:#FF4F57;">
					   ${userObject.name}
					    <span class="caret"></span></button>
					    <ul class="dropdown-menu">
					     <li><a href="update-profile.do" style="background-color:#FFE4E1;">Update Profile</a></li>
					      <li><a href="offers.do" style="background-color:#FFE4E1;">Balance</a></li>
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
								<h3 class="alerts-title">Add Job</h3><br>
									<div class="page-ads box">
										<form class="form-ad">
											<div class="form-group">
												<label class="control-label">Your Email</label> <input
													type="text" class="form-control" placeholder="mail@example.com">
											</div>
											<div class="form-group">
												<label class="control-label">Job Title</label> <input
													type="text" class="form-control">
											</div>
											<div class="form-group">
												<label class="control-label">Location <span>(optional)</span></label>
												<input type="text" class="form-control" placeholder="e.g.London">
											</div>
											<div class="form-group">
												<label class="control-label">Category</label>
												<div class="search-category-container">
													<label class="styled-select"> <select
														class="dropdown-product selectpicker">
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
											<div class="form-group">
												<label class="control-label" for="textarea">Job Tags <span>(optional)</span></label>
												<input type="text" class="form-control"
													placeholder="e.g.PHP,Social Media,Management">
												<p class="note">Comma separate tags, such as required skills
													or technologies, for this job.</p>
											</div>
											<div class="form-group">
												<label class="control-label">Description</label>
											</div>
											<section id="editor">
												<div id="summernote">
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit. Rem quia aut modi fugit, ratione saepe perferendis odio
														optio repellat dolorum voluptas excepturi possimus similique
														veritatis nobis. Provident cupiditate delectus, optio?</p>
												</div>
											</section>
											<div class="form-group">
												<label class="control-label">Application email / URL</label> <input
													type="text" class="form-control"
													placeholder="Enter an email address or website URL">
											</div>
											<div class="form-group">
												<label class="control-label">Closing Date <span>(optional)</span></label>
												<input type="text" class="form-control" placeholder="yyyy-mm-dd">
												<p class="note">Deadline for new applicants.</p>
											</div>
											<div class="divider">
												<h3>Company Details</h3>
											</div>
											<div class="form-group">
												<label class="control-label">Company Name</label> <input
													type="text" class="form-control"
													placeholder="Enter the name of the company">
											</div>
											<div class="form-group">
												<label class="control-label">Website <span>(optional)</span></label>
												<input type="text" class="form-control" placeholder="http://">
											</div>
											<div class="form-group">
												<label class="control-label">Tagline <span>(optional)</span></label>
												<input type="text" class="form-control"
													placeholder="Briefly describe your company">
											</div>
											<div class="form-group">
												<label class="control-label">Tagline <span>(optional)</span></label>
												<input type="text" class="form-control"
													placeholder="Briefly describe your company">
											</div>
											<div class="form-group">
												<div class="button-group">
													<div class="action-buttons">
														<div class="upload-button">
															<button class="btn btn-common btn-sm">Browse</button>
															<input id="cover_img_file" type="file">
														</div>
													</div>
												</div>
											</div>
											<a href="#" class="btn btn-common">Submit your job</a>
										</form>
									</div>

									
									

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

	<!--  Charts Plugin -->
	<script src="assets/js/chartist.min.js"></script>

    <!--  Notifications Plugin    -->
    <script src="assets/js/bootstrap-notify.js"></script>

    <!--  Google Maps Plugin    -->
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="assets/js/light-bootstrap-dashboard.js"></script>

	<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
	<script src="assets/js/demo.js"></script>

	

</html>
