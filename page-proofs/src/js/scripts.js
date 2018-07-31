$(document).ready(function() {
	// debugger;

/*************************************************************/
// открываем/закрываем моб меню
var mobMenu = $('.header-mob-menu');
var hamburger = $('.btn-mob-nav .hamburger');
function openTopNav(){
  mobMenu.addClass('open');
  hamburger.addClass('is-active');
  $('body').addClass('mob-menu-is-open');
}
function closeTopNav(){
  mobMenu.removeClass('open');
  hamburger.removeClass('is-active');
  $('body').removeClass('mob-menu-is-open');
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
// Открываем/закрываем мини корзину
var miniCart = $('#mini-cart');

function openMiniCart(){
  miniCart.addClass('open');
  $('body').addClass('mini-cart-is-open');
}
function closeMiniCart(){
  miniCart.removeClass('open').removeClass('detail');
  $('body').removeClass('mini-cart-is-open');
}
$('body').on('click', '.js-open-mini-cart', function(){
  if ( miniCart.hasClass('open') ) {
    closeMiniCart();
  } else {
    openMiniCart();
  }
});
$('body').on('click', '.js-close-mini-cart', function(){
  closeMiniCart();
});

$(document).mouseup(function (e){
  if ( $(e.target).closest('.js-open-mini-cart').length === 0 && $(e.target).closest(miniCart).length === 0 ) {
    closeMiniCart();
  }
});

/*************************************************************/
// Открываем/закрываем детализацию корзины
$('.js-open-detail-cart').on('click', function(){
  $('#mini-cart').addClass('detail');
});



// var miniCart = $('#mini-cart');

// function openDetailCart(){
//   miniCart.addClass('open');
//   $('body').addClass('mini-cart-is-open');
// }
// function closeDetailCart(){
//   miniCart.removeClass('open');
//   $('body').removeClass('mini-cart-is-open');
// }
// $('body').on('click', '.js-open-mini-cart', function(){
//   if ( miniCart.hasClass('open') ) {
//     closeDetailCart();
//   } else {
//     openMiniCart();
//   }
// });
// $('body').on('click', '.js-close-mini-cart', function(){
//   closeDetailCart();
// });

// $(document).mouseup(function (e){
//   if ( $(e.target).closest('.js-open-mini-cart').length === 0 && $(e.target).closest(miniCart).length === 0 ) {
//     closeMiniCart();
//   }
// });


/*************************************************************/
// Открываем/закрываем форму fastorder
var fastorder = $('.js-fastorder-form');

function openFastorder(){
  fastorder.addClass('open');
  $('body').addClass('fastorder-is-open');
}
function closeFastorder(){
  fastorder.removeClass('open');
  $('body').removeClass('fastorder-is-open');
}
$('body').on('click', '.js-open-fastorder', function(){
  if ( fastorder.hasClass('open') ) {
    closeFastorder();
  } else {
    openFastorder();
  }
});
$('body').on('click', '.js-close-fastorder', function(){
  closeFastorder();
});

$(document).mouseup(function (e){
  if ( $(e.target).closest('.js-open-fastorder').length === 0 && $(e.target).closest(fastorder).length === 0 ) {
    closeFastorder();
  }
});



/*************************************************************/
// выпадающее меню .dropdown-menu
$('.dropdown-toggle').on('click', function(){
  var menu = $(this).parent().find('.dropdown-menu');
  menu.toggleClass('open');
});
$(document).mouseup(function (e){
  if ( $(e.target).closest('.dropdown-menu').length === 0 && $(e.target).closest('.dropdown-toggle').length === 0 ) {
    $('.dropdown-menu').removeClass('open');
  }
});

/*************************************************************/
// owl carousel
$(".js-owl-carousel-default").owlCarousel({
  dots: false,
  nav: true,
  navText: ["<svg class='svg-owl-left-arrow'><use xlink:href='catalog/view/theme/default/img/sprite/svgSprite.svg#left-arrow'></use></svg>","<svg class='svg-owl-right-arrow'><use xlink:href='catalog/view/theme/default/img/sprite/svgSprite.svg#right-arrow'></use></svg>"],
  margin: 3,
  loop: true,
  responsive: {
    0: {
      items: 1,
    },
    720: {
      items: 2,
    },
    992: {
      items: 3,
    },
    1450: {
      items: 4,
    },
    1800: {
      items: 5,
    }
  }
});

$(".js-owl-carousel-related").owlCarousel({
  dots: false,
  nav: true,
  navText: ["<svg class='svg-owl-left-arrow'><use xlink:href='catalog/view/theme/default/img/sprite/svgSprite.svg#left-arrow'></use></svg>","<svg class='svg-owl-right-arrow'><use xlink:href='catalog/view/theme/default/img/sprite/svgSprite.svg#right-arrow'></use></svg>"],
  margin: 3,
  loop: false,
  responsive: {
    0: {
      items: 1,
    },
    720: {
      items: 2,
    },
    992: {
      items: 3,
    },
    1450: {
      items: 4,
    },
    1800: {
      items: 5,
    }
  }
});

$(".js-owl-lb").owlCarousel({
  dots: false,
  nav: true,
  navText: ["<svg class='svg-owl-left-arrow'><use xlink:href='catalog/view/theme/default/img/sprite/svgSprite.svg#left-arrow'></use></svg>","<svg class='svg-owl-right-arrow'><use xlink:href='catalog/view/theme/default/img/sprite/svgSprite.svg#right-arrow'></use></svg>"],
  margin: 30,
  loop: false,
  stagePadding: 25,
  responsive: {
    0: {
      items: 1,
    },
    400: {
      items: 2,
    },
    992: {
      items: 3,
    },
    1540: {
      items: 4,
    },
  }
});






var owlHome = $(".js-owl-carousel-home");

owlHome.owlCarousel({
  dots: false,
  nav: true,
  navText: ["<svg class='svg-owl-left-arrow'><use xlink:href='catalog/view/theme/default/img/sprite/svgSprite.svg#left-arrow'></use></svg>","<svg class='svg-owl-right-arrow'><use xlink:href='catalog/view/theme/default/img/sprite/svgSprite.svg#right-arrow'></use></svg>"],
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
    // console.log (event.item.index, event.page.count);
    
    if (event.item.index == (event.page.count - 1))  {
      if (round < 1) {
        round++
        // console.log (round);
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
// стилизация select
$('.form-control-select').customSelect();

/*************************************************************/
// fancybox 
function fb_open (c) {
  $.fancybox.open({
    content: c,
    type: 'html',
    padding: 0,
    margin: 0,
    autoSize: false,
    infobar: true,
    toolbar: true,
    btnTpl   : {
      smallBtn : '<span data-fancybox-close="" class="close-btn fb-modal__close" title="Close"><svg class="svg-close"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#close"></use></svg></snap>',
    }
  });
}


/*************************************************************/
// формы обратной связи
$('.js-form-call-me').submit(function(e){
  var c = $('#fb-modal_form-call-me');
  c.html('<h2></h2>');

  $.ajax({
    url: '/index.php?route=account/universalform',
    type: 'post',
    dataType: 'json',
    //dataType: 'html',
    beforeSend: function () {
      c.find('h2').html('<h2>Сообщение отсылается. Пожалуйста подождите...</h2>');
      fb_open(c);
    },
    data: $(this).serialize(),
    success: function(json) {
    console.log(json);

      if (json['success']) {
        c.find('h2').html('<h2>Форма отправлена</h2>');
      } else {
        c.find('h2').html('<h2>Ошибка</h2>');
      }

      if ( !$('body').hasClass('fancybox-active') ) {
        fb_open(c);
      }
      
    }
  });

  return false;
});

/*************************************************************/
// Фиксируем хедер при скролле
var header = $('.site-header');
$(window).scroll(function(){
  if ( $(this).scrollTop() > 150 && header.hasClass("default") ){
    header.removeClass("default").addClass("fixed");
  } else if($(this).scrollTop() <= 150 && header.hasClass("fixed")) {
    header.removeClass("fixed").addClass("default");
  }
});




















});
