$(document).on('ready', function() {
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
