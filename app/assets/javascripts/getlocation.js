function getLocation() {
	if (navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(showPosition);
	} else {
		console.log('Error');
	}
}

function showPosition(position) {
	var latitude = position.coords.latitude;
	var longitude = position.coords.longitude;
	$("#user_latitude").val(latitude);
	$("#user_longitude").val(longitude);

}


$(document).on("page:load ready", function() {
	$('.searches.show').ready(function () {
		getLocation();
	});

	$('.searches.index').ready(function () {
		getLocation();
	});
});