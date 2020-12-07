//= link_tree ../images
//= link_directory ../stylesheets .css

$(document).ready(function() {
    $(".dropdown-toggle").dropdown();
});

// $(document).ready(function(){
//     $('nav-link .dropdown-toggle').hover(function() {
//         $(this).find('.dropdown-item').first().stop(true, true).delay(250).slideDown();
//     }, function() {
//         $(this).find('.dropdown-item').first().stop(true, true).delay(100).slideUp()
//     });
// n})