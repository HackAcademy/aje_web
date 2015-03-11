//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require jquery.nicescroll
$(document).ready(function(){
  $("html").niceScroll();
  $(window).scroll(function(){
    $("body").niceScroll(); 
  });
});

$(window).on('scroll', function(){
  var nav = $('#scroll-nav');
  if($(window).scrollTop() > 13){
    nav.addClass('nav-t');
    nav.removeClass('nav-b');
  }else {
    nav.addClass('nav-b');
    nav.removeClass('nav-t');
  }
});