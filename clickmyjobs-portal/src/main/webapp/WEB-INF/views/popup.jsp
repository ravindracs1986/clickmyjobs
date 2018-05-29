<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page
	import="javax.servlet.*,javax.servlet.http.*,java.sql.*,java.io.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ClickMyjobs OTP | Authenticate</title>
<link rel="shortcut icon" href="assets/img/favicon.png">
<script type="text/javascript" src="assets/js/jquery-min.js"></script>
<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
	
</head>
<style type="text/css">
/* pop up css*/

#mask {
  position: absolute;
  left: 0;
  top: 0;
  z-index: 9000;
  background-color: #878787;
  display: none;
}

#boxes .window {
  position: absolute;
  left: 0;
  top: 0;
  width: 440px;
  height: 200px;
  display: none;
  z-index: 9999;
  padding: 20px;
  border-radius: 15px;
  text-align: center;
}

#boxes #dialog {
width: 656px;
height: 194px;
padding: 10px;
background-color: #F0F8FF;
font-family: 'Segoe UI Light', sans-serif;
font-size: 15pt;
}

#popupfoot {
font-size: 23pt;
position: absolute;
bottom: 4px;
width: 254px;
left: 239px;
}
}
.userOTP{
background-color: #fefefe;
border: 3px solid #888;
width: 213px;
height: 31px;
}
.otpSubt{
	
text-align: center;
font-size: 19px;
font-family: 'Arial', sans-serif;
font-weight: 623;
height: 44px;
padding: 7px 10px;
margin: 5px 30px 11px -8px;
border-radius: 12px;
}
.otpSubt-submit{
  border: 0px;
  color: #fff;
  text-shadow: 0 1px rgba(0,0,0,0.1); 
  background-color: #4d90fe;
}
.otpSubt-cancle{
text-align: center;
border: 0px;
color: #fff;
text-shadow: 0 1px rgba(0,0,0,0.1);
background-color: #4d90fe;
height: 50px;
padding: 11px 10px;
margin: -9px 30px 31px 12px;
border-radius: 12px;
}
.otpSubt:hover{
	color: #abda0f;
    text-decoration: none;
	cursor: pointer;
}

.userOTPError {
color: red;
text-align: right;
margin-right: 145px;
font-size: 16px;
}
</style>



<script type="text/javascript" >
$(document).ready(function() {	

var id = '#dialog';
	
//Get the screen height and width
var maskHeight = $(document).height();
var maskWidth = $(window).width();
	
//Set heigth and width to mask to fill up the whole screen
$('#mask').css({'width':maskWidth,'height':maskHeight});

//transition effect
$('#mask').fadeIn(500);	
$('#mask').fadeTo("slow",0.9);	
	
//Get the window height and width
var winH = $(window).height();
var winW = $(window).width();
              
//Set the popup window to center
$(id).css('top',  winH/2-$(id).height()/2);
$(id).css('left', winW/2-$(id).width()/2);
	
//transition effect
$(id).fadeIn(2000); 	
	
//if close button is clicked
$('.window .close').click(function (e) {
//Cancel the link behavior
e.preventDefault();

var pathValue=document.getElementById("path").value;  
window.location.href = pathValue;
//$('#mask').hide();
//$('.window').hide();
});

//if mask is clicked
$('#mask').click(function () {
//$(this).hide();
//$('.window').hide();
});
	
});

</script>
<body>
<!--PopUP -->
<div id="boxes">
  <div id="dialog" class="window">
  <input type="hidden" name="path" id ="path" value="${pageContext.request.contextPath}/index.do"/>
    Please provide OTP which you have recievd Via Mail while registring<br><br>
	<form:form action="${pageContext.request.contextPath}/athenticate.do" method="post">
            Please enter OTP:  <input type="password" name="userOTP" style="background-color: #fefefe;border: 3px solid #888; width: 213px;height: 31px;" maxlength="6"/> <br>
			<%-- <input type="hidden" name="userId" value="${userId}"/>
			<input type="hidden" name="name" value="${name}"/>
			<input type="hidden" name="email" value="${email}"/>
			<input type="hidden" name="phone" value="${phone}"/> --%>
			<%-- <div class="message userOTPError" id="message1"><c:out value="${wrongOTP}"/></div> --%>
			<div id="popupfoot"> 
			<a href="#" class="agree">
			<input type="submit" name="otpSubt"
									class="message_submit otpSubt otpSubt-submit " value="Submit"/></a>
			<a class="close" href="<c:url value='${pageContext.request.contextPath}/otpCancel'/>"> <input type="submit" name="cancel"
									class="message_submit otpSubt otpSubt-submit" value="Cancle"/></a> 
	 </div>
	</form:form>
	
	
	 
	</div>
  </div>
  <div id="mask"></div>

	
</body>
</html>
