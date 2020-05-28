$(function () {
  /* 1. OPEN THE FILE EXPLORER WINDOW */
  $(".js-upload-photos").click(function () {
    $("#fileupload").click();
  });

  /* 2. INITIALIZE THE FILE UPLOAD COMPONENT */
  $("#fileupload").fileupload({
    dataType: 'json',
    done: function (e, data) {
      if (data.result.message === 'Success') {
        // do something...
      }
    }
  });

});

$('#post-form').on('submit', function(e) {
  e.preventDefault();
  $.ajax({
    type: "POST",
    url: "../../notizia/ajax-posting/",
    /* django ajax posting url  */
    data: {
      first_name: $('#notizia-title').val(),
      last_name: $('#notizia-description').val(),
      csrfmiddlewaretoken: '{{ csrf_token }}',
      dataType: "json",
    },

    success: function(data) {
      $('#output h1').html(data.msg) /* response message */
    },
    failure: function() {
    }

  });
});
