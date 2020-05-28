$(document).ready(function() {

// $('.notizia').click(function() {
//     $.ajax({
//       type: "POST",
//       url: "../notizia/ajax-posting/",
//       /* django ajax posting url  */
//       data: {
//         first_name: $('#notizia-title').val(),
//         last_name: $('#notizia-descprition').val(),
//       },
//
//       success: function(data) {
//
//         $('#output h1').html(data.msg) /* response message */
//       },
//       failure: function() {
//
//       }
//     });
//   });
//
//
//   $('.get-more').click(function() {
//     $.ajax({
//       type: "GET",
//       url: "/notizia/more-todo",
//       success: function(data) {
//         for (i = 0; i < data.length; i++) {
//           $(' ul').append('<li>' + data[i] + '</li>');
//         }
//
//       }
//     });
//   });

  // $('#add-notizia').click(function() {
  //   $.ajax({
  //     url: "../notizia/add-notizia/", // the endpoint
  //     type: "POST", // http method
  //     dataType: 'json',
  //     // data sent with the post request
  //     // handle a successful response
  //     success: function(response_data) {
  //       $('#talk').prepend(
  //         "<p>" + response_data.title + "</p>"
  //       );
  //     },
  //     // handle a non-successful response
  //     error: function(xhr, errmsg, err) {
  //       $('#results').html("<div class='alert-box alert radius' data-alert>Oops! We have encountered an error: " + errmsg +
  //         " <a href='#' class='close'>&times;</a></div>"); // add the error to the dom
  //       console.log(xhr.status + ": " + xhr.responseText); // provide a bit more info about the error to the console
  //     }
  //   });
  // });

  // $('.add-todo').click(function() {
  //   $.ajax({
  //     type: "POST",
  //     url: "/notizia/add-todo",
  //     dataType: "json",
  //     data: {"item": $(".todo-item").val()},
  //     success: function(data) {
  //         alert(data.message)
  //       }
  //   });
  // });

  function getCookie(name) {
    var cookieValue = null;
    if (document.cookie && document.cookie != '') {
      var cookies = document.cookie.split(';');
      for (var i = 0; i < cookies.length; i++) {
        var cookie = jQuery.trim(cookies[i]);
        // Does this cookie string begin with the name we want?
        if (cookie.substring(0, name.length + 1) == (name + '=')) {
          cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
          break;
        }
      }
    }
    return cookieValue;
  }

  var csrftoken = getCookie('csrftoken');

  function csrfSafeMethod(method) {
    // these HTTP methods do not require CSRF protection
    return (/^(GET|HEAD|OPTIONS|TRACE)$/.test(method));
  }

  $.ajaxSetup({
    beforeSend: function(xhr, settings) {
      if (!csrfSafeMethod(settings.type) && !this.crossDomain) {
        xhr.setRequestHeader("X-CSRFToken", csrftoken);
      }
    }
  });


});
