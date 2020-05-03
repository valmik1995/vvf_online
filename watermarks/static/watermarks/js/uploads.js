$(function () {

  $(".js-upload-photos").click(function () {
    $("#fileupload").click();
  });

  $("#fileupload").fileupload({
    dataType: 'json',
    done: function (e, data) {
      if (data.result.is_valid) {
        $("#gallery #master").append(
          '<div class="col-lg-3 col-md-4 col-6"><a href="#" class="d-block mb-4 h-100"><img class="img-fluid img-thumbnail" src="/' + data.result.url + '" alt="">'  + data.result.task_id +  '</a></div>'
        )
      }
    }
  });

});

function updateProgress (progressUrl) {
    fetch(progressUrl).then(function(response) {
        response.json().then(function(data) {
            // update the appropriate UI components
            setProgress(data.state, data.details);
            setTimeout(updateProgress, 500, progressUrl);
        });
    });
}
var progressUrl = '{% url "task_status" task_id %}';  // django template usage
updateProgress(progressUrl);
