$(document).on('ready', function() {
    console.log('Is this working at all?')
    $('#nav-toggle').on('click', function(e) {
    e.preventDefault();
    $(this).toggleClass('is-open');
    $('.sidebar').toggleClass('is-open');
  }); // end of #nav-toggle

  var result = $('#notice').html() // target the html inside the notice id
  if (result) { $('#myModal').modal('show')
} // end of modal show

  if (result) { $('#notice').hide();

  }

  // spinning animate for slide background
$.fn.animateRotate = function(angle, duration, easing, complete) {
 var args = $.speed(duration, easing, complete);
 var step = args.step;
 return this.each(function(i, e) {
     args.step = function(now) {
         $.style(e, 'transform', 'rotate(' + now + 'deg)');
         if (step) return step.apply(this, arguments);
     }; // end of args.step

     $({deg: 0}).animate({deg: angle}, args);
 }); // end of this.each
}; // end of $.fn.animateRotate

$(function(){
 $(document).ready(function(){
     $(".background-mission-slide").animateRotate(917, 4000, "swing", function(){
         console.log(this); //this is supposed to be the DOM node, but it isn't
     }); // end of .background-mission-slide

 }); // end of 2nd document ready

}); // end of function


}); // end of 1st document ready




// fade in modal window
 // $('.taskname').on('click', function(){
 // $('.modal').fadeIn('slow');
 // console.log('JIJIJIJIJI');
 // });

// // fade out modal window
//   $('button.close').on('click', function(){
//     $('.modal').fadeOut('slow');
//   });

// // add .errorClass to both input elements
//   $('button.submit').on('click', function(e){
//     $('input').addClass('error');
//     e.stopPropagation();
//   });

// // remove errorClass when user puts cursor in one of input fields
//   $('input').on('click', function(e){
//     $(this).removeClass('error');
//     e.stopPropagation();
//   });

// // Bonus: Allow the user to click the .modal to close itself
//   $('.modal').on('click', function(){
//     $(this).fadeOut('slow');
//   });
