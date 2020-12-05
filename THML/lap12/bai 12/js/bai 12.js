$(document).ready (function (){
    var daukick=0,matkick=0,muikick=0,camkick=0;

    lightning_one();
    lightning_two();
    lightning_three();

    $("#dau").click(function (){
        if (daukick<9) {
            $("#dau").animate({left: "-=367px"}, 500);
            daukick += 1;
        }
        else {
            $("#dau").animate({left:"0px"},500);
            daukick = 0;
        }
    });
    $("#mat").click(function (){
        if(matkick<9){
            $("#mat").animate({left:"-=367px"},500);
            matkick +=1;
        }
        else {
            $("#mat").animate({left: '0px'},500);
            matkick=0;
        }
    });
    $("#mui").click(function (){
        if(matkick<9){
            $("#mui").animate({left:"-=367px"},500);
            matkick +=1;
        }
        else {
            $("#mui").animate({left: '0px'},500);
            matkick=0;
        }
    });
    $("#mom").click(function (){
        if(matkick<9){
            $("#mom").animate({left:"-=367px"},500);
            matkick +=1;
        }
        else {
            $("#mom").animate({left: '0px'},500);
            matkick=0;
        }
    });
});
function lightning_one(){
    $("#container #lightning1").fadeIn(250).fadeOut(250);
    setTimeout("lightning_one()",4000);
};
function lightning_two(){
    $("#container #lightning2").fadeIn(250).fadeOut(250);
    setTimeout("lightning_two()",4500);
};
function lightning_three(){
    $("#container #lightning3").fadeIn(250).fadeOut(250);
    setTimeout("lightning_three()",5000);
};