$(document).on("page:load ready", function() {
	$('.stores.new').ready(function () {
		var speed = '400';

		$('.accordion').click(function(event) {
			if (!$(this).hasClass('active')) {
				$('.show').slideUp(speed, function(){
					$(this).removeClass('show');
				});
				$(this).toggleClass('active').next().slideDown(speed, function() {
					$(this).toggleClass('show');
				});
			} else {
				$(this).toggleClass('active').next().slideUp(speed, function(){
					$(this).removeClass('show');
				});
			}
		});
	});

	$('.stores.edit').ready(function () {
		var speed = '400';

		$('.accordion').click(function(event) {
			if (!$(this).hasClass('active')) {
				$('.show').slideUp(speed, function(){
					$(this).removeClass('show');
				});
				$(this).toggleClass('active').next().slideDown(speed, function() {
					$(this).toggleClass('show');
				});
			} else {
				$(this).toggleClass('active').next().slideUp(speed, function(){
					$(this).removeClass('show');
				});
			}
		});
	});
});