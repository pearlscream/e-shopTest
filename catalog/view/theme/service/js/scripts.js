
function showMore() {
	var search = window.location.search.substr(1),
	keys = {};
      
	search.split('&').forEach(function(item) {
		item = item.split('=');
		keys[item[0]] = item[1];
	});
	console.log(keys['limit'])
	$.ajax({ 
		url: 'http://shop/index.php?route=product/category1&path=67_70_75&limit=1&lines=0&page=2', // указываем URL и 
		dataType : "html", // тип загружаемых данных 
		success: function(data){ 
		var text = $(data); 
		text = text.find('.product-list').html(); 
		я$(text).insertAfter( ".product-list" ); 
		} 
	});
}

$('button.add-to-comparison').click(function(){
	$(this).addClass('active');
})
function addFieldsToPopup(productName = '', productUrl = '') {
	if (productName) {
		$('#cme-form-main').find('.cme-fields').append('<span><input type="hidden" name="Название товара:" value="' + productName +' "><span>');
	}
	if (productUrl) {
		$('#cme-form-main').find('.cme-fields').append('<span><input type="hidden" name="Ссылка на товар:" value="' + productUrl +' "><span>');
	}
}
function hideFilterBody() {
	$('.filter-body').toggleClass('body-hidden');
	$('.hr-hide').toggleClass('body-hidden');
}
$('.sliding-checkbox').find('label').click(function() {
	// console.log($(this))
	$(this).parent().find('.first-unit').toggleClass('active-unit');
	$(this).parent().find('.second-unit').toggleClass('active-unit');
});

$('.popup-cross').click(function() { 
	$('#cme-back').click();
})

$('.get-price .callme_viewform').click(function() {
	var formIdInput = '<span><input name="Имя формы:" value="узнать цену" type="hidden"><span>';
	var executionType = $('.get-price input[type=radio]:checked + label').text();
	var executionTypeInput = '<span><input name="Вид исполнения:" value="' + executionType + '" type="hidden"><span>'
	var productName = $('.product-main-title').text();
	var productNameInput = '<span><input type="hidden" name="Название товара:" value="' + productName +' "><span>';
	$('#cme-form-main').find('.cme-fields').append(formIdInput);
	$('#cme-form-main').find('.cme-fields').append(productNameInput);
	$('#cme-form-main').find('.cme-fields').append(executionTypeInput);
});

$('.productline-layout .callme_viewform').click(function() {
	var formIdInput = '<span><input name="Имя формы:" value="узнать цену главного товара линейки" type="hidden"><span>';
	var productName = $('.konan-table tr:first-child > td:first-child').text();
	var productNameInput = '<span><input type="hidden" name="Название товара:" value="' + productName +' "><span>';
	$('#cme-form-main').find('.cme-fields').append(formIdInput);
	$('#cme-form-main').find('.cme-fields').append(productNameInput);
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

// FILTER FIELDS CALCULATION FUNCTIONS
// FILTER FIELDS CALCULATION FUNCTIONS
// FILTER FIELDS CALCULATION FUNCTIONS
function ceilAllFields() {
	document.getElementById('reserve-power').value = Math.ceil(document.getElementById('reserve-power').value);
	document.getElementById('current').value = Math.ceil(document.getElementById('current').value);
	document.getElementById('main-power').value = Math.ceil(document.getElementById('main-power').value); 	
} 
function calculateMainPower() {
	currentField = document.getElementById('main-power');
	if ($("#measure-unit-1").is(':checked')) {
		nominal = currentField.value;
	} else {
		nominal = currentField.value * 0.8;
	}

	if ($("#measure-unit-2").is(':checked')) {
		document.getElementById('reserve-power').value = 1.1 * nominal;
	} else {
		document.getElementById('reserve-power').value = nominal / 0.8 * 1.1;
	}
	document.getElementById('current').value = 1.8 * nominal;

	ceilAllFields();
}

function calculateReservePower(nominal = 0) {
	currentField = document.getElementById('reserve-power');
	if ($("#measure-unit-2").is(':checked')) {
		nominal = currentField.value / 1.1;
	} else {
		nominal = 0.8 * currentField.value / 1.1;
	}

	if ($("#measure-unit-1").is(':checked')) {
		document.getElementById('main-power').value = nominal;
	} else {
		document.getElementById('main-power').value = nominal / 0.8;
	}
	document.getElementById('current').value = 1.8 * nominal;

	ceilAllFields();
}

function calculateCurrent(nominal = 0) {
	currentField = document.getElementById('current');

	nominal = currentField.value / 1.8;
	if ($("#measure-unit-1").is(':checked')) {
		document.getElementById('main-power').value = nominal;
	} else {
		document.getElementById('main-power').value = nominal / 0.8;
	}

	if ($("#measure-unit-2").is(':checked')) {
		document.getElementById('reserve-power').value = 1.1 * nominal;
	} else {
		document.getElementById('reserve-power').value = nominal / 0.8 * 1.1;
	}

	ceilAllFields();
}

function recalculateFields() {
	var nominal = document.getElementById('main-power').value;
	console.log(nominal)
	calculateMainPower();
	calculateReservePower(nominal);
	calculateCurrent(nominal);
}

function changeValue1() {
	if ($("#measure-unit-1").is(':checked')) {
		document.getElementById('main-power').value = nominal;
	} else {
		document.getElementById('main-power').value = nominal / 0.8;
	}
}

function changeValue2() {
	if ($("#measure-unit-2").is(':checked')) {
		document.getElementById('reserve-power').value = 1.1 * nominal;
	} else {
		document.getElementById('reserve-power').value = nominal / 0.8 * 1.1;
	}
}

// FILTER FIELDS CALCULATION FUNCTIONS END
// FILTER FIELDS CALCULATION FUNCTIONS END
// FILTER FIELDS CALCULATION FUNCTIONS END

// FILTER FILEDS LISTENTERS 
// FILTER FILEDS LISTENTERS 
// FILTER FILEDS LISTENTERS 

document.getElementById('main-power').addEventListener('input', calculateMainPower);
document.getElementById('reserve-power').addEventListener('input', calculateReservePower);
document.getElementById('current').addEventListener('input', calculateCurrent);

$('#measure-unit-1').click(changeValue1);
$('#measure-unit-2').click(changeValue2);

// FILTER FILEDS LISTENTERS END
// FILTER FILEDS LISTENTERS END
// FILTER FILEDS LISTENTERS END


