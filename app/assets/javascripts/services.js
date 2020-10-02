$(document).ready(function(){
    $('.service-item-wrapper').on('mouseover', function(){
        $(this).addClass('img-darken');
    });
    $('.service-item-wrapper').on('mouseout', function(){
        $(this).removeClass('img-darken');
    });
});