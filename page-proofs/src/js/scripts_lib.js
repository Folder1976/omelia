$(document).ready(function() {
	// debugger;

/*************************************************************/
// Для того, чтобы проверить тег на содержание в нем атрибута
// расширяем jQuery методом hasAttr
$.fn.hasAttr = function(name) {
   return this.attr(name) !== undefined;
};

/*************************************************************/
//
$.fn.button = function( ev ){
  this.each(function(){
    // only handle "someElement"
    if (false == $(this).hasAttr("data-loading-text")) {
      return; // do nothing
    }

    if ( ev == "loading" ) {
      $(this).data( 'reset-text', $(this).html() );
      $(this).html( $(this).data('loading-text') );
    }
    if ( ev == "reset" ) {
      $(this).html( $(this).data('reset-text') );
    }
    
    return $(this); // support chaining
  });    
};
/*************************************************************/
// Заглушка для бутстраповского tooltip
$.fn.tooltip = function() {
   return;
};
/*************************************************************/
// Бутстраповские табы:
// = ../../bower_components/bootstrap-sass/assets/javascripts/bootstrap/tab.js

// fancybox
// = ../../bower_components/fancybox/dist/jquery.fancybox.min.js

/*************************************************************/
// custom-select
//= lib/jquery.custom-select.min.js

/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/

});
