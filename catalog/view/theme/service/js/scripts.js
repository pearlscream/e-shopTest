$( document ).ready( function() {
	// $('button').trigger('mouseover');
})


	var certificates = $('.certificates-lightbox .certificate');
	for (var i = 0; i < certificates.length; i++) {
		var href = $(certificates[i]).find('img').attr('src');
		$(certificates[i]).attr('href', href);
	}

	$('.certificates').find('a.certificate').colorbox({rel:'gal'});

	
	
