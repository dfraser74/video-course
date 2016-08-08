function moreLessons() {
    $(".morelessons").on("click", function(e) {
        e.preventDefault();
        if ($(this).closest(".overview").find(".hidden-elem").is(':visible')) {
            $(this).closest(".overview").find(".hidden-elem").slideUp();
            $(this).find("i").addClass("glyphicon-chevron-right").removeClass("glyphicon-chevron-down")
        } else {
            $(".hidden-elem").slideUp();
            $("i.glyphicon-chevron-down").addClass("glyphicon-chevron-right").removeClass("glyphicon-chevron-down")
            $(this).closest(".overview").find(".hidden-elem").slideToggle();
            $(this).find("i").removeClass("glyphicon-chevron-right").addClass("glyphicon-chevron-down")
        }
    });
};

function signIn() {
    $(".loginbuttons a").on("click", function() {
        $(".loginbuttons span").removeClass("active")
        var div = $(this).text().toLowerCase() + "box"
        if (div == "signupbox") {
            $(".signupspan").addClass("active")
            $(".loginbox").hide()
            $("." + div).show();
        } else {
            $(".loginspan").addClass("active")
            $(".signupbox").hide()
            $("." + div).show();
        }
    })
}

function noDownload(){
   $("#videolesson").bind('contextmenu',function() { return false; });
};

var sweetAlerts = function() {
   if ($.trim($("#notice").html())==''){
   } else {
   var text = $("#notice").text();
   ohSnap(text, {"color":"orange","duration":"4000"})
   $("#notice").remove();
   }};

function popUp(){
    $(".newitem").on("click", function(e){
        e.preventDefault();
         $("html, body").animate({ scrollTop: 0 }, "slow");
        $(".overlay").fadeIn(800)
        $(".popup").fadeIn(800)
    })
    $(".closepopup").on("click", function(e){
        e.preventDefault();
        $(".overlay").fadeOut(800)
        $(".popup").fadeOut(800)
    })
}

function markComplete(){
    $(".status_link").on("click", function(){
        $("#toggleButton5").prop("checked", true)
    })
}


$(document).ready(function() {
    moreLessons();
    signIn();
    noDownload();
    sweetAlerts();
    popUp();
    markComplete();
})
