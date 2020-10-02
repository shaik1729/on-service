$(document).ready(function(){
  $(".selected").on('click', function(){
    $(".options-container").toggleClass('active');
  });

  $(".option").on('click', function(){
    $('.selected').html($(this).find('label').html());
    $(".options-container").removeClass('active');
    location.href = "/mechanics?location="+$(this).find('label').html();
  });
});