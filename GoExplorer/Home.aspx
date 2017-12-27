<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="GoExplorer.Home" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>My Day Out</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="assets/css/imports.css" media="screen">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css" media="screen">
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/owl-carousel.css" media="screen">
    <link href="assets/css/responsive.css" rel="stylesheet" media="screen" />
    <link href="assets/css/jquery-ui.css" rel="stylesheet" />
    <link href="assets/css/melon.datepicker.css" rel="stylesheet" />
    <link href="assets/css/google.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="home">
    <div id="top"></div>
    <div class="navbar-wrapper">
        <header class="navbar navbar-default navbar-fixed-top" id="MainMenu">
            <div class="navbar-extra-top clearfix">
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
    <section class="hero hero-overlap" style="background-image: url('assets/images/006_cube_equi.jpg');">
        <!--<section class="hero hero-overlap">-->
        <div class="bg-overlay">
            <div class="container">
                <div class="row no-pad">
                    <div class="intro-wrap col-lg-offset-1 col-md-offset-1">
                        <div class="row quotes">
                            <h1 class="intro-title">Travel brings power and love back into your life</h1>
                            <div class="intro-text">Jalaluddin Mevlana Rumi</div>
                        </div>
                        <div class="row no-pad">
                            <form runat="server" class="center-search col-sm-offset-1 col-md-offset-0 col-xs-offset-1">
                                <div class="row no-pad">
                                    <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 form-ctrl">
                                        <input type="text" runat="server" placeholder="Select day" id="selectDate">
                                    </div>
                                    <div class="col-lg-8 col-md-7 col-sm-12 col-xs-12 form-ctrl">
                                        <div class="input-group">
                                            <input id="pac-input" class="form-control" type="text" placeholder="Enter a location">
                                            <div class="input-group-btn">
                                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Ahmedabad </button>
                                                <%--<ul class="dropdown-menu dropdown-menu-right">
                                                    <li><a href="#">Surat</a></li>
                                                    <li><a href="#">Baroda</a></li>
                                                </ul>--%>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-1 col-md-1 col-sm-12 col-xs-12 form-ctrl">
                                        <button type="button" runat="server" id="btnMakeDay" onserverclick="btnMakeDay_Click" class="btn btn-default" style="border-radius: 1rem;">Make my day</button>
                                        <input type="hidden" runat="server" id="hdnLat" />
                                        <input type="hidden" runat="server" id="hdnLog" />
                                        <input type="hidden" runat="server" id="hdnDate" />
                                        <input type="hidden" runat="server" id="hdnLocationName" />
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div id="type-selector" class="pac-controls" style="z-index: 1; position: absolute; display: none;">
        <input type="radio" name="type" id="changetype-all" checked="checked">
        <label for="changetype-all">All</label>

        <input type="radio" name="type" id="changetype-establishment">
        <label for="changetype-establishment">Establishments</label>

        <input type="radio" name="type" id="changetype-address">
        <label for="changetype-address">Addresses</label>

        <input type="radio" name="type" id="changetype-geocode">
        <label for="changetype-geocode">Geocodes</label>
    </div>
    <div id="strict-bounds-selector" class="pac-controls" style="z-index: 1; position: absolute; display: none;">
        <input type="checkbox" id="use-strict-bounds" value="">
        <label for="use-strict-bounds">Strict Bounds</label>
    </div>
    <div class="pac-card" id="pac-card" style="z-index: 1; position: absolute; display: none;">
    </div>
    <div id="map"></div>
    <div id="infowindow-content" style="z-index: 1; position: absolute; display: none;">
        <img src="" width="16" height="16" id="place-icon">
        <span id="place-name" class="title"></span>
        <br>
        <span id="place-address"></span>
    </div>
    <section class="featured-destinations">
        <div class="container">
            <div class="cards overlap">
                <div class="title-row">
                    <h3 class="title-entry">Featured Destinations</h3>
                    <a href="destinations-list.html" class="btn btn-primary btn-xs">Find More &nbsp; <i class="fa fa-angle-right"></i></a>
                </div>
                <div class="row">
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <article class="card">
                            <a href="destination-parent.html" class="featured-image" style="background-image: url(assets/images/featured-destination-1.jpg)">
                                <div class="featured-img-inner"></div>
                            </a>
                            <div class="card-details">
                                <h4 class="card-title"><a href="destination-parent.html">Sydney, Australia</a></h4>
                                <div class="meta-details clearfix">
                                    <ul class="hierarchy">
                                        <li class="symbol"><i class="fa fa-map-marker"></i></li>
                                        <li><a href="destination-parent.html">Oceania</a></li>
                                    </ul>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <article class="card">
                            <a href="destination-parent.html" class="featured-image" style="background-image: url(assets/images/featured-destination-2.jpg)">
                                <div class="featured-img-inner"></div>
                            </a>
                            <div class="card-details">
                                <h4 class="card-title"><a href="destination-parent.html">Yellowstone, USA</a></h4>
                                <div class="meta-details clearfix">
                                    <ul class="hierarchy">
                                        <li class="symbol"><i class="fa fa-map-marker"></i></li>
                                        <li><a href="destination-parent.html">North America</a></li>
                                    </ul>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <article class="card">
                            <a href="destination-parent.html" class="featured-image" style="background-image: url(assets/images/featured-destination-3.jpg)">
                                <div class="featured-img-inner"></div>
                            </a>
                            <div class="card-details">
                                <h4 class="card-title"><a href="destination-parent.html">Queenstown, New Zealand</a></h4>
                                <div class="meta-details clearfix">
                                    <ul class="hierarchy">
                                        <li class="symbol"><i class="fa fa-map-marker"></i></li>
                                        <li><a href="destination-parent.html">Oceania</a></li>
                                    </ul>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <article class="card">
                            <a href="destination-parent.html" class="featured-image" style="background-image: url(assets/images/featured-destination-4.jpg)">
                                <div class="featured-img-inner"></div>
                            </a>
                            <div class="card-details">
                                <h4 class="card-title"><a href="destination-parent.html">Zermatt, Switzerland</a></h4>
                                <div class="meta-details clearfix">
                                    <ul class="hierarchy">
                                        <li class="symbol"><i class="fa fa-map-marker"></i></li>
                                        <li><a href="destination-parent.html">Europe</a></li>
                                    </ul>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="regular">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-4">
                    <figure style="text-align: center">
                        <img src="assets/images/logo-symbol-complex-colors.png" alt="GoExplore!" width="387" height="214">
                    </figure>
                </div>
                <div class="col-md-10 col-md-offset-1 col-lg-8 col-lg-offset-0">

                    <div class="col-md-12 col-lg-10 col-lg-offset-1">
                        <h3 style="text-align: center;"><em>Contact us</em></h3>
                    </div>
                    <div class="col-sm-12">
                        <form class="big-search">
                            <div class="input-group">
                                <input type="text" placeholder="Find something awesome and joyful!">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">Go!</button>
                                </span>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/app.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src="assets/js/jquery-ui.js"></script>
    <script>
        $(document).ready(function () {
            $("#selectDate").datepicker();
            var availableTags = ["Chinese food", "Continental food", "Punjabi food", "Movies", "Show", "Activity", "Concerts", "Events"];
            $("#findGreat").autocomplete({
                source: availableTags
            });
            setTimeout(function () { hideMap(); }, 400);
        });
        function hideMap() {
            $("#map").css({ 'position': 'absolute', 'top': '0' });
        }
        var map, infoWindow;
        function initMaps() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: 23.033863, lng: 72.585022 },
                zoom: 6
            });
            infoWindow = new google.maps.InfoWindow;

            // Try HTML5 geolocation.
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function (position) {
                    var pos = {
                        lat: position.coords.latitude,
                        lng: position.coords.longitude
                    };
                    $('#hdnLat').val(pos.lat)
                    $('#hdnLog').val(pos.lng)
                    alert($('#hdnLat').val());
                    alert($('#hdnLog').val());
                    codeLatLng(pos.lat, pos.lng);
                    infoWindow.setPosition(pos);
                    infoWindow.setContent('Location found.');
                    infoWindow.open(map);
                    map.setCenter(pos);
                }, function () {
                    handleLocationError(true, infoWindow, map.getCenter());
                });
            } else {
                // Browser doesn't support Geolocation
                handleLocationError(false, infoWindow, map.getCenter());
            }
        }
        function codeLatLng(lat, lng) {
            var geocoder;
            geocoder = new google.maps.Geocoder();
            var latlng = new google.maps.LatLng(lat, lng);
            geocoder.geocode({ 'latLng': latlng }, function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    //console.log(results)
                    if (results[1]) {
                        //formatted address
                        //alert(results[0].formatted_address)
                        //find country name
                        for (var i = 0; i < results[0].address_components.length; i++) {
                            for (var b = 0; b < results[0].address_components[i].types.length; b++) {

                                //there are different types that might hold a city admin_area_lvl_1 usually does in come cases looking for sublocality type will be more appropriate
                                if (results[0].address_components[i].types[b] == "administrative_area_level_1") {
                                    //this is the object you are looking for
                                    city = results[0].address_components[i];
                                    break;
                                }
                            }
                        }
                        //city data
                        //alert(city.short_name + " " + city.long_name)
                        $("#pac-input").val(results[0].address_components[1].long_name + ', ' + results[0].address_components[2].long_name + ', ' + results[0].address_components[3].long_name);
                        $("hdnLocationName").val(results[0].address_components[1].long_name + ', ' + results[0].address_components[2].long_name + ', ' + results[0].address_components[3].long_name);
                    } else {
                        //alert("No results found");
                    }
                } else {
                    //alert("Geocoder failed due to: " + status);
                }
            });
        }
        function handleLocationError(browserHasGeolocation, infoWindow, pos) {
            infoWindow.setPosition(pos);
            infoWindow.setContent(browserHasGeolocation ?
                                  'Error: The Geolocation service failed.' :
                                  'Error: Your browser doesn\'t support geolocation.');
            infoWindow.open(map);
        }
    </script>
    <script>
        function MakeDay() {
            //var hdnLat = $('hdnLat').val();
            //alert(hdnLat);
            //var hdnLog = $('hdnLog').val();
            //var hdnDate = $('hdnDate').val();
            //var LocationName = $('LocationName').val();
            //window.location.href = 'Category.aspx';
        }
        function initMap() {
            initMaps();
            var map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: 23.033863, lng: 72.585022 },
                zoom: 13
            });
            var card = document.getElementById('pac-card');
            var input = document.getElementById('pac-input');
            var types = document.getElementById('type-selector');
            var strictBounds = document.getElementById('strict-bounds-selector');

            map.controls[google.maps.ControlPosition.TOP_RIGHT].push(card);

            var autocomplete = new google.maps.places.Autocomplete(input);

            // Bind the map's bounds (viewport) property to the autocomplete object,
            // so that the autocomplete requests use the current map bounds for the
            // bounds option in the request.
            autocomplete.bindTo('bounds', map);

            var infowindow = new google.maps.InfoWindow();
            var infowindowContent = document.getElementById('infowindow-content');
            infowindow.setContent(infowindowContent);
            var marker = new google.maps.Marker({
                map: map,
                anchorPoint: new google.maps.Point(0, -29)
            });

            autocomplete.addListener('place_changed', function () {
                infowindow.close();
                marker.setVisible(false);
                var place = autocomplete.getPlace();
                if (!place.geometry) {
                    // User entered the name of a Place that was not suggested and
                    // pressed the Enter key, or the Place Details request failed.
                    //window.alert("No details available for input: '" + place.name + "'");
                    return;
                }

                // If the place has a geometry, then present it on a map.
                if (place.geometry.viewport) {
                    map.fitBounds(place.geometry.viewport);
                    $('#hdnLat').val(place.geometry.viewport.f.b);
                    $('#hdnLog').val(place.geometry.viewport.b.f);
                } else {
                    map.setCenter(place.geometry.location);
                    map.setZoom(17);  // Why 17? Because it looks good.
                }
                marker.setPosition(place.geometry.location);
                marker.setVisible(true);

                var address = '';
                if (place.address_components) {
                    address = [
                      (place.address_components[0] && place.address_components[0].short_name || ''),
                      (place.address_components[1] && place.address_components[1].short_name || ''),
                      (place.address_components[2] && place.address_components[2].short_name || '')
                    ].join(' ');
                }

                infowindowContent.children['place-icon'].src = place.icon;
                infowindowContent.children['place-name'].textContent = place.name;
                infowindowContent.children['place-address'].textContent = address;
                infowindow.open(map, marker);
            });

            // Sets a listener on a radio button to change the filter type on Places
            // Autocomplete.
            function setupClickListener(id, types) {
                var radioButton = document.getElementById(id);
                radioButton.addEventListener('click', function () {
                    autocomplete.setTypes(types);
                });
            }

            setupClickListener('changetype-all', []);
            setupClickListener('changetype-address', ['address']);
            setupClickListener('changetype-establishment', ['establishment']);
            setupClickListener('changetype-geocode', ['geocode']);
            autocomplete.setOptions({ strictBounds: true });
            //document.getElementById('use-strict-bounds')
            //    .addEventListener('click', function () {
            //        console.log('Checkbox clicked! New state=' + this.checked);
            //        autocomplete.setOptions({ strictBounds: this.checked });
            //    });
        }
    </script>
    <!--<script src="assets/js/getLocation.js"></script>
    <script src="assets/js/getSearch.js"></script>-->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD0fPpls3aZiy6J9rH6DJFzqN7xhkSH0p0&libraries=places&callback=initMap"></script>
</body>
</html>
