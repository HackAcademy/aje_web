// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
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

$(document).ready(function() {

	var nav = $('#scroll-nav')
	var nav_offset = nav.offset();

  $(window).on('scroll', function() {
  	
  	if($(window).scrollTop() > nav_offset.top) {
  		nav.addClass('nav-t');
  		nav.removeClass('nav-b');
  	} else {
  		nav.addClass('nav-b');
  		nav.removeClass('nav-t');
  	}

  });

});

