<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- <link rel="stylesheet" href="assets/extras/settings.css" type="text/css">  -->
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

	<div class="wrapper">
		<div class="sidebar" data-image="assets/img/sidebar-5.jpg"
			style="background-color: #DCDCDC">
			<div class="sidebar-wrapper">
				<div class="logo logo_grid">
					<h2>
						<a href="http://clickmyjobs.com">Click<span>myjobs.com</span>
						</a>
					</h2>
				</div>

				<ul class="nav">
					<li><a href="dashboard.do"> <i class="pe-7s-graph"></i>
							<p>Dashboard</p>
					</a></li>
					<li class="active"><a href="resume.do"> <i
							class="pe-7s-user"></i>
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
				<div class="container-fluid" style="background-color: #fff">
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
							data-toggle="dropdown" style="background-color: #FF4F57;">
							${userObject.name} <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="update-profile.do"
								style="background-color: #FFE4E1;">Update Profile</a></li>
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
								<div class="col-md-12 col-sm-12 col-xs-12" id="canshort">
									<div class="inner-box my-resume">
										<div class="author-resume">
											<div class="thumb">
												<img src="assets/img/resume/img-1.jpg" alt="">
											</div>
											<div class="author-info">
												<h3>Mark Anderson</h3>
												<p class="sub-title">UI/UX Designer</p>
												<p>
													<span class="address"><i class="ti-location-pin"></i>Mahattan,
														NYC, USA</span> <span><i class="ti-phone"></i>(+01)
														211-123-5678</span>
												</p>
												<!-- <div class="social-link">
													<a class="twitter" target="_blank"
														data-original-title="twitter" href="#"
														data-toggle="tooltip" data-placement="top"><i
														class="fa fa-twitter"></i></a> <a class="facebook"
														target="_blank" data-original-title="facebook" href="#"
														data-toggle="tooltip" data-placement="top"><i
														class="fa fa-facebook"></i></a> <a class="google"
														target="_blank" data-original-title="google-plus" href="#"
														data-toggle="tooltip" data-placement="top"><i
														class="fa fa-google"></i></a> <a class="linkedin"
														target="_blank" data-original-title="linkedin" href="#"
														data-toggle="tooltip" data-placement="top"><i
														class="fa fa-linkedin"></i></a>
												</div> -->
											</div>
										</div>
										<div class="about-me item">
											<h3>
												About Me <i class="ti-pencil" id="abotClick"
													style="cursor: pointer;"></i>
											</h3>
											<p>Nullam semper erat arcu, ac tincidunt sem venenatis
												vel. Curabitur a dolor ac ligula fermentum eusmod ac
												ullamcorper nulla. Integer blandit uitricies aliquam.
												Pellentesque quis dui varius, dapibus vilit id, ipsum. Morbi
												ac eros feugiat, lacinia elit ut, elementum turpis.
												Curabitur justo sapien, tempus sit amet ruturm eu, commodo
												eu lacus. Morbi in ligula nibh. Maecenas ut mi at odio
												hendririt eleif end tempor vitae augue. Fusce eget arcu et
												nibh dapibus maximus consectetur in est. Sed iaculis Luctus
												nibh sed veneatis.</p>
										</div>
										<div class="work-experence item">
											<h3>
												Work Experience <i class="ti-pencil" id="expClick"
													style="cursor: pointer;"></i>
											</h3>
											<h4>UI/UX Designer</h4>
											<h5>Bannana INC.</h5>
											<span class="date">Fab 2017-Present(5year)</span>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit. Libero vero, dolores, officia quibusdam architecto
												sapiente eos voluptas odit ab veniam porro quae possimus
												itaque, quas! Tempora sequi nobis, atque incidunt!</p>
											<p>
												<a href="#">4 Projects</a>
											</p>
											<br>
											<h4>UI Designer</h4>
											<h5>Whale Creative</h5>
											<span class="date">Fab 2017-Present(2year)</span>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit. Libero vero, dolores, officia quibusdam architecto
												sapiente eos voluptas odit ab veniam porro quae possimus
												itaque, quas! Tempora sequi nobis, atque incidunt!</p>
											<p>
												<a href="#">4 Projects</a>
											</p>
										</div>
										<div class="education item">
											<h3>
												Education <i class="ti-pencil" id="eduClick"
													style="cursor: pointer;"></i>
											</h3>
											<h4>Massachusetts Institute Of Technology</h4>
											<p>Bachelor of Computer Science</p>
											<span class="date">2010-2014</span> <br>
											<h4>Massachusetts Institute Of Technology</h4>
											<p>Bachelor of Computer Science</p>
											<span class="date">2010-2014</span>
										</div>
									</div>



								</div>
								<!-- edit get starts -->
								<div class="col-md-12 col-sm-12 col-xs-12" id="canEdit">
										<div class="page-ads box">
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
													type="text" class="form-control"
													placeholder="Your@domain.com">
											</div>
											<div class="form-group">
												<label class="control-label" for="textarea">Profession
													Title</label> <input type="text" class="form-control"
													placeholder="Headline (e.g. Front-end developer)">
											</div>
											<div class="form-group">
												<label class="control-label" for="textarea">Profile Description</label>
												<textarea class="form-control" rows="7"></textarea>
											</div>
											
											<div class="form-group">
												<label class="control-label" for="textarea">Location</label>
												<input type="text" class="form-control"
													placeholder="Location, e.g">
											</div>
											<div class="form-group">
												<label class="control-label" for="textarea">Web</label> <input
													type="text" class="form-control"
													placeholder="Website address">
											</div>
											<div class="form-group">
												<label class="control-label" for="textarea">Salary Expectations</label>
												<input type="text" class="form-control"
													placeholder="Salary, e.g. 10000">
											</div>
											<div class="form-group">
												<label class="control-label" for="textarea">Notice Period</label> <input
													type="text" class="form-control" placeholder="eg.30days">
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
											
											<!-- <div class="add-post-btn">
												<div class="pull-left">
													<a href="#" class="btn-added"><i class="ti-plus"></i>
														Add New Education</a>
												</div>
												<div class="pull-right">
													<a href="#" class="btn-delete"><i class="ti-trash"></i>
														Delete This</a>
												</div>
											</div> -->
											<div class="divider">
												<h3>Work Experience</h3>
											</div>
											<div class='element' id='div_1'><!-- loop started -->
												<div class="form-group">
													<label class="control-label" for="textarea">Company
														Name</label> <input type="text" class="form-control"
														placeholder="Company name" id="txt_1"/>
												</div>
												<div class="form-group">
													<label class="control-label" for="textarea">Title</label> <input
														type="text" class="form-control"
														placeholder="e.g UI/UX Researcher" id="txt_1">
												</div>
												<div class="form-group">
													<div class="row">
														<div class="col-md-6">
															<label class="control-label" for="textarea">Date
																Form</label> <input type="text" class="form-control"
																placeholder="e.g 2014" id="txt_1">
														</div>
														<div class="col-md-6">
															<label class="control-label" for="textarea">Date
																To</label> <input type="text" class="form-control"
																placeholder="e.g 2018" id="txt_1">
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label" for="textarea">Description</label>
													<textarea class="form-control" rows="7" id="txt_1"></textarea>
												</div>
												<div class="form-group">
												<!-- <label class="control-label" for="textarea">Description</label> -->
													<%-- <form:checkbox path="favLanguages" value="Current_Job"/>Current Job  --%>
													<input type="checkbox" name="current_job" id ="txt_1" value="Current_Job" />Current Job
												</div>
												<div class="add-post-btn">
													<div class="pull-left">
														<a href="#" class="btn-added" id="workExpAddId"><i class="ti-plus"></i>
															Add New Experience</a>
													</div>
													<!-- <div class="pull-right">
														<a href="#" class="btn-delete" id="workExpDeleteId"><i class="ti-trash"></i>
															Delete This</a>
													</div> -->
												</div>
												</div> <!-- one loop close -->
											
											
											<div class="divider">
												<h3>Skills</h3>
											</div>
											<div class='skill_element' id='skill_1'><!-- loop started -->
											<div class="form-group">
												<div class="row">
													<div class="col-md-6">
														<label class="control-label" for="textarea">Skill
															Name</label> <input class="form-control"
															placeholder="Skill name, e.g. HTML" type="text">
													</div>
													<div class="col-md-6">
														<label class="control-label" for="textarea">%
															(1-100)</label> <input class="form-control"
															placeholder="Skill proficiency, e.g. 90" type="text">
													</div>
												</div>
											</div>
											<div class="add-post-btn">
												<div class="pull-left">
													<a href="#" class="btn-added" id="skillAddId"><i class="ti-plus"></i>
														Add New Skills</a>
												</div>
												<!-- <div class="pull-right">
													<a href="#" class="btn-delete"><i class="ti-trash"></i>
														Delete This</a>
												</div> -->
											</div>
											</div><!-- one loop close -->
											
											<div class="form-group">
												<div class="button-group">
													<div class="action-buttons">
														<div class="upload-button">
															<button class="btn btn-common">Update Resume</button>
															<input id="cover_img_file" type="file">
														</div>
													</div>
												</div>
											</div>
											
											
										</form>
										<a href="resume.do" class="btn btn-common">Save</a>
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



