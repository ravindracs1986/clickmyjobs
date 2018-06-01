
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

<link rel="stylesheet" href="assets/css/color-switcher.css"
	type="text/css">

<link rel="stylesheet" href="assets/extras/animate.css" type="text/css">

<link rel="stylesheet" href="assets/extras/owl.carousel.css"
	type="text/css">
<link rel="stylesheet" href="assets/extras/owl.theme.css"
	type="text/css">

<!-- <link rel="stylesheet" href="assets/extras/settings.css" type="text/css"> -->

<link rel="stylesheet" href="assets/extras/summernote.css"
	type="text/css">

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
								<!-- <ul class="dropdown">
									<li><a href="index.do"> Home 1 </a></li>
									<li><a href="index-02.jsp"> Home 2 </a></li>
									<li><a href="index-03.jsp"> Home 3 </a></li>
									<li><a href="index-04.jsp"> Home 4 </a></li>
								</ul> --></li>
							<li><a href="about.do"> About us <i
									class="fa fa-angle-down"></i>
							</a>
								<ul class="dropdown">
									<li><a href="about.do"> About </a></li>
									<!-- <li><a href="jobpage.do"> Job Page </a></li>
									<li><a href="jobdetails.do"> Job Details </a></li>
									<li><a href="resume.do"> Resume Page </a></li> -->
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
									<li><a href="browsecategories.do"> Browse Categories </a>
									</li>
									<li><a class="active" href="addResume.do"> Add Resume
									</a></li>
									<!-- <li><a href="manageresumes.do"> Manage Resumes </a></li>
									<li><a href="jobalerts.do"> Job Alerts </a></li> -->
								</ul></li>
							<li><a href="#"> Employers <i class="fa fa-angle-down"></i>
							</a>
								<ul class="dropdown">
									<li><a href="addjobs.do"> Add Job </a></li>
									<li><a href="manage-jobpage.do"> Manage Jobs </a></li>
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
					<li><a class="active" href="#">For Candidates</a>
						<ul>
							<li><a href="browsejobs.do">Browse Jobs</a></li>
							<li><a href="browsecategories.do">Browse Categories</a></li>
							<li><a class="active" href="addResume.do">Add Resume</a></li>
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
							<!-- <li><a href="blog.do">Blog - Right Sidebar</a></li>
							<li><a href="blog-left-sidebar.jsp">Blog - Left Sidebar</a></li> -->
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
					<li><a href="manage-jobpage.do">Manage Jobs</a></li>
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
						<h2 class="product-title">Create Resume</h2>
						<ol class="breadcrumb">
							<li><a href="#"><i class="ti-home"></i> Home</a></li>
							<li class="current">Resumes</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
	</div>


	<section id="content">
		<div class="container">
			<div class="row">
				<div class="col-md-9 col-md-offset-2">
					<div class="page-ads box">
						<div class="post-header">
							<p>
								Already have an account? <a href="my-account.do">Click here
									to login</a>
							</p>
						</div>
						<form class="form-ad">
							<div class="divider">
								<h3>Basic information</h3>
							</div>
							<div class="form-group">
								<label class="control-label" for="textarea">Name</label> <input
									type="text" class="form-control" placeholder="Name">
							</div>
							<div class="form-group">
								<label class="control-label" for="textarea"></label> <label
									class="control-label" for="textarea">Email</label> <input
									type="text" class="form-control" placeholder="Your@domain.com">
							</div>
							<div class="form-group">
								<label class="control-label" for="textarea">Profession
									Title</label> <input type="text" class="form-control"
									placeholder="Headline (e.g. Front-end developer)">
							</div>
							<div class="form-group">
								<label class="control-label" for="textarea">Location</label> <input
									type="text" class="form-control" placeholder="Location, e.g">
							</div>
							<div class="form-group">
								<label class="control-label" for="textarea">Web</label> <input
									type="text" class="form-control" placeholder="Website address">
							</div>
							<div class="form-group">
								<label class="control-label" for="textarea">Pre Hour</label> <input
									type="text" class="form-control" placeholder="Salary, e.g. 85">
							</div>
							<div class="form-group">
								<label class="control-label" for="textarea">Age</label> <input
									type="text" class="form-control" placeholder="Years old">
							</div>
							<div class="form-group">
								<div class="button-group">
									<div class="action-buttons">
										<div class="upload-button">
											<button class="btn btn-common">Choose a cover image</button>
											<input id="cover_img_file" type="file">
										</div>
									</div>
								</div>
							</div>
							<div class="divider">
								<h3>Education</h3>
							</div>
							<div class="form-group">
								<label class="control-label" for="textarea">Degree</label> <input
									type="text" class="form-control"
									placeholder="Degree, e.g. Bachelor">
							</div>
							<div class="form-group">
								<label class="control-label" for="textarea">Field of
									Study</label> <input type="text" class="form-control"
									placeholder="Major, e.g Computer Science">
							</div>
							<div class="form-group">
								<label class="control-label" for="textarea">School</label> <input
									type="text" class="form-control"
									placeholder="School name, e.g. Massachusetts Institute of Technology">
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-6">
										<label class="control-label" for="textarea">From</label> <input
											type="text" class="form-control" placeholder="e.g 2014">
									</div>
									<div class="col-md-6">
										<label class="control-label" for="textarea">To</label> <input
											type="text" class="form-control" placeholder="e.g 2018">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label" for="textarea">Description</label>
								<textarea class="form-control" rows="7"></textarea>
							</div>
							<div class="form-group">
								<div class="button-group">
									<div class="action-buttons">
										<div class="upload-button">
											<button class="btn btn-common">Choose a cover Logo</button>
											<input id="cover_img_file" type="file">
										</div>
									</div>
								</div>
							</div>
							<div class="add-post-btn">
								<div class="pull-left">
									<a href="#" class="btn-added"><i class="ti-plus"></i> Add
										New Education</a>
								</div>
								<div class="pull-right">
									<a href="#" class="btn-delete"><i class="ti-trash"></i>
										Delete This</a>
								</div>
							</div>
							<div class="divider">
								<h3>Work Experience</h3>
							</div>
							<div class="form-group">
								<label class="control-label" for="textarea">Company Name</label>
								<input type="text" class="form-control"
									placeholder="Company name">
							</div>
							<div class="form-group">
								<label class="control-label" for="textarea">Title</label> <input
									type="text" class="form-control"
									placeholder="e.g UI/UX Researcher">
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-6">
										<label class="control-label" for="textarea">Date Form</label>
										<input type="text" class="form-control" placeholder="e.g 2014">
									</div>
									<div class="col-md-6">
										<label class="control-label" for="textarea">Date To</label> <input
											type="text" class="form-control" placeholder="e.g 2018">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="control-label" for="textarea">Description</label>
							</div>
							<section id="editor" style="margin-bottom: 30px;">
								<div id="summernote">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Rem quia aut modi fugit, ratione saepe perferendis odio
										optio repellat dolorum voluptas excepturi possimus similique
										veritatis nobis. Provident cupiditate delectus, optio?</p>
								</div>
							</section>
							<div class="form-group">
								<div class="button-group">
									<div class="action-buttons">
										<div class="upload-button">
											<button class="btn btn-common">Choose a cover Logo</button>
											<input id="cover_img_file" type="file">
										</div>
									</div>
								</div>
							</div>
							<div class="add-post-btn">
								<div class="pull-left">
									<a href="#" class="btn-added"><i class="ti-plus"></i> Add
										New Experience</a>
								</div>
								<div class="pull-right">
									<a href="#" class="btn-delete"><i class="ti-trash"></i>
										Delete This</a>
								</div>
							</div>
							<div class="divider">
								<h3>Skills</h3>
							</div>
							<div class="form-group">
								<div class="row">
									<div class="col-md-6">
										<label class="control-label" for="textarea">Skill Name</label>
										<input class="form-control"
											placeholder="Skill name, e.g. HTML" type="text">
									</div>
									<div class="col-md-6">
										<label class="control-label" for="textarea">% (1-100)</label>
										<input class="form-control"
											placeholder="Skill proficiency, e.g. 90" type="text">
									</div>
								</div>
							</div>
							<div class="add-post-btn">
								<div class="pull-left">
									<a href="#" class="btn-added"><i class="ti-plus"></i> Add
										New Skills</a>
								</div>
								<div class="pull-right">
									<a href="#" class="btn-delete"><i class="ti-trash"></i>
										Delete This</a>
								</div>
							</div>
						</form>
						<a href="resume.do" class="btn btn-common">Save</a>
					</div>
				</div>
			</div>
		</div>
	</section>


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
	<script type="text/javascript" src="assets/js/summernote.js"></script>
	<script>
      $(document).ready(function() {
          $('#summernote').summernote({
            height: 250,                 // set editor height
            minHeight: null,             // set minimum height of editor
            maxHeight: null,             // set maximum height of editor
            focus: true                  // set focus to editable area after initializing summernote
          });
      });
    </script>
</body>
</html>