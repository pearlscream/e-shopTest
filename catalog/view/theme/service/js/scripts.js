$( document ).ready( function() {
	// $('button').trigger('mouseover');
})


	var certificates = $('.certificates-lightbox .certificate');
	for (var i = 0; i < certificates.length; i++) {
		var href = $(certificates[i]).find('img').attr('src');
		$(certificates[i]).attr('href', href);
	}

	$('.certificates').find('a.certificate').colorbox({rel:'gal'});

	
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
