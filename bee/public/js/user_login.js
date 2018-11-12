$(function(){
  var forms = $('.cont_forms');
  var login = $('.cont_form_login');
  var sign_up = $('.cont_form_sign_up');
/*µÇÂ¼*/
$(".btn_login").click(function() {
  forms.addClass("cont_forms cont_forms_active_login").removeClass("cont_forms_active_sign_up");
  login.css("display","block");
  sign_up.css("opacity","0");
  setTimeout(()=>{  login.css("opacity","1"); },400);
  setTimeout(()=>{sign_up.css("display","none");},200);
})
/*×¢²á*/
$(".btn_sign_up").click(function(at){
  forms.addClass("cont_forms cont_forms_active_sign_up").removeClass("cont_forms_active_login");
  sign_up.css("display","block");
  login.css("opacity","0");
setTimeout(()=>{sign_up.css("opacity","1");},100);
setTimeout(()=>{login.css("display","none");},400);

})
/*·µ»Ø*/
$(".fanhui").click(function(){
  forms.addClass("cont_forms").removeClass("cont_forms_active_login cont_forms_active_sign_up");
  sign_up.css("opacity","0");
  login.css("opacity","0");

  setTimeout(()=>{ sign_up.css("display","none");
                   login.css("display","none");
  },500);})
})