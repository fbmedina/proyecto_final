$(document).on("page:load ready", function() {
	$('.pages.index').ready(function () {
		$('.bxslider').bxSlider({
		  minSlides: 3,
		  maxSlides: 3,
		  slideWidth: 170,
		  slideMargin: 0,
		  randomStart: true,
		  moveSlides: 1
		});
	});
});