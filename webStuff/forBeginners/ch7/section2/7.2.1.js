$(document).ready(function(){

    $("#b1").on("click", function(){
        $("h1").show();
    })
    $("#b2").on("click", function(){
        $("h1").hide();
    })
    $("#b3").on("click", function(){
        $("h1").toggle();
    })

})
