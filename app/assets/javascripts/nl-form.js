$(document).ready(function() {
  $(window).keydown(function(event){
    if(event.keyCode == 13) {
      event.preventDefault();
      return false;
    }
  });
  
  var activitiesSelect = $('#activities-select');
  var townCityInput = $('#town-city-input');
  var countryInput = $('#country-input');

  activitiesSelect.hide();
  
  $('.field-toggle').click(toggleInput);
  $('.select-option').click(selectOption);
  $('.inline-text').keyup(textSelect)
  
  function toggleInput(event) {
    $($(event.currentTarget).parent().children()[1]).show();
    $('.nl-overlay').attr("style", "opacity:1; display:block;");
    $($(event.currentTarget).next().children()[0]).children()[0].focus();
  };
  
  function selectOption(event) {
    var current = event.currentTarget;
    $(current).parent().next().val(parseInt($(current).attr('data-id')) + 1);
    $(current).parent().hide();
    $(current).parent().prev().html($(current).html())
    $('.nl-overlay').attr("style", "opacity:0; display:none;");
  };
  
  function textSelect(event) {
    if(event.keyCode == 13) {
      var current = event.currentTarget;
      $(current).parent().next().val($(current).val());
      $(current).parent().hide();
      $(current).parent().parent().prev().html($(current).val())
      $('.nl-overlay').attr("style", "opacity:0; display:none;");
    }
  };
});