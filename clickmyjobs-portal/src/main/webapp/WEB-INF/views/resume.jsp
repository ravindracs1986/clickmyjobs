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

 <style type="text/css">
    .custom-file-upload {
	  border: 1px solid #ccc;
	  display: inline-block;
	  padding: 6px 12px;
	  cursor: pointer;
	  background: #f5f5f5;
	}
    
    </style>

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
										<form:form class="form-ad" modelAttribute="addResumeDto" id ="addResumeDtoId" method="post" action="${cp}/resume.do" enctype="multipart/form-data">
											<div class="divider">
												<h3>Basic information</h3>
											</div>
											<div class="form-group">
												<label class="control-label" for="textarea">Name</label> <input
													type="text" class="form-control inputclass" value="${userObject.name}">
											</div>
											<div class="form-group">
												<label class="control-label" for="textarea"></label> <label
													class="control-label" for="textarea">Email</label> <input
													type="text" class="form-control inputclass"
													value="${userObject.email}">
											</div>
											<div class="form-group">
												<label class="control-label" for="textarea">Profession
													Title</label> <form:input type="text" class="form-control"  name="profession_title" id ="profession_title" path="profession_title" placeholder="Headline (e.g. Front-end developer)"/>
											</div>
											<div class="form-group">
												<label class="control-label" for="textarea">Profile Description</label>
												<form:textarea class="form-control" rows="7" id ="profile_description" path="profile_description"/>
											</div>
											
											<div class="form-group">
												<label class="control-label" for="textarea">Location</label>
												<form:input type="text" class="form-control"
													placeholder="Location, e.g" name="location" id ="location" path="location"/>
											</div>
											<div class="form-group">
												<label class="control-label" for="textarea">Web</label> <form:input
													type="text" class="form-control"
													placeholder="http://" name="web" id ="web" path="web"/>
											</div>
											<div class="form-group">
												<label class="control-label" for="textarea">Salary Expectations</label>
												<form:input type="text" class="form-control"
													placeholder="Salary, e.g. 10000" name="salary_expectations" id ="salary_expectations" path="salary_expectations"/>
											</div>
											<div class="form-group">
												<label class="control-label" for="textarea">Notice Period</label> 
												<form:input type="text" class="form-control" placeholder="eg.30" name="notice_period" id ="notice_period" path="notice_period"/>
											</div>
											
											<div class="divider">
												<h3>Education</h3>
											</div>
											<div class="form-group">
												<label class="control-label">Qualification Degree</label>
												<div class="search-category-container">
													<label class="styled-select"> <form:select
														class="dropdown-product selectpicker styled-select" style="cursor: pointer;" id="education.degree" name="education.degree" path="education.degree" multiple="true">
															<form:option value="" selected="selected" disabled="disabled">-- select one --</form:option>
														    <form:option value="No formal education">No formal education</form:option>
														    <form:option value="Primary education">Primary education</form:option>
														    <form:option value="Secondary education">Secondary education or high school</form:option>
														    <form:option value="GED">GED</form:option>
														    <form:option value="Vocational qualification">Vocational qualification</form:option>
														    <form:option value="Bachelor's degree">Bachelor's degree</form:option>
														    <form:option value="Master's degree">Master's degree</form:option>
														    <form:option value="Doctorate or higher">Doctorate or higher</form:option>
															
															
													</form:select>
													</label>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label" for="textarea">Field of
													Study</label> <form:input type="text" class="form-control"
													placeholder="Major, e.g Computer Science" name="education.field_of_Study" id ="education.field_of_Study" path="education.field_of_Study"/>
											</div>
											<div class="form-group">
												<label class="control-label" for="textarea">School or College</label> 
												<form:input type="text" class="form-control"
													placeholder="School name, e.g. Massachusetts Institute of Technology" name="education.school_or_college" id ="education.school_or_college" path="education.school_or_college"/>
											</div>
											<div class="form-group">
												<div class="row">
													<div class="col-md-6">
														<label class="control-label" for="textarea">From</label> 
														<form:input type="text" class="form-control" placeholder="YYYY-MM-DD" name="education.from_date" id ="education.from_date" path="education.from_date"/>
													</div>
													<div class="col-md-6">
														<label class="control-label" for="textarea">To</label> 
														<form:input type="text" class="form-control" placeholder="YYYY-MM-DD" name="education.to_date" id ="education.to_date" path="education.to_date"/>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label class="control-label" for="textarea">Description</label>
												<form:textarea class="form-control" rows="7" name="education.description" id ="education.description" path="education.description"/>
											</div>
											
											<div class="divider">
												<h3>Work Experience</h3>
											</div>
											
											<!-- loop started -->
												<div class="form-group">
													<label class="control-label" for="textarea">Company
														Name</label> <form:input type="text" class="form-control"
														placeholder="Company name" name="workExp.company_name" id="workExp.company_name" path="workExp.company_name"/>
												</div>
												<div class="form-group">
													<label class="control-label" for="textarea">Title</label> <form:input
														type="text" class="form-control"
														placeholder="e.g UI/UX Researcher" name="workExp.title" id="workExp.title" path="workExp.title"/>
												</div>
												<div class="form-group">
													<div class="row">
														<div class="col-md-6">
															<label class="control-label" for="textarea">Date
																Form</label> <form:input type="text" class="form-control"
																placeholder="YYYY-MM-DD" name="workExp.date_form" id="workExp.date_form" path="workExp.date_form"/>
														</div>
														<div class="col-md-6">
															<label class="control-label" for="textarea">Date
																To</label> <form:input type="text" class="form-control"
																placeholder="YYYY-MM-DD" name="workExp.date_to" id="workExp.date_to" path="workExp.date_to"/>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label" for="textarea">Description</label>
													<form:textarea class="form-control" rows="7" name="workExp.description" id="workExp.description" path="workExp.description"/>
												</div>
												<div class="form-group">
												<!-- <label class="control-label" for="textarea">Description</label> -->
													<form:checkbox path="workExp.current_job" name="workExp.current_job" id="workExp.current_job" value="Current_Job"/>Current Job 
													<!-- <input type="checkbox" name="current_job" id ="txt_1" value="Current_Job" />Current Job -->
												</div>
												<div class="add-post-btn">
													<div class="pull-left">
														<a href="#" class="btn-added" id="workExpAddId"><i class="ti-plus"></i>
															Add New Experience</a>
													</div>
													
												</div>
												<!-- one loop close -->
											
											<!-- list logic -->
											
											<!-- singal object ends -->
											<div id="wrkExpListContainers">
											 <c:forEach items="${addResumeDto.workExpsList}" var="WorkExpDto" varStatus="i"  begin="0">
											<div class='workExpsClass'>
												<div class="form-group">
													<label class="control-label" for="textarea">Company
														Name</label> <form:input type="text" class="form-control"
														placeholder="Company name" path="workExpsList[${i.index}].company_name" id="company_name${i.index}" />
												</div>
												<div class="form-group">
													<label class="control-label" for="textarea">Title</label> <form:input
														type="text" class="form-control"
														placeholder="e.g UI/UX Researcher" path="workExpsList[${i.index}].title" id="title${i.index}" />
												</div>
												<div class="form-group">
													<div class="row">
														<div class="col-md-6">
															<label class="control-label" for="textarea">Date
																Form</label> <form:input type="text" class="form-control"
																placeholder="YYYY-MM-DD" path="workExpsList[${i.index}].date_form" id="date_form${i.index}" />
														</div>
														<div class="col-md-6">
															<label class="control-label" for="textarea">Date
																To</label> <form:input type="text" class="form-control"
																placeholder="YYYY-MM-DD" path="workExpsList[${i.index}].date_to" id="date_to${i.index}"/>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label" for="textarea">Description</label>
													<form:textarea class="form-control" rows="7" id="description${i.index}" path="workExpsList[${i.index}].description"/>
												</div>
												<div class="add-post-btn">
													<div class="pull-right">
														<a href="#" class="btn-delete workExpDeleteClass"><i class="ti-trash"></i>Delete This</a>
													</div>
												</div>
											</div>
											</c:forEach>
											</div><br><br>
											
											
											<div class="divider">
												<h3>Skills</h3>
											</div>
											<!-- singal object starts -->
											<div class="form-group">
												<div class="row">
													<div class="col-md-6">
														<label class="control-label" for="textarea">Skill
															Name</label> <form:input class="form-control"
															placeholder="Skill name, e.g. HTML" type="text"
															name="skill.skill_Name" id="skill.skill_Name" path="skill.skill_Name"/>
													</div>
													<div class="col-md-6">
														<label class="control-label" for="textarea">%
															(1-100)</label> <form:input class="form-control"
															placeholder="Skill proficiency, e.g. 90" type="text"
															name="skill.skill_percentage" id="skill.skill_percentage" path="skill.skill_percentage"/>
															
													</div>
												</div>
											</div>
											<div class="add-post-btn">
												<div class="pull-left">
													<a href="#" class="btn-added" id="addSkills"><i class="ti-plus"></i>
														Add New Skills</a>
												</div>
												
											</div> 
											
											<!-- singal object ends -->
											<div id="skillListContainers">
												 <c:forEach items="${addResumeDto.skillsList}" var="SkillsDto" varStatus="i"  begin="0">
													<div class='skillClass'>
														<div class="form-group">
															<div class="row">
																<div class="col-md-5">
																	<label class="control-label" for="textarea">Skill Name</label> 
																	<form:input class="form-control" placeholder="Skill name, e.g. HTML" 
																		path="skillsList[${i.index}].skill_Name" id="skill_Name${i.index}"/>
																</div>
																<div class="col-md-5">
																	<label class="control-label" for="textarea">Percentage</label>
																	<form:input class="form-control" placeholder="Skill proficiency, e.g. 90" 
																	path="skillsList[${i.index}].skill_percentage" id="skill_percentage${i.index}"/>
																</div>
																
																<div class="pull-right col-md-2 " style="margin-top: 36px;">
																	<a href="#" class="btn-delete removeSkill"><i class="ti-trash"></i>Delete This</a>
																</div>
																
															</div>
														</div>
													</div>
												</c:forEach>
											</div><br><br>
											
											<div class="form-group">
												<div class="button-group">
													<div class="action-buttons">
														<div class="upload-button">
															<label for="file-upload" class="custom-file-upload">
				    											<i class="fa fa-cloud-upload"></i> Upload Resume
				 											 </label>
															<form:input id="file-upload" type="file" name="resumeFile" path="resumeFile" class="form-control input-sm" style="display:none;"/>
														</div>
													</div>
												</div>
											</div>
											
											 <input type="submit" value="Save" id="submit" />&nbsp;&nbsp;
										</form:form>
										<!-- <a href="resume.do" class="btn btn-common">Save</a> -->
									</div>



								</div><!-- edit ends -->

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
<script src="assets/js/jquery-min.js" type="text/javascript"></script>
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
<script src="assets/js/skills_list_helper.js" type="text/javascript"></script>
<script src="assets/js/workExp_list_helper.js" type="text/javascript"></script>
<script type="text/javascript">
	
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
	});
