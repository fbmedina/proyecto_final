$(document).on("page:load ready", function() {
	$('.stores.new').ready(function () {
	    $('.myButton').click(function() {
	      $('.dropDownField').slideToggle(250);
	    });

	    $('.myButton2').click(function() {
	      $('.dropDownField2').slideToggle(250);
	    });
	});

	$('.stores.edit').ready(function () {
	    $('.myButton').click(function() {
	      $('.dropDownField').slideToggle(250);
	    });

	    $('.myButton2').click(function() {
	      $('.dropDownField2').slideToggle(250);
	    });
	});
});