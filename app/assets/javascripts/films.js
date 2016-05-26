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

  $('#review-form-holder').on('submit', '#new_review', function(event){
    event.preventDefault();

    var $target = $(event.target)

    requestOptions = {
      url: $target.attr('action'),
      method: $target.attr('method'),
      data: $target.serialize()
    }

    $.ajax(requestOptions).done(function(response){
      $('#review-list').append(response);
      $('#review-form-holder').empty();
      $('.write-review').show();
    });
  });
});
