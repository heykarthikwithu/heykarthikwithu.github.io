$(function(){
    // $("#intro-section").load("content/intro-section.html");
    $("#footer").load("content/footer.html");

    $("#see-more").click(function(){
        $("#search-results > div").css("display", "block").fadeIn(1500);
        $("#see-more").css("display", "none");
    });

    $("#price-500").click(function () {
        var price = getPriceV("price-500");
        $('#search-results .price-500').css("display", "block");
        $('#search-results .price-1000').css("display", "none");
        $('#search-results .price-2000').css("display", "none");
        $("#price-1000").prop("checked", false);
        $("#price-2000").prop("checked", false);
    });
    $("#price-1000").click(function () {
        var price = getPriceV("price-1000");
        $('#search-results .price-500').css("display", "none");
        $('#search-results .price-1000').css("display", "block");
        $('#search-results .price-2000').css("display", "none");
        $("#price-500").prop("checked", false);
        $("#price-2000").prop("checked", false);
    });
    $("#price-2000").click(function () {
        var price = getPriceV("price-2000");
        $('#search-results .price-500').css("display", "none");
        $('#search-results .price-1000').css("display", "none");
        $('#search-results .price-2000').css("display", "block");
        $("#price-500").prop("checked", false);
        $("#price-1000").prop("checked", false);
    });
});

function getPriceV(price_id) {
    var price = price_id.split("-");
    return price[1];
}
