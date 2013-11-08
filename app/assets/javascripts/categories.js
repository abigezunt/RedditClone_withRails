
jQuery.fn.set_voting_events = function() {
  this.find('#up_vote').click(function() {
  $.post('posts/up_vote', function(data){
  	alert(data);
    });
  });

  this.find('#down_vote').click(function() {
  $.post('posts/down_vote', function(data){
  	// this.down_votes += 1;
  	alert(data);
    });
  });
};

jQuery.fn.set_button_event = function() {
	this.find('input[type=submit]').click(function(data) {
		alert(data);
	});
};

$(function() {
  $('.add-new-post-box').set_button_event();
  $('.voting').set_voting_events();
});