</script>

<script type="text/javascript">
            function rowAdded(rowElement) {
                //clear the imput fields for the row
               // alert("rowElement-->"+$(rowElement).html());
                //$(rowElement).find("input#name0");
                //alert("rowElement2222-->"+$(rowElement).html().filter('id'));
               // $("#txt_name").val()
                //$("#txt_name").attr('value')
                $(rowElement).find("input").val('');
                event.preventDefault();
                //may want to reset <select> options etc
                
                //in fact you may want to submit the form
                //saveNeeded();
            }
            function rowRemoved(rowElement) {
            	event.preventDefault();
               // saveNeeded();
                //alert( "Removed Row HTML:\n" + $(rowElement).html() );
            }
            
            /* function saveNeeded() {
                $('#submit').css('color','red');
                $('#submit').css('font-weight','bold');
                if( $('#submit').val().indexOf('!') != 0 ) {
                    $('#submit').val( '!' + $('#submit').val() );
                }
            } */
            
            /* function beforeSubmit() {
                alert('submitting....');
                return true;
            } */
            
            $(document).ready( function() {
            	
            	//skills_list_helper
                var config = {
                    rowClass : 'skillClass',
                    addRowId : 'addSkills',
                    removeRowClass : 'removeSkill',
                    formId : 'addResumeDtoId',
                    rowContainerId : 'skillListContainers',
                    indexedPropertyName : 'skillsList',
                    indexedPropertyMemberNames : 'skill_Name,skill_percentage',
                    rowAddedListener : rowAdded,
                    rowRemovedListener : rowRemoved,
                    //beforeSubmit : beforeSubmit
                };
                new SkillsListHelper(config);
            });
        </script>

		<script type="text/javascript">
            function rowAdded(rowElement) {
                $(rowElement).find("input").val('');
                event.preventDefault();
            }
            function rowRemoved(rowElement) {
            	event.preventDefault();
               // saveNeeded();
                //alert( "Removed Row HTML:\n" + $(rowElement).html() );
            }
            $(document).ready( function() {
            	//skills_list_helper
                var config = {
                    rowClass : 'workExpsClass',
                    addRowId : 'workExpAddId',
                    removeRowClass : 'workExpDeleteClass',
                    formId : 'addResumeDtoId',
                    rowContainerId : 'wrkExpListContainers',
                    indexedPropertyName : 'workExpsList',
                    indexedPropertyMemberNames : 'company_name,title,date_form,date_to,description',
                    rowAddedListener : rowAdded,
                    rowRemovedListener : rowRemoved,
                    //beforeSubmit : beforeSubmit
                };
                new WorkExpListHelper(config);
            });
        </script>

</html>
