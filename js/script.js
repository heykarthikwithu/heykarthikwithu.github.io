$(function(){
    // $("#intro-section").load("content/intro-section.html");
    $("#footer").load("content/footer.html");

    $("#see-more").click(function(){
        $("#search-results > div").css("display", "block").fadeIn(1500);
        $("#see-more").css("display", "none");
    });

    $("#price-500").click(function () {
        $('#search-results .price-500').css("display", "block");
        $('#search-results .price-1000').css("display", "none");
        $('#search-results .price-2000').css("display", "none");
        $('#search-results .price-5000').css("display", "none");
        $('#search-results .price-10000').css("display", "none");
        $('#search-results .price-20000').css("display", "none");
        $('#search-results .price-50000').css("display", "none");
        $("#price-1000").prop("checked", false);
        $("#price-2000").prop("checked", false);
        $("#price-5000").prop("checked", false);
        $("#price-10000").prop("checked", false);
        $("#price-20000").prop("checked", false);
        $("#price-50000").prop("checked", false);
        priceifCheckedDisplayAll('price-500', prices());
    });
    $("#price-1000").click(function () {
        $('#search-results .price-500').css("display", "none");
        $('#search-results .price-1000').css("display", "block");
        $('#search-results .price-2000').css("display", "none");
        $('#search-results .price-5000').css("display", "none");
        $('#search-results .price-10000').css("display", "none");
        $('#search-results .price-20000').css("display", "none");
        $('#search-results .price-50000').css("display", "none");
        $("#price-500").prop("checked", false);
        $("#price-2000").prop("checked", false);
        $("#price-5000").prop("checked", false);
        $("#price-10000").prop("checked", false);
        $("#price-20000").prop("checked", false);
        $("#price-50000").prop("checked", false);
        priceifCheckedDisplayAll('price-1000', prices());
    });
    $("#price-2000").click(function () {
        $('#search-results .price-500').css("display", "none");
        $('#search-results .price-1000').css("display", "none");
        $('#search-results .price-2000').css("display", "block");
        $('#search-results .price-5000').css("display", "none");
        $('#search-results .price-10000').css("display", "none");
        $('#search-results .price-20000').css("display", "none");
        $('#search-results .price-50000').css("display", "none");
        $("#price-500").prop("checked", false);
        $("#price-1000").prop("checked", false);
        $("#price-5000").prop("checked", false);
        $("#price-10000").prop("checked", false);
        $("#price-20000").prop("checked", false);
        $("#price-50000").prop("checked", false);
        priceifCheckedDisplayAll('price-2000', prices());
    });
    $("#price-5000").click(function () {
        $('#search-results .price-500').css("display", "none");
        $('#search-results .price-1000').css("display", "none");
        $('#search-results .price-2000').css("display", "none");
        $('#search-results .price-5000').css("display", "block");
        $('#search-results .price-10000').css("display", "none");
        $('#search-results .price-20000').css("display", "none");
        $('#search-results .price-50000').css("display", "none");
        $("#price-500").prop("checked", false);
        $("#price-1000").prop("checked", false);
        $("#price-2000").prop("checked", false);
        $("#price-10000").prop("checked", false);
        $("#price-20000").prop("checked", false);
        $("#price-50000").prop("checked", false);
        priceifCheckedDisplayAll('price-5000', prices());
    });
    $("#price-10000").click(function () {
        $('#search-results .price-500').css("display", "none");
        $('#search-results .price-1000').css("display", "none");
        $('#search-results .price-2000').css("display", "none");
        $('#search-results .price-5000').css("display", "none");
        $('#search-results .price-10000').css("display", "block");
        $('#search-results .price-20000').css("display", "none");
        $('#search-results .price-50000').css("display", "none");
        $("#price-500").prop("checked", false);
        $("#price-1000").prop("checked", false);
        $("#price-2000").prop("checked", false);
        $("#price-5000").prop("checked", false);
        $("#price-20000").prop("checked", false);
        $("#price-50000").prop("checked", false);
        priceifCheckedDisplayAll('price-10000', prices());
    });
    $("#price-20000").click(function () {
        $('#search-results .price-500').css("display", "none");
        $('#search-results .price-1000').css("display", "none");
        $('#search-results .price-2000').css("display", "none");
        $('#search-results .price-5000').css("display", "none");
        $('#search-results .price-10000').css("display", "none");
        $('#search-results .price-20000').css("display", "block");
        $('#search-results .price-50000').css("display", "none");
        $("#price-500").prop("checked", false);
        $("#price-1000").prop("checked", false);
        $("#price-2000").prop("checked", false);
        $("#price-5000").prop("checked", false);
        $("#price-10000").prop("checked", false);
        $("#price-50000").prop("checked", false);
        priceifCheckedDisplayAll('price-20000', prices());
    });
    $("#price-50000").click(function () {
        $('#search-results .price-500').css("display", "none");
        $('#search-results .price-1000').css("display", "none");
        $('#search-results .price-2000').css("display", "none");
        $('#search-results .price-5000').css("display", "none");
        $('#search-results .price-10000').css("display", "none");
        $('#search-results .price-20000').css("display", "none");
        $('#search-results .price-50000').css("display", "block");
        $("#price-500").prop("checked", false);
        $("#price-1000").prop("checked", false);
        $("#price-2000").prop("checked", false);
        $("#price-5000").prop("checked", false);
        $("#price-10000").prop("checked", false);
        $("#price-20000").prop("checked", false);
        priceifCheckedDisplayAll('price-50000', prices());
    });

    // $("#cat-Car-and-Motorbike").click(function () {
    //     $('#search-results .cat-Car-and-Motorbike').css("display", "block");
    //     $('#search-results .cat-Electronics').css("display", "none");
    //     $("#cat-Electronics").prop("checked", false);
    //     priceifCheckedDisplayAll('cat-Car-and-Motorbike', prices());
    // });
    // $("#cat-Electronics").click(function () {
    //     $('#search-results .cat-Car-and-Motorbike').css("display", "none");
    //     $('#search-results .cat-Electronics').css("display", "block");
    //     $("#cat-Car-and-Motorbike").prop("checked", false);
    //     priceifCheckedDisplayAll('cat-Electronics', prices());
    // });
});

function prices() {
    return ['price-500', 'price-1000', 'price-2000'];
}
function priceifCheckedDisplayAll(id, prices) {
    if (document.getElementById(id).checked == false) {
        prices.forEach(element => $('#search-results .'+element).css("display", "block"));
    }
}
