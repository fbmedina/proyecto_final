$(document).on("page:change", function() {
    $('.myButton').click(function() {
      $('.dropDownField').slideToggle(250);
    });

    $('.myButton2').click(function() {
      $('.dropDownField2').slideToggle(250);
    });
});