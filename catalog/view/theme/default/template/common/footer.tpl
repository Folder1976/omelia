  <?php
  $lands = array(
                'Украіна' => 'English',
                'Мережа магазинів стильного<br>та комфортного одягу' => 'Мережа магазинів стильного<br>та комфортного одягу',
                'Підпишіться на нашу розсилку і станьте першим, хто отримає найновіші новини про моду, акції та інше!' => 'Підпишіться на нашу розсилку і станьте першим, хто отримає найновіші новини про моду, акції та інше!',
                'Переглянути адреси<br>магазинів' => 'Переглянути адреси<br>магазинів',
                'підписка на розсилку' => 'підписка на розсилку',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                );
  $lib = array();foreach($lands as $ru => $ua){if((int)$language_id == 3){$lib[$ru] = $ru;}else{$lib[$ru] = $ua;}}
   $lang_key = $language_id;$dir = '';if($language_id == 2){$dir = 'en';}
    //Пример
    //<?php echo $lib['Украинская фраза']; ? >
    ?>
  <footer class="site-footer">
    <div class="subscribe">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <h2><?php echo $lib['підписка на розсилку']; ?></h2>
            <p><?php echo $lib['Підпишіться на нашу розсилку і станьте першим, хто отримає найновіші новини про моду, акції та інше!']; ?></p>
          </div>
          <div class="col-lg-8">
            <form action="" class="form form_white form-footer-subscribe js-form-call-me">
              <input type="hidden" name="formname" value="footer-subscribe">
              <input type="email" name="email" class="input" placeholder="Введіть свій Email">
              <button type="submit" class="btn btn_transparent"><svg class="svg-paper-plane"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#paper-plane"></use></svg>підписатись</button>
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
            <!--div><a href=""><img src="catalog/view/theme/default/img/logo.png" alt=""></a></div-->
            <p><?php echo $lib['Мережа магазинів стильного<br>та комфортного одягу']; ?></p>
          </div>

          <div class="footer__menu-1">
            <ul>
              <li><a href="<?php echo $informations[4]['href'];?>"><?php echo $informations[4]['title'];?></a></li>
              <li><a href="<?php echo $informations[7]['href'];?>"><?php echo $informations[7]['title'];?></a></li>
              <li><a href="<?php echo $informations[6]['href'];?>"><?php echo $informations[6]['title'];?></a></li>
              <li><a href="<?php echo $informations[8]['href'];?>"><?php echo $informations[8]['title'];?></a></li>
              <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
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
                  <a href="tel:<?php echo $telephone; ?>"><?php echo $telephone; ?></a><br><a href="tel:<?php echo $telephone; ?>"><?php echo $telephone; ?></a>
                </div>
              </div>
              <div class="footer-contact__row">
                <div class="footer-contact__ico">
                  <svg class="svg-email"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#email"></use></svg>
                </div>
                <div class="footer-contact__text">
                  <a href="mailto:<?php echo $email; ?>"><?php echo $email; ?></a>
                </div>
              </div>
            </div>

            <div class="footer-contact__col">
              <div class="footer-contact__row">
                <a href="#" class="link_blue"><?php echo $lib['Переглянути адреси<br>магазинів']; ?></a>
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



<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>