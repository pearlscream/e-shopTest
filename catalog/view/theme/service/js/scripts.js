function toggleResponsiveMenu() {
	$('.menu-trigger').toggleClass('open');
	$('.responsive-menu-body').toggleClass('open');

}
function fixInput() {
	$('.cme-txt[name="Email "]').removeClass('input-name').addClass('input-email');
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



var certificates = $('.certificates-lightbox .certificate');
for (var i = 0; i < certificates.length; i++) {
	var href = $(certificates[i]).find('img').attr('src');
	$(certificates[i]).attr('href', href);
}

$('.certificates').find('a.certificate').colorbox({rel:'gal'});

	
	var myLatlng = new google.maps.LatLng(50.4110228, 30.3831262);
	var myOptions = {
		zoom: 18,
		center: myLatlng,
		scrollwheel: false,
		mapTypeId: google.maps.MapTypeId.HYBRID
	}
	var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions); 
	var image = '/catalog/view/theme/service/image/logo-for-map.png';
  
	var marker = new google.maps.Marker({
		position: myLatlng,
		map: map,
		icon: image
	});
})
