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
  $('.field-toggle').focus(toggleInput);
  $('.select-option').click(selectOption);
  $('.inline-text').keyup(textSelect);
  $('.inline-text').keydown(textSelect);
  $('.nl-next').click(textSelect);
  
  function toggleInput(event) {
    event.preventDefault();
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
    if(event.type == "keydown" && (event.keyCode == 13 || event.keyCode == 9)) {
      var current = event.currentTarget;
      $(current).parent().next().val($(current).val());
      $(current).parent().hide();
      $(current).parent().parent().prev().html($(current).val())
      $('.nl-overlay').attr("style", "opacity:0; display:none;");
    }
    
    if(event.type == "click") {
      var current = event.currentTarget;
      $(current).parent().parent().prev().val($(current).prev().val());
      $(current).parent().hide();
      $(current).parent().parent().prev().html($(current).prev().val())
      $('.nl-overlay').attr("style", "opacity:0; display:none;");
    }
  };
});