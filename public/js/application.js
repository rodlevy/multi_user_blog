
$(document).ready(function() {
  // go get the form
  $('#make_post').on('click', function(event){
    event.preventDefault();
    var url = $(this).attr('href');
    $.get(url, function(create_erb_form){
    	// var form= $(create_erb_form).html();
    	// console.log(form);
      var newPostForm =	$(create_erb_form).find('form');
      $('#make_post').closest('div').append(newPostForm);
      // the 'closest will go up the dom the closest div to attach to'
    });
  });
  $('.container').on('submit', '#create_form',function(event){
  	event.preventDefault();
 	var data = $(this).serialize();
 	var url = $(this).attr('action');
 	$.post(url, data, function(response){
 		var newResponseBody = $(response).find("#all_posts");
 		$('#all_posts').parent().html(newResponseBody);
 		//$('#all_posts').html(newResponseBody);
 		// select the #all_post information from the response
 		// replace current #all_posts with the one pulled from the response
 		// remove the #create_form from the dom
 		$('#create_form').remove();
 	});
  });


});
