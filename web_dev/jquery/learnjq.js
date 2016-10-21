$(document).ready(function(){

  $('p').css('border', '4px solid red');

  $('#lizard-photo').slideUp(500).slideDown(500);

  $('button').hover(function(){
    $(this).fadeOut(500).fadeIn(1500);
  });

  $('button').click(function(){
    $(this).css('background-color', 'red');
  });

});
