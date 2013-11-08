
jQuery.fn.set_voting_events = function() {
  this.find('#up_vote').click(function() {
  $.post('posts/up_vote', function(data){
  	console.log(data);
    alert(data);
    });
  });

  this.find('#down_vote').click(function() {
  $.post('posts/down_vote', function(data){
  	// this.down_votes += 1;
    console.log(data);
  	alert(data);

    });
  });
};

jQuery.fn.set_button_event = function() {
	this.find('input[type=submit]').click(function(data) {
		$(this).parent('form').submit();
    console.log(data);
    });

    console.log(data);
    debugger;
 
	
};

$(function() {
  $('.add-new-post-box').set_button_event();
  $('.voting').set_voting_events();
});
