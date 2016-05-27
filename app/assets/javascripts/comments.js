$(document).ready(function(){
  $('.write-comment').on('click', function(event){
    event.preventDefault();

    var $target = $(event.target);
    var $targetAppend = $target.parent();
    requestOptions = {
      url: $target.attr('href')
    }

    $.ajax(requestOptions).done(function(response){
      $targetAppend.append(response);
      $('.write-comment').hide();
    });
  });

  $('.comment-form-holder').on('submit', '#new_comment', function(event){
    event.preventDefault();

    var $target = $(event.target)
    var $targetAppend = $target.parent();
    requestOptions = {
      url: $target.attr('action'),
      method: $target.attr('method'),
      data: $target.serialize()
    }

    $.ajax(requestOptions).done(function(response){
      $('#comment-list').append(response);
      $('.comment-form-holder').empty();
      $('.write-comment').show();
    });
  });
});