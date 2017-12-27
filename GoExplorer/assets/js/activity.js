/// <reference path="jquery.min.js" />
var selectedOption;
$(document).ready(function () {
    var windowHeight = $(window).height();
    var navbarHeight = $('.navbar').height();
    var queryString = window.location.href;
    selectedOption = GetParameterValues('category');
    $(".hero .category").css({ 'height': 55 + "px", 'margin-top': navbarHeight + "px" });
    $(".hero .info-container").css({ 'min-height': (windowHeight - (navbarHeight + 55)) + "px", 'height': 100 + "%" });
    $(".hero .container").css({ 'height': 100 + "%" });
    $(".hero .popup").css({ 'margin-top': navbarHeight + "px" });
    activateCurrent();
    activeOnSelection();
    openMap();
    curousal();
    loadCityMap();
});
function GetParameterValues(param) {
    var url = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for (var i = 0; i < url.length; i++) {
        var urlparam = url[i].split('=');
        if (urlparam[0] == param) {
            return urlparam[1];
        }
    }
}
function activateCurrent() {
    $('.category').click(function () {
        $('.fa-icon').removeClass('active-link');
        $('.category').removeClass('active-division');
        $(this).find('.fa-icon').addClass('active-link');
        $(this).addClass('active-division');
    });
}
function activeOnSelection() {
    switch (selectedOption) {
        case "Food":
            $('.category').find('.fa-icon').eq(0).addClass('active-link');
            $('.category').eq(0).addClass('active-division');
            break;
        case "Places to Visit":
            $('.category').find('.fa-icon').eq(1).addClass('active-link');
            $('.category').eq(1).addClass('active-division');
            break;
        case "Activities":
            $('.category').find('.fa-icon').eq(2).addClass('active-link');
            $('.category').eq(2).addClass('active-division');
            break;
        case "Events":
            $('.category').find('.fa-icon').eq(3).addClass('active-link');
            $('.category').eq(3).addClass('active-division');
            break;
        case "Shopping":
            $('.category').find('.fa-icon').eq(4).addClass('active-link');
            $('.category').eq(4).addClass('active-division');
            break;
        case "Resorts":
            $('.category').find('.fa-icon').eq(5).addClass('active-link');
            $('.category').eq(5).addClass('active-division');
            break;
        default:
            "defalt";
            break;

    }
}
function openMap() {
    $("body").find(".link-view-map").each(function () {
        $(this).click(function (e) {
            e.preventDefault();
            e.stopPropagation();
            var data = $("#hdnID0").val().split("@");
            $("body").find("#PopName").text(data[0]);
            $("body").find("#PopAddress").text(data[1]);
            $("body").find("#PopPhoneNo").text(data[5]);
            $("body").find("#PopDistance").text(data[4]);
            $('.popup-details').fadeIn();
        });
    });
    $(document).click(function () {
        $('.popup-details').fadeOut();
    });
    $('.popup-details').click(function (e) {
        e.stopPropagation();
    });
}
function curousal() {
    $('.carousel-control.left').click(function () {
        $('#myCarousel').carousel('prev');
    });

    $('.carousel-control.right').click(function () {
        $('#myCarousel').carousel('next');
    });
}
function loadCityMap() {

    //var storeArray = new Array(
    //  ["23.589242", "58.412586", "<p style='background:blue;color:white;padding:10px'> inner html in the page</p>"], ["23.628695", "58.266483", "ST2"], ["23.622155", "58.488977", "ST3"],
    //  ["23.239333", "58.312586", "ST4"], ["23.151933", "58.312586", "ST5"], ["23.609027", "58.538858", "ST6"], ["23.608280", "58.538343", "ST7"], ["23.607789", "58.538021", "ST8"], ["23.606412", "58.537399", "ST9"]);
    var storeArray = new Array(
      ["23.0225", "72.5714", "<p style='background:none;color:black;padding:10px'> Ahmedabad</p>"]);

    var myOptions = {
        center: new google.maps.LatLng(storeArray[0][0], storeArray[0][1]),
        zoom: 15,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    var map = new google.maps.Map(document.getElementById("map-canvas"), myOptions);

    function testmap() {
        for (i = 0; i < storeArray.length; i++) {
            marker = new google.maps.Marker({
                position: new google.maps.LatLng(storeArray[i][0], storeArray[i][1]),
                map: map
            });


            var infowindow = new google.maps.InfoWindow({
                content: storeArray[i][2]

            });
            infowindow.open(map, marker);

        }

    }
    google.maps.event.addDomListener(window, 'load', testmap);


    $('#myModal').on('shown.bs.modal', function () {
        var mapNode = map.getDiv();
        $('#map-canvas-modal').append(mapNode);
    })

}