$(document).ready(function () {
    $("#submit").click(function () {
        var prompt = $("#prompt").val();
        $.post("http://0.0.0.0:8000/text", { "text": prompt }, function (data) {
            $("#response").text(data["response"]);
        });
    });
});
