<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ActivityMaster.aspx.cs" Inherits="GoExplorer.ActivityMaster" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Food</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">

    <link rel="stylesheet" href="assets/css/imports.css" media="screen">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" media="screen">
    <link href="assets/fa-css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/owl-carousel.css" media="screen">
    <link href="assets/css/activity.css" rel="stylesheet" media="screen" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="home">
    <div id="top">
        
    </div>
    <div class="navbar-wrapper">
        <header class="navbar navbar-default navbar-fixed-top" id="MainMenu">
            <div class="navbar-extra-top clearfix" style="display:none">
                <div class="navbar container-fluid">
                    <ul class="nav navbar-nav navbar-left">
                        <li class="menu-item"><a href="#"><i class="fa fa-suitcase"></i> Register</a></li>
                        <li class="menu-item"><a href="login.html"><i class="fa fa-sign-in"></i> Sign in</a></li>
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
    <section class="hero hero-overlap" style="background: url('assets/images/hero-1.jpg') repeat;">
        <div class="bg-overlay">
            <div class="container">
                <div class="row" id="containercategory" runat="server">
                   <%-- <div class="col-lg-2 category text-center">
                        <div class="mask">
                            <h4><i class="fa fa-cutlery fa-icon" aria-hidden="true"></i></h4>
                        </div>
                    </div>
                    <div class="col-lg-2 category text-center">
                        <div class="mask">
                            <h4><i class="fa fa-film fa-icon" aria-hidden="true"></i></h4>
                        </div>
                    </div>
                    <div class="col-lg-2 category text-center">
                        <div class="mask">
                            <h4><i class="fa fa-users fa-icon" aria-hidden="true"></i></h4>
                        </div>
                    </div>
                    <div class="col-lg-2 category text-center">
                        <div class="mask">
                            <h4><i class="fa fa-calendar fa-icon" aria-hidden="true"></i></h4>
                        </div>
                    </div>
                    <div class="col-lg-2 category text-center">
                        <div class="mask">
                            <h4><i class="fa fa-shopping-cart fa-icon" aria-hidden="true"></i></h4>
                        </div>
                    </div>
                    <div class="col-lg-2 category text-center">
                        <div class="mask">
                            <h4><i class="fa fa-location-arrow fa-icon" aria-hidden="true"></i></h4>
                        </div>
                    </div>--%>
                </div>
                <form runat="server">
                    <button type="button" id="btnHidden" runat="server" onserverclick="btnHidden_Click" style="visibility:hidden"></button>
                    <input type="hidden" runat="server" id="hdnCategoryId" />
                </form>
                <div class="row info-container" id="detailInfo">
                    <section class="featured-destinations">
                        <div class="container">
                            <div class="cards overlap">
                                <div class="row" id="ActivityData" runat="server">
                                    <%--<div class="col-md-3 col-sm-6 col-xs-12 product-card">
                                        <article class="card">
                                            <a href="destination-parent.html" class="featured-image" style="background-image: url(assets/images/featured-destination-1.jpg)">
                                                <div class="featured-img-inner">
                                                </div>
                                            </a>
                                            <div class="card-details">
                                                <h5 class="card-title">Sydney, Australia <span class="product-rating"><i class="fa fa-star fa-icon-product"></i><span>4.7</span></span></h5>
                                                <div class="meta-details clearfix">
                                                    <div class="col-xs-12 address">
                                                        <div class="col-xs-1 address"><i class="fa fa-map-marker fa-product"></i></div>
                                                        <div class="col-xs-9 address">Ahmedabad</div>
                                                    </div>
                                                </div>
                                                <div class="meta-details clearfix">
                                                    <div class="col-xs-12 address">
                                                        <div class="col-xs-1 address"><i class="fa fa-hand-o-right fa-product"></i></div>
                                                        <div class="col-xs-9 address">Ahmedabad</div>
                                                    </div>
                                                </div>
                                                <div class="meta-details clearfix">
                                                    <div class="col-xs-12 address">
                                                        <div class="col-xs-1 address"><i class="fa fa fa-map-signs fa-product"></i></div>
                                                        <div class="col-xs-9 address">3.5 KM</div>
                                                    </div>
                                                </div>
                                                <div class="meta-details clearfix">
                                                    <div class="col-xs-12 address address-info">
                                                        <div class="col-xs-1 address"><i class="fa fa fa-street-view fa-product"></i></div>
                                                        <div class="col-xs-5 address"><a href="#" class="link-view-map">View Map</a></div>
                                                        <div class="col-xs-1 address"></div>
                                                        <div class="col-xs-5 address">
                                                            <a href="#" class="btn btn-success btn-sm" style="float:right">
                                                                <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                                                Add to plan
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </article>
                                    </div>--%>
                                   <%-- <div class="col-md-3 col-sm-6 col-xs-12 product-card">
                                        <article class="card">
                                            <a href="destination-parent.html" class="featured-image" style="background-image: url(assets/images/featured-destination-1.jpg)">
                                                <div class="featured-img-inner">
                                                </div>
                                            </a>
                                            <div class="card-details">
                                                <h5 class="card-title">Sydney, Australia <span class="product-rating"><i class="fa fa-star fa-icon-product"></i><span>4.7</span></span></h5>
                                                <div class="meta-details clearfix">
                                                    <div class="col-xs-12 address">
                                                        <div class="col-xs-1 address"><i class="fa fa-map-marker fa-product"></i></div>
                                                        <div class="col-xs-9 address">Ahmedabad</div>
                                                    </div>
                                                </div>
                                                <div class="meta-details clearfix">
                                                    <div class="col-xs-12 address">
                                                        <div class="col-xs-1 address"><i class="fa fa-hand-o-right fa-product"></i></div>
                                                        <div class="col-xs-9 address">Ahmedabad</div>
                                                    </div>
                                                </div>
                                                <div class="meta-details clearfix">
                                                    <div class="col-xs-12 address">
                                                        <div class="col-xs-1 address"><i class="fa fa fa-map-signs fa-product"></i></div>
                                                        <div class="col-xs-9 address">3.5 KM</div>
                                                    </div>
                                                </div>
                                                <div class="meta-details clearfix">
                                                    <div class="col-xs-12 address address-info">
                                                        <div class="col-xs-1 address"><i class="fa fa fa-street-view fa-product"></i></div>
                                                        <div class="col-xs-5 address"><a href="#" class="link-view-map">View Map</a></div>
                                                        <a href="#" class="btn btn-success btn-sm" style="float:right">
                                                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                                            Add to plan
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class="col-md-3 col-sm-6 col-xs-12 product-card">
                                        <article class="card">
                                            <a href="destination-parent.html" class="featured-image" style="background-image: url(assets/images/featured-destination-1.jpg)">
                                                <div class="featured-img-inner">
                                                </div>
                                            </a>
                                            <div class="card-details">
                                                <h5 class="card-title">Sydney, Australia <span class="product-rating"><i class="fa fa-star fa-icon-product"></i><span>4.7</span></span></h5>
                                                <div class="meta-details clearfix">
                                                    <div class="col-xs-12 address">
                                                        <div class="col-xs-1 address"><i class="fa fa-map-marker fa-product"></i></div>
                                                        <div class="col-xs-9 address">Ahmedabad</div>
                                                    </div>
                                                </div>
                                                <div class="meta-details clearfix">
                                                    <div class="col-xs-12 address">
                                                        <div class="col-xs-1 address"><i class="fa fa-hand-o-right fa-product"></i></div>
                                                        <div class="col-xs-9 address">Ahmedabad</div>
                                                    </div>
                                                </div>
                                                <div class="meta-details clearfix">
                                                    <div class="col-xs-12 address">
                                                        <div class="col-xs-1 address"><i class="fa fa fa-map-signs fa-product"></i></div>
                                                        <div class="col-xs-9 address">3.5 KM</div>
                                                    </div>
                                                </div>
                                                <div class="meta-details clearfix">
                                                    <div class="col-xs-12 address address-info">
                                                        <div class="col-xs-1 address"><i class="fa fa fa-street-view fa-product"></i></div>
                                                        <div class="col-xs-5 address"><a href="#" class="link-view-map">View Map</a></div>
                                                        <a href="#" class="btn btn-success btn-sm" style="float:right">
                                                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                                            Add to plan
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </article>
                                    </div>
                                    <div class="col-md-3 col-sm-6 col-xs-12 product-card">
                                        <article class="card">
                                            <a href="destination-parent.html" class="featured-image" style="background-image: url(assets/images/featured-destination-1.jpg)">
                                                <div class="featured-img-inner">
                                                </div>
                                            </a>
                                            <div class="card-details">
                                                <h5 class="card-title">S.G. Highway, Ahmedabad <span class="product-rating"><i class="fa fa-star fa-icon-product"></i><span>4.7</span></span></h5>
                                                <div class="meta-details clearfix">
                                                    <div class="col-xs-12 address">
                                                        <div class="col-xs-1 address"><i class="fa fa-map-marker fa-product"></i></div>
                                                        <div class="col-xs-9 address">Ahmedabad</div>
                                                    </div>
                                                </div>
                                                <div class="meta-details clearfix">
                                                    <div class="col-xs-12 address">
                                                        <div class="col-xs-1 address"><i class="fa fa-hand-o-right fa-product"></i></div>
                                                        <div class="col-xs-9 address">Ahmedabad</div>
                                                    </div>
                                                </div>
                                                <div class="meta-details clearfix">
                                                    <div class="col-xs-12 address">
                                                        <div class="col-xs-1 address"><i class="fa fa fa-map-signs fa-product"></i></div>
                                                        <div class="col-xs-9 address">3.5 KM</div>
                                                    </div>
                                                </div>
                                                <div class="meta-details clearfix">
                                                    <div class="col-xs-12 address address-info">
                                                        <div class="col-xs-1 address"><i class="fa fa fa-street-view fa-product"></i></div>
                                                        <div class="col-xs-5 address"><a href="#" class="link-view-map">View Map</a></div>
                                                        <a href="#" class="btn btn-success btn-sm" style="float:right">
                                                            <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                                            Add to plan
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </article>
                                    </div>--%>
                                </div>

                            </div>
                        </div>
                    </section>
                    <div class="popup-details popup col-lg-10 col-lg-offset-1">
                        <div class="col-lg-12">
                            <div class="row">
                                <div class="col-lg-7" id="carousal">
                                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                        <ol class="carousel-indicators">
                                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                            <li data-target="#myCarousel" data-slide-to="1"></li>
                                            <li data-target="#myCarousel" data-slide-to="2"></li>
                                        </ol>
                                        <div class="carousel-inner">
                                            <div class="item active">
                                                <img src="assets/images/destination-5.jpg" alt="Los Angeles" style="width:100%;">
                                            </div>

                                            <div class="item">
                                                <img src="assets/images/destination-2.jpg" alt="Chicago" style="width:100%;">
                                            </div>

                                            <div class="item">
                                                <img src="assets/images/destination-1.jpg" alt="New york" style="width:100%;">
                                            </div>
                                        </div>
                                        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                                            <span class="fa fa-arrow-circle-left"></span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        <a class="right carousel-control" href="#myCarousel" data-slide="next">
                                            <span class="fa fa-arrow-circle-right"></span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-lg-5">
                                    <div id="map-canvas"></div>
                                </div>
                            </div>
                            <div class="row" id="panel-detailed-info">
                                <div class="col-lg-12">
                                    <article class="card">
                                        <a href="destination-parent.html" class="featured-image" style="background-image: url(assets/images/featured-destination-1.jpg)">
                                            <div class="featured-img-inner">
                                            </div>
                                        </a>
                                        <div class="card-details">
                                            <h5 id="PopName" class="card-title">S.G. Highway, Ahmedabad <span class="product-rating"><i class="fa fa-star fa-icon-product"></i><span>4.7</span></span></h5>
                                            <div class="meta-details clearfix">
                                                <div class="col-xs-12 address">
                                                    <div class="col-xs-9 address"><i class="fa fa-map-marker fa-product"></i>&nbsp; <label id="PopAddress"></label></div>
                                                </div>
                                            </div>
                                            <div class="meta-details clearfix">
                                                <div class="col-xs-12 address">
                                                    <div class="col-xs-9 address"><i class="fa fa-phone fa-product"></i>&nbsp; <label id="PopPhoneNo"></label></div>
                                                </div>
                                            </div>
                                            <div class="meta-details clearfix">
                                                <div class="col-xs-12 address">
                                                    <div class="col-xs-9 address"><i class="fa fa fa fa-map-signs fa-product"></i>&nbsp; <label id="PopDistance"></label></div>
                                                </div>
                                            </div>
                                            <div class="meta-details clearfix">
                                                <div class="col-xs-12 address">
                                                    <a href="#" class="btn btn-success btn-sm" style="float:right">
                                                        <i class="fa fa-check-square-o" aria-hidden="true"></i>
                                                        Add to plan
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </article>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/go.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/activity.js"></script>
	 <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD0fPpls3aZiy6J9rH6DJFzqN7xhkSH0p0"></script>
    <script type="text/javascript">
        function OnchangeTab(CategoryID) {
            document.getElementById("hdnCategoryId").value = CategoryID;;
            document.getElementById("btnHidden").click();
        }
    </script>
</body>
</html>
