function setFileUploadMessage(msg) { $("#file_upload_message").show(); $("#file_upload_message").text(msg); } $(function () { $(".js-upload-photos").click(function () { $("#fileupload").click(); }); $("#fileupload").fileupload({ dataType: 'json', singleFileUploads: false,
// default true sequentialUploads: true, start:
function (e) { $("#file_upload_progress").show(); setFileUploadMessage("Uploading files..."); $("#modal-progress").modal("show"); },
stop: function (e) { $("#modal-progress").modal("hide"); },
progressall: function (e, data) { var progress = parseInt(data.loaded / data.total * 100, 10); var strProgress = progress + "%"; $(".progress-bar").css({"width": strProgress}); $(".progress-bar").text(strProgress); },
fail: function (e, data) { setFileUploadMessage("Upload error? " + data.errorThrown + " ... " + data.textStatus); },
progressall: function (e, data) { var progress = parseInt(data.loaded / data.total * 100, 10); var strProgress = progress + "%"; $("#modal-progress .progress-bar").css("width", progress+"%"); $(".progress-bar").text(strProgress); },
done: function (e, data) {
  //show list of uploaded images here
} });