<!--  Notifications Plugin    -->
<script src="assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="assets/js/light-bootstrap-dashboard.js"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>
<script type="text/javascript"
	src="https://canvasjs.com/assets/script/canvasjs.min.js">
	
</script>
<script type="text/javascript">
	/* $(document).ready(function(){
	 var userTypeValue = $("#userType").val();
	 if(userTypeValue=='EMP'){
	 $("#empId").show();
	 $("#balanceId").show();
	 $("#canId").hide();
	 }else{
	 $("#canId").show();
	 $("#empId").hide();
	 $("#balanceId").hide();
	
	 }
	
	

	 }); */
	$(document).ready(function() {
		$("#abotClick").click(function() {

			$("#canshort").hide();
			$("#canEdit").show();

		});
		$("#expClick").click(function() {

			$("#canshort").hide();
			$("#canEdit").show();

		});
		$("#eduClick").click(function() {

			$("#canshort").hide();
			$("#canEdit").show();

		});
		$("#canEdit").hide();
		
		
		
		$("#workExpAddId").click(function(event){
       	 event.preventDefault();
           // Finding total number of elements added
           var total_element = $(".element").length;
                       
           // last <div> with element class id
           var lastid = $(".element:last").attr("id");
           var split_id = lastid.split("_");
           var nextindex = Number(split_id[1]) + 1;

           var max = 5;
           // Check total number elements
           if(total_element < max ){
               // Adding new div container after last occurance of element class
               $(".element:last").after("<div class='element' id='div_"+ nextindex +"'></div>");
             $("#div_" + nextindex).append("<div class='form-group'> <label class='control-label' for='textarea'>Company Name</label> <input type='text' class='form-control' placeholder='Company name'></div>").append(
   		"<div class='form-group'> <label class='control-label' for='textarea'>Title</label> <input type='text' class='form-control' placeholder='e.g UI/UX Researcher'></div>").append(
   				"<div class='form-group'><div class='row'><div class='col-md-6'><label class='control-label' for='textarea'>Date Form</label> <input type='text' class='form-control'placeholder='e.g 2014'></div><div class='col-md-6'><label class='control-label' for='textarea'>DateTo</label> <input type='text' class='form-control'placeholder='e.g 2018'></div></div></div>").append(
   						"<div class='form-group'><label class='control-label' for='textarea'>Description</label><textarea class='form-control' rows='7'></textarea></div>").append(
   								"&nbsp;<div class='add-post-btn'><div class='pull-right'><a href='#' class='btn-delete remove' id='workExpDeleteId'><i class='ti-trash'></i>Delete This</a></div></div>");			

   			 
           }
       	
       	
       });
      
   	
   	$('.page-ads').on('click','.remove',function(event){
   		event.preventDefault();
           var lastid = $(".element:last").attr("id");
           //var id = this.id;
           var split_id = lastid.split("_");
           var deleteindex = split_id[1];

           // Remove <div> with id
           $("#div_" + deleteindex).remove();
       });
   	
      
   	
   	$("#skillAddId").click(function(event){
   		event.preventDefault();
       	 var skill_total_element = $(".skill_element").length;
       	 var last_skill_id = $(".skill_element:last").attr("id");
            var skill_split_id = last_skill_id.split("_");
            var skillindex = Number(skill_split_id[1]) + 1;
            //alert("add one more row--"+skill_total_element+"skillindex-->"+skillindex);
            var maxValue = 5;
            if(skill_total_element < maxValue ){
           	 $(".skill_element:last").after("<div class='skill_element' id='skill_"+ skillindex +"'></div>");
           	 $("#skill_" + skillindex).append("<div class='form-group'><div class='row'><div class='col-md-6'><label class='control-label' for='textarea'>SkillName</label> <input class='form-control' placeholder='Skill name, e.g. HTML' type='text'></div><div class='col-md-6'><label class='control-label' for='textarea'>%(1-100)</label> <input class='form-control' placeholder='Skill proficiency, e.g. 90' type='text'></div></div></div><div class='add-post-btn'><div class='pull-right'><a href='#' class='btn-delete skillDelete'><i class='ti-trash'></i>Delete This</a></div></div>")
            }
       	 
   	
   	 });
   	
     $('.page-ads').on('click','.skillDelete',function(event){
   	  event.preventDefault();
           var lastid = $(".skill_element:last").attr("id");
           //var id = this.id;
           var split_id = lastid.split("_");
           var deleteindex = split_id[1];

           // Remove <div> with id
           $("#skill_" + deleteindex).remove();
       });
		
		
		
		
		
		
	});
</script>

</html>
