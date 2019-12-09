$(function(){
    // $("#intro-section").load("content/intro-section.html");
    $("#footer").load("content/footer.html");

    $("#see-more").click(function(){
        $("#search-results > div").css("display", "block").fadeIn(1500);
        $("#see-more").css("display", "none");
    });
});
