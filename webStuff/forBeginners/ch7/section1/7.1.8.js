$(document).ready(function(){
    console.log("loaded and ready to go");
    $("a").click(function(e){
        e.preventDefault();
        $(this).css("color","red");
    })
    $("h1").hover(function(){
        $(this).css("background","yellow");
    })
    $("h1").click(function(){
        $(this).css("backgroundColor","white");
    })
})
