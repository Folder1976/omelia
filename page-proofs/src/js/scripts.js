$(document).ready(function() {
	// debugger;

/*************************************************************/
// открываем/закрываем моб меню
var mobMenu = $('.header-menu');
var hamburger = $('.btn-mob-nav .hamburger');
function openTopNav(){
    mobMenu.addClass('open');
    hamburger.addClass('is-active');
}
function closeTopNav(){
    mobMenu.removeClass('open');
    hamburger.removeClass('is-active');
}
$('.js-mob-top-nav').on('click', function(){
    if ( mobMenu.hasClass('open') ) {
        closeTopNav();
    } else {
        openTopNav();
    }
});
$(document).mouseup(function (e){
    if ( $(e.target).closest('.js-mob-top-nav').length === 0 && $(e.target).closest(mobMenu).length === 0 ) {
        closeTopNav();
    }
});
/*************************************************************/
// owl carousel
$(".owl-carousel.owl-theme").owlCarousel({
    dots: false,
    nav: true,
    navText: ["<svg class='svg-owl-left-arrow'><use xlink:href='img/sprite/svgSprite.svg#left-arrow'></use></svg>","<svg class='svg-owl-right-arrow'><use xlink:href='img/sprite/svgSprite.svg#right-arrow'></use></svg>"],
    margin: 3,
    loop: true,
    responsive: {
        0: {
            items: 1
        },
        1200: {
            items: 3
        },
        1800: {
            items: 5
        }
    }
});

var owlHome = $(".owl-carousel.owl-home-slider");

owlHome.owlCarousel({
    dots: false,
    nav: true,
    navText: ["<svg class='svg-owl-left-arrow'><use xlink:href='img/sprite/svgSprite.svg#left-arrow'></use></svg>","<svg class='svg-owl-right-arrow'><use xlink:href='img/sprite/svgSprite.svg#right-arrow'></use></svg>"],
    margin: 3,
    loop: true,
    items: 1,
    smartSpeed: 1000
});

  // add animate.css class(es) to the elements to be animated
  function setAnimation ( _elem, _InOut ) {
    // Store all animationend event name in a string.
    // cf animate.css documentation
    var animationEndEvent = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';

    _elem.each ( function () {
      var $elem = $(this);
      var $animationType = 'animated ' + $elem.data( 'animation-' + _InOut );

      $elem.addClass($animationType).one(animationEndEvent, function () {
        $elem.removeClass($animationType); // remove animate.css Class at the end of the animations
      });
    });
  }

// Fired before current slide change
  owlHome.on('change.owl.carousel', function(event) {
      var $currentItem = $('.owl-item', owlHome).eq(event.item.index);
      var $elemsToanim = $currentItem.find("[data-animation-out]");
      setAnimation ($elemsToanim, 'out');
  });

// Fired after current slide has been changed
  var round = 0;
  owlHome.on('changed.owl.carousel', function(event) {

      var $currentItem = $('.owl-item', owlHome).eq(event.item.index);
      var $elemsToanim = $currentItem.find("[data-animation-in]");
    
      setAnimation ($elemsToanim, 'in');
  })
  
  owlHome.on('translated.owl.carousel', function(event) {
    console.log (event.item.index, event.page.count);
    
      if (event.item.index == (event.page.count - 1))  {
        if (round < 1) {
          round++
          console.log (round);
        } else {
          owlHome.trigger('stop.owl.autoplay');
          var owlData = owl.data('owl.carousel');
          owlData.settings.autoplay = false; //don't know if both are necessary
          owlData.options.autoplay = false;
          owlHome.trigger('refresh.owl.carousel');
        }
      }
  });



/*************************************************************/
// tabs
$('.tabs').on('click', 'li a', function(e){
    e.preventDefault();
    $(this).closest('.tabs').find('li').removeClass('active');
    $(this).parent().addClass('active');

    var activeTab = $(this).attr('href');
    $(activeTab).closest('.tabs-content').find('.tab').removeClass('active');
    $(activeTab).addClass('active');
    // console.log($(this).attr('href'));
});


/*************************************************************/
// выпадающее меню
// $('.js-dropdown').on('click', function(){
//     var menu = $(this).parent().find('.dropdown-menu');
//     if ( menu.hasClass('open') ) {
//         menu.removeClass('open');
//     } else {
//         menu.addClass('open');
//     }
// });
// $(document).mouseup(function (e){
//     if ( $(e.target).closest('.dropdown-menu').length === 0 && $(e.target).closest('.js-dropdown').length === 0 ) {
//         $('.dropdown-menu').removeClass('open');
//     }
// });
/*************************************************************/
// блоки в фильтре кетегорий
// $('.js-dropdown-filter').on('click', function(){
//     var menu = $(this).parent().find('.dropdown-filter');
//     if ( menu.hasClass('open') ) {
//         menu.removeClass('open').css({height: 0});
//         $(this).removeClass('open');
//     } else {
//         menu.addClass('open').css({height: $(menu)[0].scrollHeight});
//         $(this).addClass('open');
//     }
// });

/*************************************************************/
// плавное разворачивание/сворачивание
// $('.js-dropdown-link').on('click', function(){
//     if ( $(this).hasAttr('data-toggle') ) {
//         var menu = $('.' + $(this).data('toggle') );
//     } else {
//         var menu = $(this).parent().find('.dropdown-div');
//     }

//     if ( menu.hasClass('open') ) {
//         menu.removeClass('open').animate({height: 0}, 200);
//         $(this).removeClass('open');
//     } else {
//         menu.addClass('open').animate({height: $(menu)[0].scrollHeight}, 200);
//         $(this).addClass('open');
//     }
// });
/*************************************************************/
// fancybox
// регистрация / авторизация / напоминание пароля

// function open_modal_account(c) {
//     $.fancybox.open({
//         content: c,
//         type: 'html',
//         padding: 0,
//         margin: 0,
//         autoSize: false,
//         infobar: true,
//         toolbar: true,
//         baseClass: 'fb-modal',
//     });
// }

// $('.js-open-registration').on('click', function(){
//     var c = $('#modal-account');
//     c.find('.registratin').css('display', 'block');
//     c.find('.authorization').css('display', 'none');
//     c.find('.remind-password').css('display', 'none');
//     if ( !$('body').hasClass('fancybox-active') ) {
//         open_modal_account(c);
//     }
// });

// $('.js-open-authorization').on('click', function(){
//     var c = $('#modal-account');
//     c.find('.registratin').css('display', 'none');
//     c.find('.authorization').css('display', 'block');
//     c.find('.remind-password').css('display', 'none');
//     if ( !$('body').hasClass('fancybox-active') ) {
//         open_modal_account(c);
//     }
// });

// $('.js-open-remind-password').on('click', function(){
//     var c = $('#modal-account');
//     c.find('.registratin').css('display', 'none');
//     c.find('.authorization').css('display', 'none');
//     c.find('.remind-password').css('display', 'block');
//     if ( !$('body').hasClass('fancybox-active') ) {
//         open_modal_account(c);
//     }
// });

/*************************************************************/
// открываем/закрываем панели
// $('.panel-title').on('click', function(){
//     $(this).parent().parent().find('.panel-collapse').toggle();
//     return false;    
// });

/*************************************************************/
// закрывает алерты
// $('body').on('click', '.alert .close', function(){
//     var d = $(this).data('dismiss');
//     $('.'+d).remove();
// });

/*************************************************************/
// скролл для фильтров в категории товаров
// $('.filter-block .list').mCustomScrollbar();

/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/
/*************************************************************/

});
