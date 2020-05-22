$(function() {


    // Submit post on submit
    $('#add-notizia').on('submit', function(event){
        event.preventDefault();
        console.log("form submitted!")  // sanity check
        notizia_post();
    });

    // AJAX for posting
    function notizia_post() {
        console.log("create post is working!") // sanity check
        $.ajax({
            url : "{% url 'notizia:notizia_add' %}", // the endpoint
            type : "POST", // http method
            data : { the_post : $('#notizia-title').val() }, // data sent with the post request
            // handle a successful response
            success : function(json) {
                $('#notizia-title').val(''); // remove the value from the input
                console.log(json); // log the returned json to the console
                $("#talk").prepend("<li><strong>"+json.text+"</strong> - <em> "+json.text+"</em> - <span> "+json.created+
                    "</span> - <a id='delete-post-"+json.postpk+"'>delete me</a></li>");
                console.log("success"); // another sanity check
            },
            // handle a non-successful response
            error : function(xhr,errmsg,err) {
                $('#results').html("<div class='alert-box alert radius' data-alert>Oops! We have encountered an error: "+errmsg+
                    " <a href='#' class='close'>&times;</a></div>"); // add the error to the dom
                console.log(xhr.status + ": " + xhr.responseText); // provide a bit more info about the error to the console
            }
        });
    };


    // This function gets cookie with a given name
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

    /*
    The functions below will create a header with csrftoken
    */

    function csrfSafeMethod(method) {
        // these HTTP methods do not require CSRF protection
        return (/^(GET|HEAD|OPTIONS|TRACE)$/.test(method));
    }

    $.ajaxSetup({
        beforeSend: function(xhr, settings) {
            if (!csrfSafeMethod(settings.type) && sameOrigin(settings.url)) {
                // Send the token to same-origin, relative URLs only.
                // Send the token only if the method warrants CSRF protection
                // Using the CSRFToken value acquired earlier
                xhr.setRequestHeader("X-CSRFToken", csrftoken);
            }
        }
    });

});
