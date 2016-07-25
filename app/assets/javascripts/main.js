$(document).on('ready', function() { 
 	  $('#nav-toggle').on('click', function(e) {
    e.preventDefault();
    $(this).toggleClass('is-open');
    $('.sidebar').toggleClass('is-open');
  });

});