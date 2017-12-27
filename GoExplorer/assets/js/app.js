$(document).ready(function () {
    var windowHeight = $(window).height();
    var navbarHeight = $('.navbar').height();
    $(".hero .category").css({ 'height': (windowHeight - (navbarHeight + 200)) + "px", 'margin-top': 0 + "px" });
    $(".hero .container").css({ 'height': (windowHeight-200) + "px" });
});