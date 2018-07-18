  <footer class="site-footer">
    <div class="subscribe">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <h2>підписка на розсилку</h2>
            <p>Підпишіться на нашу розсилку і станьте першим, хто отримає найновіші новини про моду, акції та інше!</p>
          </div>
          <div class="col-lg-8">
            <form action="" class="form form_white form-footer-subscribe">
              <input type="email" name="email" class="input" placeholder="Введіть свій Email">
              <button type="submit" class="btn btn_white"><svg class="svg-paper-plane"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#paper-plane"></use></svg>підписатись</button>
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="footer">
      <div class="container">
        <div class="footer-inner">
          <div class="footer__logo">
            <div><a href=""><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>"></a></div>
            <div><a href=""><img src="catalog/view/theme/default/img/logo.png" alt=""></a></div>
            <p>Мережа магазинів стильного<br>та комфортного одягу</p>
          </div>

          <div class="footer__menu-1">
            <ul>
              <li><a href="#">Про нас</a></li>
              <li><a href="#">Оплата</a></li>
              <li><a href="#">Доставка</a></li>
              <li><a href="#">Блог</a></li>
              <li><a href="#">Контакти</a></li>
            </ul>
          </div>

          <div class="footer__menu-2">
            <ul class="cat tabs">
              <?php
              $n = 0;
              foreach ($categories as $category) {
                $n++;
              ?>
                <li <?php if ( $n == 1 ) { echo ' class="active"'; } ?>><a href="#footer-cat-<?php echo $n; ?>"><?php echo $category['name']; ?></a></li>
              <?php } ?>
            </ul>
            <div class="tabs-content">
              <?php
              $n = 0;
              foreach ($categories as $category) {
                $n++;
              ?>

              <?php if ($category['children']) { ?>
                <ul class="sub-cat tab <?php if ( $n == 1 ) { echo ' active'; } ?>" id="footer-cat-<?php echo $n; ?>">
                  <?php foreach ( $category['children'] as $children) { ?>
                    <li><a href="<?php echo $children['href']; ?>"><?php echo $children['name']; ?></a></li>
                  <?php } ?>
                    <!-- <li class="special"><a href="#">Акції</a></li> -->
                </ul>
              <?php } ?>
              <?php } ?>
            </div>
          </div>

          <div class="footer__contact footer-contact">
            <div class="footer-contact__col">
              <div class="footer-contact__row">
                <div class="footer-contact__ico">
                  <svg class="svg-phone"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#phone"></use></svg>
                </div>
                <div class="footer-contact__text">
                  <a href="tel:+380971101107">+38 097 1101107</a><br><a href="tel:+380971101107">+38 097 1101107</a>
                </div>
              </div>
              <div class="footer-contact__row">
                <div class="footer-contact__ico">
                  <svg class="svg-email"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#email"></use></svg>
                </div>
                <div class="footer-contact__text">
                  <a href="mailto:info@julia.com.ua">INFO@Julia.COM.UA</a>
                </div>
              </div>
            </div>

            <div class="footer-contact__col">
              <div class="footer-contact__row">
                <a href="#" class="link_blue">Переглянути адреси<br>магазинів</a>
              </div>
              <div class="footer-contact__row">
                <a href="#"><svg class="svg-facebook"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#facebook"></use></svg></a>
                <a href="#"><svg class="svg-instagram"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#instagram"></use></svg></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="footer-bottom">
      <div class="container">
        <p><?php echo $powered; ?></p>
      </div>
    </div>

  </footer>












<div style="display: none;">
<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr>
    <p><?php echo $powered; ?></p>
  </div>
</footer>
</div>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>