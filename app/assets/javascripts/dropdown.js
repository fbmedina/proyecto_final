$(document).on("page:change", function() {
	$('.myMenu ul li').click(function() {
		$(this).children('ul').slideToggle(250);
	});
});