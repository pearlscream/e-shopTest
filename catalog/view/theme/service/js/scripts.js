function toggleResponsiveMenu() {
	$('.menu-trigger').toggleClass('open');
	$('.responsive-menu-body').toggleClass('open');

}


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

