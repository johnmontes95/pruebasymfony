$(document).ready(function () {
    var $button = $('.js-comment-button');
    var $commentBox =  $('.js-add-comment');

    $button.attr("disabled", "disabled");

    $commentBox.bind('input propertychange', function () {
        if($commentBox.val().length > 0){
            $button.removeAttr("disabled");
        }else{
            $button.attr("disabled", "disabled");
        }
    });


    $button.on('click', function (e) {
        $.ajax({
            url: $button.data('url'),
            data: {
                comment: $commentBox.val()
            },
            success: function (data) {
                $('#commentList').prepend(data);
            }
        });
    });
});