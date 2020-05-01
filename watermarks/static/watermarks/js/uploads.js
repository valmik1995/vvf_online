$(function () {

  $(".js-upload-photos").click(function () {
    $("#fileupload").click();
  });

  $("#fileupload").fileupload({
    dataType: 'json',
    done: function (e, data) {
      if (data.result.is_valid) {
        $("#gallery #master").append(
          '<div class="col-lg-3 col-md-4 col-6"><a href="#" class="d-block mb-4 h-100"><img class="img-fluid img-thumbnail" src="/' + data.result.url + '" alt=""></a></div>'
        )
      }
    }
  });

});
