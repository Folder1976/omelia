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
// owl carousel
$(".js-owl-carousel-default").owlCarousel({
  dots: false,
  nav: true,
  navText: ["<svg class='svg-owl-left-arrow'><use xlink:href='img/sprite/svgSprite.svg#left-arrow'></use></svg>","<svg class='svg-owl-right-arrow'><use xlink:href='img/sprite/svgSprite.svg#right-arrow'></use></svg>"],
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
  navText: ["<svg class='svg-owl-left-arrow'><use xlink:href='img/sprite/svgSprite.svg#left-arrow'></use></svg>","<svg class='svg-owl-right-arrow'><use xlink:href='img/sprite/svgSprite.svg#right-arrow'></use></svg>"],
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





var owlHome = $(".js-owl-carousel-home");

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
$('.form-control-select').customSelect();



});
