# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/



jQuery.fn.set_voting_events = function() {
  this.find('input[type=image]').click(function() {
    $(this).parent('form').submit();
  });
  return this;
}

jQuery.fn.set_button_event = function() {
	this.find('input[type=submit]').click(function() {
		$(this).parent('form').submit();
	})
}

$(function() {
  $('.add-new-post-box').set_button_event();
  $('.voting').set_voting_event();

});
