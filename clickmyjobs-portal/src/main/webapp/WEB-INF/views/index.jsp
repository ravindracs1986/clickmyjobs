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
    
    <title>MyJobs-Portal-Home</title>    

    <!-- Favicon -->
    <link rel="shortcut icon" href="assets/img/favicon.png">
    <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
   <!--<link type="text/css" href="<c:url value='/assets/css/bootstrap.min.css' />" rel="stylesheet" /> --> 
    <link rel="stylesheet" href="assets/css/jasny-bootstrap.min.css" type="text/css">  
    <link rel="stylesheet" href="assets/css/bootstrap-select.min.css" type="text/css">  
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
      <!-- Header Section Start -->
      <div class="header">    
        <!-- Start intro section -->
        <section id="intro" class="section-intro">
          <div class="logo-menu">
            <nav class="navbar navbar-default" role="navigation" data-spy="affix" data-offset-top="50">
              <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand logo" href="index.do"><img src="assets/img/logo.png" alt=""></a>
                </div>

                <div class="collapse navbar-collapse" id="navbar">              
                <!-- Start Navigation List -->
                <ul class="nav navbar-nav">
                  <li>
                    <a class="active" href="index.do">
                    Home <i class="fa"></i>
                    </a>
                   
                  </li>
                  <li>
                    <a href="about.do">
                    About Us <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown">
                      <li>
                        <a href="about.do">
                        About
                        </a>
                      </li>
                     
                      <li>
                        <a href="privacypolicy.do">
                        Privacy Policy
                        </a>
                      </li>
                      <li>
                        <a href="faq.do">
                        FAQ
                        </a>
                      </li>
                      <li>
                        <a href="pricing.do">
                        Pricing Tables
                        </a>
                      </li>
                      <li>
                        <a href="contact.do">
                        Contact
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a href="#">
                    Candidates <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown">
                      <li>
                        <a href="browsejobs.do">
                        Browse Jobs
                        </a>
                      </li>
                      <li>
                        <a href="browsecategories.do">
                        Browse Categories
                        </a>
                      </li>
                      <li>
                        <a href="addResume.do">
                        Add Resume
                        </a>
                      </li>
                     
                    </ul>
                  </li>
                  <li>
                    <a href="#">
                    Employers <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown">
                      <li>
                        <a href="addjobs.do">
                        Add Job
                        </a>
                      </li>
                      <li>
                        <a href="managejobs.do">
                        Manage Jobs
                        </a>
                      </li>
                     
                    </ul>
                  </li>
                  <li>
                    <a href="blog.do">
                    Blog <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown">
                      
                      <li><a href="blog-full-post.do">Blog - Full Width</a></li> 
                      <li>
                        <a href="single-post.do">
                        Blog Single Post
                        </a>
                      </li>
                    </ul>
                  </li>
                </ul>
                <%-- <c:set var="user" value=${userObject}/> --%>
              
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
            <!-- Mobile Menu Start -->
            <ul class="wpb-mobile-menu">
              <li>
                <a class="active" href="index.do">Home</a>
               <!--  <ul>
                  <li><a class="active" href="index.do">Home 1</a></li>
                  <li><a href="index-02.jsp">Home 2</a></li>
                  <li><a href="index-03.jsp">Home 3</a></li>
                  <li><a href="index-04.jsp">Home 4</a></li>
                </ul>  -->                      
              </li>
              <li>
                <a href="about.do">About us</a>
                <ul>
                  <li><a href="about.do">About</a></li>
                  <!-- <li><a href="jobpage.do">Job Page</a></li>
                  <li><a href="jobdetails.do">Job Details</a></li>
                  <li><a href="resume.do">Resume Page</a></li> -->
                  <li><a href="privacypolicy.do">Privacy Policy</a></li>
                  <li><a href="faq.do">FAQ</a></li>
                  <li><a href="pricing.do">Pricing Tables</a></li>
                  <li><a href="contact.do">Contact</a></li>
                </ul>
              </li>
              <li>
                <a href="#">For Candidates</a>
                <ul>
                  <li><a href="browsejobs.do">Browse Jobs</a></li>
                  <li><a href="browsecategories.do">Browse Categories</a></li>
                  <li><a href="addResume.do">Add Resume</a></li>
                  <!-- <li><a href="manageresumes.do">Manage Resumes</a></li>
                  <li><a href="jobalerts">Job Alerts</a></li> -->
                </ul>
              </li>
              <li>
                <a href="#">For Employers</a>
                <ul>
                  <li><a href="addjobs.do">Add Job</a></li>
                  <li><a href="managejobs.do">Manage Jobs</a></li>
                  <!-- <li><a href="manageapplications.do">Manage Applications</a></li>
                  <li><a href="browseresumes.do">Browse Resumes</a></li> -->
                </ul>
              </li> 
              <li>
                <a href="blog.do">Blog</a>
                <ul class="dropdown">
                  <!-- <li><a href="blog.do">Blog - Right Sidebar</a></li>
                  <li><a href="blog-left-sidebar.jsp">Blog - Left Sidebar</a></li> -->
                  <li><a href="blog-full-post.do">Blog - Full Width</a></li>
                  <li><a href="single-post.do">Blog Single Post</a></li>
                </ul>
              </li>  
              <li class="btn-m"><a href="addjobs.do"><i class="ti-pencil-alt"></i> Post A Job</a></li>
              <li class="btn-m"><a href="my-account.do"><i class="ti-lock"></i>  Log In</a></li>          
            </ul>
            <!-- Mobile Menu End --> 
          </nav>

          <!-- Off Canvas Navigation -->
          <div class="navmenu navmenu-default navmenu-fixed-left offcanvas"> 
          <!--- Off Canvas Side Menu -->
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
                <li><a href="jobalerts">Job Alerts</a></li> 
                <li><a href="addjobs.do">Add Job</a></li>  
                <li><a href="managejobs.do">Manage Jobs</a></li>
                <li><a href="manageapplications.do">Manage Applications</a></li>
                <li><a href="browseresumes.do">Browse Resumes</a></li>
                <li><a href="contact.do">Contact</a></li>
                <li><a href="faq.do">Faq</a></li>
                <li><a href="my-account.do">Login</a></li>
            </ul><!--- End Menu -->
          </div> <!--- End Off Canvas Side Menu -->
          <!-- 
            
          </div> -->
      </div>
      <!-- Header Section End -->    

      <div class="search-container">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <h1>Find the job that fits your life</h1><br><h2>More than <strong>12,000</strong> jobs are waiting to Kickstart your career!</h2>
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
              <div class="popular-jobs">
                <b>Popular Keywords: </b>
                <a href="#">Web Design</a>
                <a href="#">Manager</a>
                <a href="#">Programming</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- end intro section -->
    </div>
    
    <!-- Find Job Section Start -->
    <section class="find-job section">
      <div class="container">
        <h2 class="section-title">Hot Jobs</h2>
        <div class="row">
          <div class="col-md-12">
            <div class="job-list">
              <div class="thumb">
                <a href="jobdetails.do"><img src="assets/img/jobs/img-1.jpg" alt=""></a>
              </div>
              <div class="job-list-content">
                <h4><a href="jobdetails.do">Need a web designer</a><span class="full-time">Full-Time</span></h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum quaerat aut veniam molestiae atque dolorum omnis temporibus consequuntur saepe. Nemo atque consectetur saepe corporis odit in dicta reprehenderit, officiis, praesentium?</p>
                <div class="job-tag">
                  <div class="pull-left">
                    <div class="meta-tag">
                      <span><a href="browsecategories.do"><i class="ti-brush"></i>Art/Design</a></span>
                      <span><i class="ti-location-pin"></i>Washington, USA</span>
                      <span><i class="ti-time"></i>60/Hour</span>
                    </div>
                  </div>
                  <div class="pull-right">
                    <div class="icon">
                      <i class="ti-heart"></i>
                    </div>
                    <a href="jobdetails.do" class="btn btn-common btn-rm">More Detail</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="job-list">
              <div class="thumb">
                <a href="jobdetails.do"><img src="assets/img/jobs/img-2.jpg" alt=""></a>
              </div>
              <div class="job-list-content">
                <h4><a href="jobdetails.do">Front-end developer needed</a><span class="full-time">Full-Time</span></h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum quaerat aut veniam molestiae atque dolorum omnis temporibus consequuntur saepe. Nemo atque consectetur saepe corporis odit in dicta reprehenderit, officiis, praesentium?</p>
                <div class="job-tag">
                  <div class="pull-left">
                    <div class="meta-tag">
                      <span><a href="browsecategories.do"><i class="ti-desktop"></i>Technologies</a></span>
                      <span><i class="ti-location-pin"></i>Cupertino, CA, USA</span>
                      <span><i class="ti-time"></i>60/Hour</span>
                    </div>
                  </div>
                  <div class="pull-right">
                    <div class="icon">
                      <i class="ti-heart"></i>
                    </div>
                    <a href="jobdetails.do" class="btn btn-common btn-rm">More Detail</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="job-list">
              <div class="thumb">
                <a href="jobdetails.do"><img src="assets/img/jobs/img-3.jpg" alt=""></a>
              </div>
              <div class="job-list-content">
                <h4><a href="jobdetails.do">Senior Accountant</a><span class="part-time">Part-Time</span></h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum quaerat aut veniam molestiae atque dolorum omnis temporibus consequuntur saepe. Nemo atque consectetur saepe corporis odit in dicta reprehenderit, officiis, praesentium?</p>
                <div class="job-tag">
                  <div class="pull-left">
                    <div class="meta-tag">
                      <span><a href="browsecategories.do"><i class="ti-home"></i>Finance</a></span>
                      <span><i class="ti-location-pin"></i>Delaware, USA</span>
                      <span><i class="ti-time"></i>60/Hour</span>
                    </div>
                  </div>
                  <div class="pull-right">
                    <div class="icon">
                      <i class="ti-heart"></i>
                    </div>
                    <a href="jobdetails.do" class="btn btn-common btn-rm">More Detail</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="job-list">
              <div class="thumb">
                <a href="jobdetails.do"><img src="assets/img/jobs/img-4.jpg" alt=""></a>
              </div>
              <div class="job-list-content">
                <h4><a href="jobdetails.do">Fullstack web developer needed</a><span class="full-time">Full-Time</span></h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum quaerat aut veniam molestiae atque dolorum omnis temporibus consequuntur saepe. Nemo atque consectetur saepe corporis odit in dicta reprehenderit, officiis, praesentium?</p>
                <div class="job-tag">
                  <div class="pull-left">
                    <div class="meta-tag">
                      <span><a href="browsecategories.do"><i class="ti-desktop"></i>Technologies</a></span>
                      <span><i class="ti-location-pin"></i>New York, USA</span>
                      <span><i class="ti-time"></i>60/Hour</span>
                    </div>
                  </div>
                  <div class="pull-right">
                    <div class="icon">
                      <i class="ti-heart"></i>
                    </div>
                    <a href="jobdetails.do" class="btn btn-common btn-rm">More Detail</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-12">
            <div class="showing pull-left">
              <a href="#">Showing <span>6-10</span> Of 24 Jobs</a>
            </div>                    
            <ul class="pagination pull-right">              
              <li class="active"><a href="#" class="btn btn-common" ><i class="ti-angle-left"></i> prev</a></li>
              <li><a href="#">1</a></li>
              <li><a href="#">2</a></li>
              <li><a href="#">3</a></li>
              <li><a href="#">4</a></li>
              <li><a href="#">5</a></li>
              <li class="active"><a href="#" class="btn btn-common">Next <i class="ti-angle-right"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <!-- Find Job Section End -->

 <!-- Featured Jobs Section Start -->
    <section class="featured-jobs section">
      <div class="container">
        <h2 class="section-title">
          Featured Jobs
        </h2>
        <div class="row">
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="featured-item">
              <div class="featured-wrap">
                <div class="featured-inner">
                  <figure class="item-thumb">
                    <a class="hover-effect" href="jobpage.do">
                      <img src="assets/img/features/img-1.jpg" alt="">
                    </a>
                  </figure>
                  <div class="item-body">
                    <h3 class="job-title"><a href="jobpage.do">Graphic Designer</a></h3>
                    <div class="adderess"><i class="ti-location-pin"></i> Dallas, United States</div>
                  </div>
                </div>
              </div>
              <div class="item-foot">
                <span><i class="ti-calendar"></i> 4 months ago</span>
                <span><i class="ti-time"></i> Full Time</span>
                <div class="view-iocn">
                  <a href="jobpage.do"><i class="ti-arrow-right"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="featured-item">
              <div class="featured-wrap">
                <div class="featured-inner">
                  <figure class="item-thumb">
                    <a class="hover-effect" href="jobpage.do">
                      <img src="assets/img/features/img-2.jpg" alt="">
                    </a>
                  </figure>
                  <div class="item-body">
                    <h3 class="job-title"><a href="jobpage.do">Software Engineer</a></h3>
                    <div class="adderess"><i class="ti-location-pin"></i> Delaware, United States</div>
                  </div>
                </div>
              </div>
              <div class="item-foot">
                <span><i class="ti-calendar"></i> 5 months ago</span>
                <span><i class="ti-time"></i> Part Time</span>
                <div class="view-iocn">
                  <a href="jobpage.do"><i class="ti-arrow-right"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="featured-item">
              <div class="featured-wrap">
                <div class="featured-inner">
                  <figure class="item-thumb">
                    <a class="hover-effect" href="jobpage.do">
                      <img src="assets/img/features/img-3.jpg" alt="">
                    </a>
                  </figure>
                  <div class="item-body">
                    <h3 class="job-title"><a href="jobpage.do">Managing Director</a></h3>
                    <div class="adderess"><i class="ti-location-pin"></i> NY, United States</div>
                  </div>
                </div>
              </div>
              <div class="item-foot">
                <span><i class="ti-calendar"></i> 3 months ago</span>
                <span><i class="ti-time"></i> Full Time</span>
                <div class="view-iocn">
                  <a href="jobpage.do"><i class="ti-arrow-right"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="featured-item">
              <div class="featured-wrap">
                <div class="featured-inner">
                  <figure class="item-thumb">
                    <a class="hover-effect" href="jobpage.do">
                      <img src="assets/img/features/img-3.jpg" alt="">
                    </a>
                  </figure>
                  <div class="item-body">
                    <h3 class="job-title"><a href="jobpage.do">Graphic Designer</a></h3>
                    <div class="adderess"><i class="ti-location-pin"></i> Washington, United States</div>
                  </div>
                </div>
              </div>
              <div class="item-foot">
                <span><i class="ti-calendar"></i> 1 months ago</span>
                <span><i class="ti-time"></i> Part Time</span>
                <div class="view-iocn">
                  <a href="jobpage.do"><i class="ti-arrow-right"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="featured-item">
              <div class="featured-wrap">
                <div class="featured-inner">
                  <figure class="item-thumb">
                    <a class="hover-effect" href="jobpage.do">
                      <img src="assets/img/features/img-2.jpg" alt="">
                    </a>
                  </figure>
                  <div class="item-body">
                    <h3 class="job-title"><a href="jobpage.do">Software Engineer</a></h3>
                    <div class="adderess"><i class="ti-location-pin"></i> Dallas, United States</div>
                  </div>
                </div>
              </div>
              <div class="item-foot">
                <span><i class="ti-calendar"></i> 6 months ago</span>
                <span><i class="ti-time"></i> Full Time</span>
                <div class="view-iocn">
                  <a href="jobpage.do"><i class="ti-arrow-right"></i></a>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-4 col-sm-6 col-xs-12">
            <div class="featured-item">
              <div class="featured-wrap">
                <div class="featured-inner">
                  <figure class="item-thumb">
                    <a class="hover-effect" href="jobpage.do">
                      <img src="assets/img/features/img-1.jpg" alt="">
                    </a>
                  </figure>
                  <div class="item-body">
                    <h3 class="job-title"><a href="jobpage.do">Managing Director</a></h3>
                    <div class="adderess"><i class="ti-location-pin"></i> NY, United States</div>
                  </div>
                </div>
              </div>
              <div class="item-foot">
                <span><i class="ti-calendar"></i> 7 months ago</span>
                <span><i class="ti-time"></i> Part Time</span>
                <div class="view-iocn">
                  <a href="jobpage.do"><i class="ti-arrow-right"></i></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Featured Jobs Section End -->

    <!-- Start Purchase Section -->
    <section class="section purchase" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row">
          <div class="section-content text-center">
            <h1 class="title-text">
             Looking for a Job
            </h1>
            <p>Join thousand of employers and earn what you deserve!</p>
            <a href="my-account.do" class="btn btn-common">Get Started Now</a>
          </div>
        </div>
      </div>
    </section>
    <!-- End Purchase Section -->
     
    <!-- Blog Section -->
    <section id="blog" class="section">
      <!-- Container Starts -->
      <div class="container">
        <h2 class="section-title">
          Latest News
        </h2>
        <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 blog-item">
            <!-- Blog Item Starts -->
            <div class="blog-item-wrapper">
              <div class="blog-item-img">
                <a href="single-post.do">
                  <img src="assets/img/blog/home-items/img1.jpg" alt="">
                </a>                
              </div>
              <div class="blog-item-text">
                <div class="meta-tags">
                  <span class="date"><i class="ti-calendar"></i> Dec 20, 2017</span>
                  <span class="comments"><a href="#"><i class="ti-comment-alt"></i> 5 Comments</a></span>
                </div>
                <a href="single-post.do">
                  <h3>
                    Tips to write an impressive resume online for beginner
                  </h3>
                </a>
                <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore praesentium asperiores ad vitae.
                </p>
                <a href="single-post.do" class="btn btn-common btn-rm">Read More</a>
              </div>
            </div>
            <!-- Blog Item Wrapper Ends-->
          </div>

          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 blog-item">
            <!-- Blog Item Starts -->
            <div class="blog-item-wrapper">
              <div class="blog-item-img">
                <a href="single-post.do">
                  <img src="assets/img/blog/home-items/img2.jpg" alt="">
                </a>                
              </div>
              <div class="blog-item-text">
                <div class="meta-tags">
                  <span class="date"><i class="ti-calendar"></i> Jan 20, 2018</span>
                  <span class="comments"><a href="#"><i class="ti-comment-alt"></i> 5 Comments</a></span>
                </div>
                <a href="single-post.do">
                  <h3>
                    Let's explore 5 cool new features in JobBoard theme
                  </h3>
                </a>
                <p>
                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore praesentium asperiores ad vitae.
                </p>
                <a href="single-post.do" class="btn btn-common btn-rm">Read More</a>
              </div>
            </div>
            <!-- Blog Item Wrapper Ends-->
          </div>

          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 blog-item">
            <!-- Blog Item Starts -->
            <div class="blog-item-wrapper">
              <div class="blog-item-img">
                <a href="single-post.do">
                  <img src="assets/img/blog/home-items/img3.jpg" alt="">
                </a>                
              </div>
              <div class="blog-item-text">
                <div class="meta-tags">
                  <span class="date"><i class="ti-calendar"></i> Mar 20, 2018</span>
                  <span class="comments"><a href="#"><i class="ti-comment-alt"></i> 5 Comments</a></span>
                </div>
                <a href="single-post.do">
                  <h3>
                    How to convince recruiters and get your dream job
                  </h3>
                </a>
                <p>
                 Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore praesentium asperiores ad vitae.
                </p>
                <a href="single-post.do" class="btn btn-common btn-rm">Read More</a>
              </div>
            </div>
            <!-- Blog Item Wrapper Ends-->
          </div>
        </div>
      </div>
    </section>
    <!-- blog Section End -->

    <!-- Testimonial Section Start -->
    <section id="testimonial" class="section">
      <div class="container">
        <div class="row">
          <div class="touch-slider" class="owl-carousel owl-theme">
            <div class="item active text-center">  
              <img class="img-member" src="assets/img/testimonial/img1.jpg" alt=""> 
              <div class="client-info">
               <h2 class="client-name">Jessica <span>(Senior Accountant)</span></h2>
              </div>
              <p><i class="fa fa-quote-left quote-left"></i> The team that was assigned to our project... were extremely professional <i class="fa fa-quote-right quote-right"></i><br> throughout the project and assured that the owner expectations were met and <br> often exceeded. </p>
            </div>
            <div class="item text-center">
              <img class="img-member" src="assets/img/testimonial/img2.jpg" alt=""> 
              <div class="client-info">
               <h2 class="client-name">John Doe <span>(Project Menager)</span></h2>
              </div>
              <p><i class="fa fa-quote-left quote-left"></i> The team that was assigned to our project... were extremely professional <i class="fa fa-quote-right quote-right"></i><br> throughout the project and assured that the owner expectations were met and <br> often exceeded. </p>
            </div>
            <div class="item text-center">
              <img class="img-member" src="assets/img/testimonial/img3.jpg" alt=""> 
              <div class="client-info">
                <h2 class="client-name">Helen <span>(Engineer)</span></h2>
              </div>
              <p><i class="fa fa-quote-left quote-left"></i> The team that was assigned to our project... were extremely professional <i class="fa fa-quote-right quote-right"></i><br> throughout the project and assured that the owner expectations were met and <br> often exceeded. </p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Testimonial Section End -->

    <!-- Clients Section -->
    <section class="clients section">
      <div class="container">
        <h2 class="section-title">
          Clients & Partners
        </h2>
        <div class="row"> 
          <div id="clients-scroller">
            <div class="items">
              <img src="assets/img/clients/img1.png" alt="">
            </div>
            <div class="items">
              <img src="assets/img/clients/img2.png" alt="">
            </div>
            <div class="items">
              <img src="assets/img/clients/img3.png" alt="">
            </div>
            <div class="items">
              <img src="assets/img/clients/img4.png" alt="">
            </div>
            <div class="items">
              <img src="assets/img/clients/img5.png" alt="">
            </div>
            <div class="items">
              <img src="assets/img/clients/img6.png" alt="">
            </div>
            <div class="items">
              <img src="assets/img/clients/img6.png" alt="">
            </div>
            <div class="items">
              <img src="assets/img/clients/img6.png" alt="">
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Client Section End -->

     <!-- Counter Section Start -->
    <section id="counter">
      <div class="container">
        <div class="row">
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="counting">
              <div class="icon">
                <i class="ti-briefcase"></i>
              </div>
              <div class="desc">                
                <h2>Jobs</h2>
                <h1 class="counter">12050</h1>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="counting">
              <div class="icon">
                <i class="ti-user"></i>
              </div>
              <div class="desc">
                <h2>Members</h2>
                <h1 class="counter">10890</h1>                
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="counting">
              <div class="icon">
                <i class="ti-write"></i>
              </div>
              <div class="desc">
                <h2>Resume</h2>
                <h1 class="counter">700</h1>                
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-6 col-xs-12">
            <div class="counting">
              <div class="icon">
                <i class="ti-heart"></i>
              </div>
              <div class="desc">
                <h2>Company</h2>
                <h1 class="counter">9050</h1>                
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Counter Section End -->

    <!-- Infobox Section Start -->
    <!-- <section class="infobox section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="info-text">
              <h2>Don't Want To Miss a Thing?</h2>
              <p>Just go to <a href="#">Google Play</a> to download JobBoard Mini</p>
            </div> 
            <a href="#" class="btn btn-border">Google Play</a>           
          </div>
        </div>
      </div>
    </section> -->
    <!-- Infobox Section End -->

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
    
    <!-- Go To Top Link -->
    <a href="#" class="back-to-top">
      <i class="ti-arrow-up"></i>
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
        
    <!-- Main JS  -->
    <script type="text/javascript" src="assets/js/jquery-min.js"></script>      
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>    
    <script type="text/javascript" src="assets/js/material.min.js"></script>
    <script type="text/javascript" src="assets/js/material-kit.js"></script>
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
    <script type="text/javascript" src="assets/js/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery.themepunch.tools.min.js"></script>
    
  </body>
</html>