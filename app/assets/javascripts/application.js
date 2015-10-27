//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require_tree .
//= require jquery.nicescroll

$(document).ready(function(){
  //$("html").niceScroll({
  //    cursorwidth: '8px',
  //    autohidemode: 'false'
  //});
  $(window).scroll(function(){
    $("body").niceScroll({
        cursorwidth: '8px',
        autohidemode: 'false'
    });
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

//= require turbolinks