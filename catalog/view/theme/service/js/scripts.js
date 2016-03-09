function toggleResponsiveMenu() {
	$('.menu-trigger').toggleClass('open');
	$('.responsive-menu-body').toggleClass('open');

}
function hideFilterHeader() {
	$('.filter-header').toggleClass('header-hidden')
	$('.hr-hide').toggleClass('header-hidden')
}
$('.sliding-checkbox').find('label').click(function() {
	// console.log($(this))
	$(this).parent().find('.first-unit').toggleClass('active-unit');
	$(this).parent().find('.second-unit').toggleClass('active-unit');
});
// (function fixFigures() {
// 	var figures = $('figure.borders');
// 	for (var i = 0; i < figures.length; i++) {
// 		var height = $(figures[i]).find('img').height();
// 		var width = $(figures[i]).find('img').width();
// 		$(figures[i]).height(height);
// 	}
// })()
  var comparisonSlider = new Swiper ('.comparison-swiper-container', {
	    breakpoints: {
	    // when window width is <= 320px
	    320: {
	      slidesPerView: 2,
	    },
	    // when window width is <= 480px
	    480: {
	      slidesPerView: 2,
	    },
	    // when window width is <= 640px
	    640: {
	      slidesPerView: 3,
	    },
	    800: {
	      slidesPerView: 5,
	    },
	    2000: {
	      slidesPerView: 6,
	    }
	},
	// width: 155,
    scrollbar: '.comparison-swiper-container .swiper-scrollbar',
  })       

$(document).ready(function() {
		var myLatlng = new google.maps.LatLng(50.4110228, 30.3831262);
	var myOptions = {
		zoom: 18,
		center: myLatlng,
		scrollwheel: false,
		mapTypeId: google.maps.MapTypeId.HYBRID
	}
	var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions); 
	var image = '/catalog/view/theme/service/image/dark-logo.jpg';
  
	var marker = new google.maps.Marker({
	position: myLatlng,
	map: map,
	icon: image
});

})

