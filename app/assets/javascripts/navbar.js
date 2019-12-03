$(window).scroll(function() {
  if ($(document).scrollTop() > 15) {
    $('#navbarlanding').addClass('color-change');
  } else if ($(document).scrollTop() === 0) {
    $('#navbarlanding').removeClass('color-change');
  }
});

