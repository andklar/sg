$(document).on('ready', function() {
    console.log('Is this working at all?')
    $('#nav-toggle').on('click', function(e) {
    e.preventDefault();
    $(this).toggleClass('is-open');
    $('.sidebar').toggleClass('is-open');
  });

  var result = $('#notice').html() // target the html inside the notice id
  if (result) { $('#myModal').modal('show')
  }
  if (result) { $('#notice').hide();

  }

});




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
