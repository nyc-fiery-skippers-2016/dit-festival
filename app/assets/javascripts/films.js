// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){
  $('.write-review').on('click', function(event){
    event.preventDefault();

    var $target = $(event.target);

    requestOptions = {
      url: $target.attr('href')
    }

    $.ajax(requestOptions).done(function(response){
      $('#review-form-holder').append(response);
      $('.write-review').hide();
    });

  });
});
