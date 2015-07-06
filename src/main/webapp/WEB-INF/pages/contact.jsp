<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Roman Olyvko</title>
    
	<link type="text/css" rel="stylesheet" href="<c:url value="/resources/style/bootstrap.css"/>" /></link>
	<link type="text/css" rel="stylesheet" href="<c:url value="/resources/style/clean-blog.css"/>" /></link>
	
	<script type="text/javascript" src="<c:url value="/resources/javascript/jquery.js"/>" /></script>
	<script type="text/javascript" src="<c:url value="/resources/javascript/bootstrap.js"/>" /></script>
	<script type="text/javascript" src="<c:url value="/resources/javascript/clean-blog.js"/>" /></script>
	<script type="text/javascript" src="<c:url value="/resources/javascript/function.js"/>" /></script>
    <!-- Custom Fonts -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
	<link rel="shortcut icon" href="<c:url value="/resources/images/r.ico"/>" />
   <script type="text/javascript">

	
	
function gethistorymessage() {
	 console.log($( "#datestart" ).val());
}

$(function(){
	setTimeout(getdate, 2000);
	function getdate(){
		var currentdate = new Date(); 
		var datetime = "" + currentdate.getFullYear() + "-"
		                + (currentdate.getMonth()+1)  + "-" 
		                + currentdate.getDate() + " "  
		                + currentdate.getHours() + ":"  
		                + currentdate.getMinutes() + ":" 
		                + currentdate.getSeconds();
		                //console.log( $( "#timenow" ));//document.getElementById('timenow').value
		 //   document.getElementById('timenow').value = datetime;
			$( "#timenow" ).val(datetime);
			setTimeout(getdate, 2000);
	}
});

function getFlat() {
	console.log($( "#name" ).val());

	
	$.ajax({
		type: "POST",
		url: 'addcontact',  
		data: {"name":$( "#name" ).val(),"message":$( "#message" ).val(),"timenow":$( "#timenow" ).val()}, 
		dataType : "text",                    
		success: function (data, textStatus) { 
			console.log(data);
			document.location.replace("contact");
	       
		} 
	});
	
	
}
</script>
<style type="text/css">
.row{
margin: 0px;
}
</style>    
</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-custom navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="">Roman page</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="index">About</a>
                    </li>
                    <li>
                        <a href="experience">Experience</a>
                    </li>
                    <li>
                        <a href="projects">Projects</a>
                    </li>
                    <li>
                        <a href="contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

     <!-- Page Header -->
    <!-- Set your background image for this header on the line below. -->
    <header class="intro-header" style="background-image: url('<c:url value="/resources/images/contact-bg.jpg"/>')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="page-heading">
                        <h1>Contact Me</h1>
                        <hr class="small">
                        <span class="subheading">Have questions? I have answers (maybe).</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1" style="border: 1px solid;border-color: rgb(185, 231, 237);">
                <p>Want to get in touch with me? Fill out the form below to send me a message and I will try to get back to you within 24 hours!</p>
                <!-- Contact Form - Enter your email address on line 19 of the mail/contact_me.php file to make this form work. -->
                <!-- WARNING: Some web hosts do not allow emails to be sent through forms to common mail hosts like Gmail or Yahoo. It's recommended that you use a private domain email address! -->
                <!-- NOTE: To use the contact form, your site must be on a live web host with PHP! The form will not work locally! -->
                   <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label>Your Name</label>
                            <input type="text" class="form-control" placeholder="Name" id="name" name="name" required data-validation-required-message="Please enter your name.">
                            <p class="help-block text-danger"></p>
                        </div>
                    </div>
                    <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label>Your Message to Roman</label>
                            <textarea rows="5" class="form-control" placeholder="Message" id="message" name="message" required data-validation-required-message="Please enter a message."></textarea>
                            <p class="help-block text-danger"></p>
                        </div>
                    </div>
                    <br>
                    <div id="success"></div>
                    <div class="row">
                        <div class="form-group col-xs-12">
  							 <input type="hidden"  id="timenow" name="timenow" >
                            <button type="submit" class="btn btn-default" onclick="getFlat();">SEND</button>
                        </div>
                    </div>
                    <br>
            </div>
            
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            <h3 >Contact history:</h3>
            
				<c:forEach var="p" items="${allcont}">
             			<div class="post-preview" >
		                    <a >
		                        <h3 class="post-subtitle">
		                            ${p.one.message} 
		                        </h3>
		                    </a>
		                    <p class="post-meta">Posted by <a >${p.one.name_user}</a> on ${p.one.date}</p>
		                </div>
                <c:choose>
				      <c:when test="${p.two!=null}">
						<div class="post-preview" style="margin-left: 15%">
		                    <a >
		                        <h3 class="post-subtitle">
		                            ${p.two.message} 
		                        </h3>
		                    </a>
		                    <p class="post-meta">Posted by <a >ROMAN OLYVKO</a> on ${p.two.date}</p>
		                </div>
				      </c:when>
					  <c:otherwise>
				      </c:otherwise>
				</c:choose>
				
                <hr>
				</c:forEach>
            </div>
                    <div id="success"></div>
                    <div class="row">
                        <div class="form-group col-xs-12">
                            <button  style="margin-left: 35%" onclick="gethistorymessage();"  class="btn btn-default">Older message</button>
                        </div>
                    </div>
        </div>
    </div>

    <hr>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <ul class="list-inline text-center">
                        <li>
                            <a href="https://twitter.com/Oluvko">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="https://www.facebook.com/olyvko">
                                <span class="fa-stack fa-lg">
                                    <i class="fa fa-circle fa-stack-2x"></i>
                                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                                </span>
                            </a>
                        </li>
                    </ul>
                    <p class="copyright text-muted">&copy; Made by Roman Olyvko 2015</p>
                </div>
            </div>
        </div>
    </footer>

    
</body>

</html>

