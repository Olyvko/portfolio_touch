<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Roman Olyvko</title>
    
	<link type="text/css" rel="stylesheet" href="<c:url value="/resources/style/bootstrap.css"/>" /></link>
	<link type="text/css" rel="stylesheet" href="<c:url value="/resources/style/clean-blog.css"/>" /></link>
	
    <!-- Custom Fonts -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="<c:url value="/resources/images/r.ico"/>" />
   
    
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
    <header class="intro-header" style="background-image: url('<c:url value="/resources/images/post-bg.jpg"/>')">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                    <div class="site-heading">
                        <h1>My projects</h1>
                        <hr class="small">
                    </div>
                </div>
            </div>
        </div>
    </header>

  <!-- Main Content -->
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="post-preview">
                    <a href="#" target="_blank">
                        <h2 class="post-title">
                            System for Medical University
                        </h2>
                        <h3 class="post-subtitle">
                            System for entry applicants
                        </h3>
                    </a>
                    <p class="post-meta">Made by <a href="#">Roman Olyvko</a></p>
                </div>
                <hr>
                <div class="post-preview">
                    <a href="http://ipm.lviv.ua/ccode/" target="_blank">
                        <h2 class="post-title">
                            Konstanta Kod
                        </h2>
                        <h3 class="post-subtitle">
                            Monitoring system
                        </h3>
                    </a>
                    <p class="post-meta">Made by <a href="#">Roman Olyvko</a></p>
                </div>
                <hr>
                <div class="post-preview">
                    <a href="http://ipm.lviv.ua/ccode/" target="_blank">
                        <h2 class="post-title">
                            Kitchen
                        </h2>
                        <h3 class="post-subtitle">
                            Monitoring system
                        </h3>
                    </a>
                    <p class="post-meta">Made by <a href="#">Roman Olyvko</a></p>
                </div>
                <hr>
                <div class="post-preview">
                    <a href="#" target="_blank">
                        <h2 class="post-title">
                            Many other cool systems
                        </h2>
                    </a>
                    <p class="post-meta">Made by <a href="#">Roman Olyvko</a></p>
                </div>
                <hr>
                
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

	<script type="text/javascript" src="<c:url value="/resources/javascript/jquery.js"/>" /></script>
	<script type="text/javascript" src="<c:url value="/resources/javascript/bootstrap.js"/>" /></script>
	<script type="text/javascript" src="<c:url value="/resources/javascript/clean-blog.js"/>" /></script>
    
</body>

</html>
