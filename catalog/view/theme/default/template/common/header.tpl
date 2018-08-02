<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title;  ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta property="og:title" content="<?php echo $title; ?>" />
<meta property="og:type" content="website" />
<meta property="og:url" content="<?php echo $og_url; ?>" />
<?php if ($og_image) { ?>
<meta property="og:image" content="<?php echo $og_image; ?>" />
<?php } else { ?>
<meta property="og:image" content="<?php echo $logo; ?>" />
<?php } ?>
<meta property="og:site_name" content="<?php echo $name; ?>" />

<?php
// этот блок в конце надо будет удалить
/*<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
*/
?>

<link href="https://fonts.googleapis.com/css?family=Ubuntu:400,500,700&amp;subset=cyrillic" rel="stylesheet">
<link rel="stylesheet" href="catalog/view/theme/default/stylesheet/style.css">

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/default/js/lib/owl.carousel.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/default/js/lib/jquery.fancybox.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/default/js/scripts_lib.js"></script>
<script type="text/javascript" src="catalog/view/theme/default/js/scripts.js"></script>

<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="site <?php echo $class; ?>">
  <header class="site-header default">

    <div class="header-top__wrap">
      <div class="container header-top">
        <div class="btn-mob-nav">
          <button class="js-mob-top-nav hamburger hamburger--stand" type="button">
            <span class="hamburger-box">
              <span class="hamburger-inner"></span>
            </span>
          </button>
        </div>

        <div class="header-top__left">
          <ul>
            <li><a href="<?php echo $informations[4]['href'];?>"><?php echo $informations[4]['title'];?></a></li>
            <li><a href="<?php echo $informations[7]['href'];?>"><?php echo $informations[7]['title'];?></a></li>
            <li><a href="<?php echo $informations[6]['href'];?>"><?php echo $informations[6]['title'];?></a></li>
            <li><a href="<?php echo $informations[8]['href'];?>"><?php echo $informations[8]['title'];?></a></li>
            <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          </ul>
        </div>
           
        <div class="header-top__center">
          <ul class="tabs">
            <?php
            $n = 0; $stop = 0;
            
            if(strpos($_SERVER['REQUEST_URI'], '/man') !== false) $stop = 1;

            foreach ($categories as $category) { ?>
              <li <?php if ( $n++ == $stop ) { echo ' class="active"'; } ?>><a href="#header-cat-<?php echo $n; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>

        <div class="header-top__right">
          <ul>
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
            <?php } else { ?>
            <li><a href="<?php echo $account; ?>">Вхід</a>
            <?php } ?>
            <span class="separator">|</span><?php echo $language; ?></li>
          </ul>
        </div>
      </div>
    </div>




    <div class="header__wrap">
      <div class="container header">
      
        <?php if ($logo) { ?>
        <div class="header__left">
          <div class="logo">
            <?php if ($home == $og_url) { ?>
              <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>">
            <?php } else { ?>
              <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"></a>
            <?php } ?>
          </div>
        </div>
        <?php } ?>
        

        <div class="header__center">
          <div class="menu-cat tabs-content">

            <?php
            $n = 0;
            
            foreach ($categories as $category) { ?>

            <?php if ($category['children']) { ?>
            <div class="tab <?php if ( $n++ == $stop ) { echo ' active'; } ?>" id="header-cat-<?php echo $n; ?>">
              <ul>
                <?php foreach ( $category['children'] as $children) { ?>
                  <li><a href="<?php echo $children['href']; ?>"><?php echo $children['name']; ?></a></li>
                <?php } ?>
              </ul>
            </div>
            <?php } ?>
            <?php } ?>

         </div>
        </div>


        <div class="header__right">
          <div id="js-header-cart"><?php echo $cart;?></div>
          <a href="<?php echo $wishlist; ?>" id="wishlist-total"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg>
          <span class="number"><?php echo $text_wishlist; ?></span></a>
        </div>
      </div>
    </div>


    <div class="header-mob-menu">
      <div class="close-btn js-mob-top-nav"><svg class="svg-close"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#close"></use></svg></div>
      
      <div class="header-mob-menu__content">
        <div class="header-mob-link">
          <ul>
            <li><a href="<?php echo $informations[4]['href'];?>"><?php echo $informations[4]['title'];?></a></li>
            <li><a href="<?php echo $informations[7]['href'];?>"><?php echo $informations[7]['title'];?></a></li>
            <li><a href="<?php echo $informations[6]['href'];?>"><?php echo $informations[6]['title'];?></a></li>
            <li><a href="<?php echo $informations[8]['href'];?>"><?php echo $informations[8]['title'];?></a></li>
            <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          </ul>
        </div>

        <ul class="menu-mob-cat-tabs tabs">
          <?php
          $n = 0;
          foreach ($categories as $category) {
            $n++;
          ?>
          <li <?php if ( $n == 1 ) { echo ' class="active"'; } ?>><a href="#header-mob-cat-<?php echo $n; ?>"><?php echo $category['name']; ?></a></li>
          <?php } ?>
        </ul>


        <div class="menu-mob-cat tabs-content">

          <?php
          $n = 0;
          foreach ($categories as $category) {
            $n++;
          ?>

          <?php if ($category['children']) { ?>
          <div class="tab <?php if ( $n == 1 ) { echo ' active'; } ?>" id="header-mob-cat-<?php echo $n; ?>" id="header-mob-cat-<?php echo $n; ?>">
            <ul>
              <?php foreach ( $category['children'] as $children) { ?>
                <li><a href="<?php echo $children['href']; ?>"><?php echo $children['name']; ?></a></li>
              <?php } ?>
            </ul>
          </div>
          <?php } ?>
          <?php } ?>

        </div>
      </div>

      
    </div>

  </header>




  <div style="display: none;">

    <div id="fb-modal_form-call-me" class="fb-modal">
      <h2></h2>
    </div>

  </div> <!-- div.display: none; -->
