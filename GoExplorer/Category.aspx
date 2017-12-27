﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="GoExplorer.Category" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Food</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="assets/css/imports.css" media="screen">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" media="screen">
    <link href="assets/fa-css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/owl-carousel.css" media="screen">
    <link href="assets/css/go.css" rel="stylesheet" media="screen" />
    <link href="assets/css/responsive-go.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="home">
    <div id="top"></div>
    <form runat="server">
        <div class="navbar-wrapper">
            <header class="navbar navbar-default navbar-fixed-top" id="MainMenu">
                <div class="navbar-extra-top clearfix" style="display: none">
                    <div class="navbar container-fluid">
                        <ul class="nav navbar-nav navbar-left">
                            <li class="menu-item"><a href="#"><i class="fa fa-suitcase"></i>Register</a></li>
                            <li class="menu-item"><a href="login.html"><i class="fa fa-sign-in"></i>Sign in</a></li>
                        </ul>
                        <div class="navbar-top-right">
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="#"><i class="fa fa-facebook fa-fw"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus fa-fw"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter fa-fw"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram fa-fw"></i></a></li>
                            </ul>
                            <form class="navbar-form navbar-right navbar-search" role="search" action="search.html">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Search">
                                </div>
                                <button type="submit" class="btn btn-default"><span class="fa fa-search"></span></button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="container-fluid collapse-md" id="navbar-main-container">
                    <div class="navbar-header">
                        <a href="Home.aspx" class="navbar-brand">
                            <img alt="GoExplore!" src="assets/images/logo.png"><span class="sr-only">&nbsp; GoExplore!</span></a>
                        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>

                    <nav class="navbar-collapse collapse" id="navbar-main">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="Home.aspx">Home</a></li>
                            <li><a href="Category.aspx">Explore</a></li>
                        </ul>
                    </nav>
                </div>
            </header>
        </div>
        <section class="hero hero-overlap" style="background-image: url('assets/images/012_cube_equi--.jpg');">
            <div class="bg-overlay">
                <div class="container">
                    <div class="row" id="quote">
                        <div class="col-lg-8">
                            <h1 class="intro-title"></h1>
                            <div class="intro-text">Select one of the below categories to move one step closer to making your day wonderful!</div>
                        </div>
                        <!--<div class="col-lg-4">
                        <input type="text" />
                    </div>-->
                    </div>
                    <div class="row" id="category" runat="server">
                        <%--  <div class="col-lg-2 category">
                        <div class="mask">
                            <h4><i class="fa fa-cutlery fa-icon" aria-hidden="true"></i>&nbsp; Food</h4>
                            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                            <a href="activity.html?category=food" class="btn btn-success btn-sm">
                                <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                SELECT
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-2 category">
                        <div class="mask">
                            <h4><i class="fa fa-film fa-icon" aria-hidden="true"></i>&nbsp; Movies</h4>
                            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                            <a href="activity.html?category=movie" class="btn btn-success btn-sm">
                                <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                SELECT
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-2 category">
                        <div class="mask">
                            <h4><i class="fa fa-users fa-icon" aria-hidden="true"></i>&nbsp; Activities</h4>
                            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                            <a href="activity.html?category=activity" class="btn btn-success btn-sm">
                                <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                SELECT
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-2 category">
                        <div class="mask">
                            <h4><i class="fa fa-calendar fa-icon" aria-hidden="true"></i>&nbsp; Events</h4>
                            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                            <a href="activity.html?category=events" class="btn btn-success btn-sm">
                                <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                SELECT
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-2 category">
                        <div class="mask">
                            <h4><i class="fa fa-shopping-cart fa-icon" aria-hidden="true"></i>&nbsp; Shopping</h4>
                            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                            <a href="activity.html?category=shopping" class="btn btn-success btn-sm">
                                <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                SELECT
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-2 category">
                        <div class="mask">
                            <h4><i class="fa fa-location-arrow fa-icon" aria-hidden="true"></i>&nbsp; Resorts</h4>
                            <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                            <a href="activity.html?category=resorts" class="btn btn-success btn-sm">
                                <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                SELECT
                            </a>
                        </div>
                    </div>--%>
                    </div>
                </div>
            </div>
        </section>
        <section class="featured-destinations" id="featured-category">
            <div class="container">
                <div class="cards overlap">
                    <div class="title-row">
                        <h3 class="title-entry">Explore Categories</h3>
                    </div>
                    <div class="row" runat="server" id="CategoryMob">
                       <%-- <div class="col-md-3 col-sm-6 col-xs-12">
                            <article class="card">
                                <div class="card-details">
                                    <h4 class="card-title"><a href="activity.html?category=food"><i class="fa fa-cutlery fa-icon" aria-hidden="true"></i>&nbsp; Food</a></h4>
                                    <div class="meta-details clearfix">
                                        <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                                        <a href="activity.html?category=food" class="btn btn-success btn-sm">
                                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                            SELECT
                                        </a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <article class="card">
                                <div class="card-details">
                                    <h4 class="card-title"><a href="activity.html?category=movie"><i class="fa fa-film fa-icon" aria-hidden="true"></i>&nbsp; Movies</a></h4>
                                    <div class="meta-details clearfix">
                                        <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                                        <a href="activity.html?category=movie" class="btn btn-success btn-sm">
                                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                            SELECT
                                        </a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <article class="card">
                                <div class="card-details">
                                    <h4 class="card-title"><a href="activity.html?category=activity"><i class="fa fa-users fa-icon" aria-hidden="true"></i>&nbsp; Activities</a></h4>
                                    <div class="meta-details clearfix">
                                        <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                                        <a href="activity.html?category=activity" class="btn btn-success btn-sm">
                                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                            SELECT
                                        </a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <article class="card">
                                <div class="card-details">
                                    <h4 class="card-title"><a href="activity.html?category=events"><i class="fa fa-calendar fa-icon" aria-hidden="true"></i>&nbsp; Events</a></h4>
                                    <div class="meta-details clearfix">
                                        <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                                        <a href="activity.html?category=events" class="btn btn-success btn-sm">
                                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                            SELECT
                                        </a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <article class="card">
                                <div class="card-details">
                                    <h4 class="card-title"><a href="activity.html?category=shopping"><i class="fa fa-shopping-cart fa-icon" aria-hidden="true"></i>&nbsp; Shopping</a></h4>
                                    <div class="meta-details clearfix">
                                        <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                                        <a href="activity.html?category=shopping" class="btn btn-success btn-sm">
                                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                            SELECT
                                        </a>
                                    </div>
                                </div>
                            </article>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <article class="card">
                                <div class="card-details">
                                    <h4 class="card-title"><a href="activity.html?category=resorts"><i class="fa fa-location-arrow fa-icon" aria-hidden="true"></i>&nbsp; Resorts</a></h4>
                                    <div class="meta-details clearfix">
                                        <p>A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.</p>
                                        <a href="activity.html?category=resorts" class="btn btn-success btn-sm">
                                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                            SELECT
                                        </a>
                                    </div>
                                </div>
                            </article>
                        </div>--%>
                    </div>
                </div>
            </div>
        </section>
    </form>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/app.js"></script>
    <script src="assets/js/go.js"></script>
    <script src="assets/js/custom.js"></script>
</body>
</html>
