  <?php
  $lands = array(
                'життя в тренді' => 'eng-життя в тренді',
                'Повсякденний одяг та аксесуари для молодих людей у стилі вуличної моди за доступними цінами' => 'Повсякденний одяг та аксесуари для молодих людей у стилі вуличної моди за доступними цінами',
                'Стиль та комфорт' => 'eng-Стиль та комфорт',
                "Високоякісна зручний одяг, що складається з дуже м'яких матеріалів, випадкових стилів та різнобарвних кольорів" => "Високоякісна зручний одяг, що складається з дуже м'яких матеріалів, випадкових стилів та різнобарвних кольорів",
                'елегантність всюди' => 'eng-елегантність всюди',
                'Яскраві образи, якісний одяг і стильні новинки європейського бренду з доставкою по всій Україні' => 'Яскраві образи, якісний одяг і стильні новинки європейського бренду з доставкою по всій Україні',
                'Look book' => 'Look book',
                'Образи від стилістів для жінок і чоловіків.<br>Джерело натхнення для власних стильних образів!' => 'Образи від стилістів для жінок і чоловіків.<br>Джерело натхнення для власних стильних образів!',
                'жінки' => 'woman',
                'чоловіки' => 'man',
                '' => '',
                '' => '',
                '' => '',
                '' => '',
                );
  $lib = array();foreach($lands as $ru => $ua){if((int)$language_id == 3){$lib[$ru] = $ru;}else{$lib[$ru] = $ua;}}
   $lang_key = $language_id;$dir = '';if($language_id == 2){$dir = 'en';}
    //Пример
    //<?php echo $lib['Украинская фраза']; ? >
?><?php echo $header; ?>

<main class="site-content">

  <section class="section-home-slider">
    <div class="home-slider owl-carousel owl-home-slider js-owl-carousel-home">

      <div class="item">
        <div class="bg-img" style="background-image: url(catalog/view/theme/default/img/home-slider/bg-1.jpg);"></div>
        <div class="foto" data-animation-in="fadeInRight" data-animation-out="animate-out fadeOutRight"><img src="catalog/view/theme/default/img/home-slider/slide-1.jpg" alt=""></div>
        <div class="text">
          <div class="brand" data-animation-in="fadeInDown" data-animation-out="animate-out fadeOutDown"><img src="catalog/view/theme/default/img/brand/juvia.png" alt=""></div>
          <div class="title" data-animation-in="fadeInDown" data-animation-out="animate-out fadeOutDown">Знижки до  50% OFF</div>
          <div class="sub-title" data-animation-in="fadeInLeft" data-animation-out="animate-out fadeOutLeft">на колекцію весна-літо 2018</div>
          <div class="btn-wrap" data-animation-in="fadeInUp" data-animation-out="animate-out fadeOutUp"><a href="#" class="btn">розпочати шопінг <svg class="svg-right-arrow"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#right-arrow"></use></svg></a></div>
        </div>
      </div>

      <div class="item">
        <div class="bg-img" style="background-image: url(catalog/view/theme/default/img/home-slider/bg-1.jpg);"></div>
        <div class="foto" data-animation-in="fadeInRight" data-animation-out="animate-out fadeOutRight"><img src="catalog/view/theme/default/img/home-slider/slide-2.jpg" alt=""></div>
        <div class="text">
          <div class="brand" data-animation-in="fadeInDown" data-animation-out="animate-out fadeOutDown"><img src="catalog/view/theme/default/img/brand/juvia.png" alt=""></div>
          <div class="title" data-animation-in="fadeInDown" data-animation-out="animate-out fadeOutDown">Знижки до  60% OFF</div>
          <div class="sub-title" data-animation-in="fadeInLeft" data-animation-out="animate-out fadeOutLeft">на колекцію весна-літо 2018</div>
          <div class="btn-wrap" data-animation-in="fadeInUp" data-animation-out="animate-out fadeOutUp"><a href="#" class="btn">розпочати шопінг <svg class="svg-right-arrow"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#right-arrow"></use></svg></a></div>
        </div>
      </div>

    </div>
  </section>


  <?php echo $content_top; ?>


  <section class="section-home-1">
    <div class="container">
      <div class="block__wrap">
        <div class="block">
          <div class="block__text">
            <div class="block__title"><?php echo $lib['життя в тренді'];?></div>
            <div class="block__desc"><?php echo $lib['Повсякденний одяг та аксесуари для молодих людей у стилі вуличної моди за доступними цінами'];?></div>
          </div>
          <div class="block__img"><img src="catalog/view/theme/default/img/home/image-1.jpg" alt=""></div>
        </div>

        <div class="block">
          <div class="block__text">
            <div class="block__title"><?php echo $lib['Стиль та комфорт'];?></div>
            <div class="block__desc"><?php echo $lib["Високоякісна зручний одяг, що складається з дуже м'яких матеріалів, випадкових стилів та різнобарвних кольорів"];?></div>
          </div>
          <div class="block__img"><img src="catalog/view/theme/default/img/home/image-2.jpg" alt=""></div>
        </div>

        <div class="block">
          <div class="block__text">
            <div class="block__title"><?php echo $lib['елегантність всюди'];?></div>
            <div class="block__desc"><?php echo $lib['Яскраві образи, якісний одяг і стильні новинки європейського бренду з доставкою по всій Україні'];?></div>
          </div>
          <div class="block__img"><img src="catalog/view/theme/default/img/home/image-3.jpg" alt=""></div>
        </div>
      </div>
    </div>
  </section>

 <section class="section-novelties">
    <?php echo $modules[28]; ?>
 </section>

  <section class="section-look-book">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h2><?php echo $lib['Look book'];?></h2>
          <p><?php echo $lib['Образи від стилістів для жінок і чоловіків.<br>Джерело натхнення для власних стильних образів!'];?></p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <div class="look-book__item look-book__item_left">
            <a href="/woman">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/look-book/woman.jpg);">
                <div class="title"><?php echo $lib['жінки'];?></div>
              </div>
            </a>
          </div>
        </div>
        <div class="col-md-6">
          <div class="look-book__item look-book__item_right">
            <a href="/man">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/look-book/man.jpg);">
                <div class="title"><?php echo $lib['чоловіки'];?></div>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="section-novelties">
    <?php echo $modules[33]; ?>
    
    <!--div class="container">
      <h2>Хіти продаж</h2>
      <ul class="tabs">
        <li><a href="#hit-sale-pb">P&B</a></li>
        <li class="active"><a href="#hit-sale-juvia">JUVIA</a></li>
        <li><a href="#hit-sale-must-have">must have</a></li>
      </ul>
    </div>


    <div class="tabs-content">
      <div id="hit-sale-pb" class="tab">
        <div class="slider owl-carousel owl-theme js-owl-carousel-default">
          <div class="item">
            <div class="product">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/slider/slide-1.jpg);">
                <ul class="size">
                  <li><a href="#">xl</a></li>
                  <li><a href="#">s</a></li>
                  <li><a href="#">m</a></li>
                  <li><a href="#">l</a></li>
                  <li><a href="#">xl</a></li>
                </ul>
                <div class="favorite"><a href="#"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
              </div>
              <div class="title"><a href="#">Светр Juvia</a></div>
              <div class="price">UAH  700</div>
            </div>
          </div>

          <div class="item">
            <div class="product">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/slider/slide-2.jpg);">
                <ul class="size">
                  <li><a href="#">xl</a></li>
                  <li><a href="#">s</a></li>
                  <li><a href="#">m</a></li>
                  <li><a href="#">l</a></li>
                  <li><a href="#">xl</a></li>
                </ul>
                <div class="favorite"><a href="#"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
              </div>
              <div class="title"><a href="#">Светр Juvia</a></div>
              <div class="price">UAH  700</div>
            </div>
          </div>

          <div class="item">
            <div class="product">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/slider/slide-3.jpg);">
                <ul class="size">
                  <li><a href="#">xl</a></li>
                  <li><a href="#">s</a></li>
                  <li><a href="#">m</a></li>
                  <li><a href="#">l</a></li>
                  <li><a href="#">xl</a></li>
                </ul>
                <div class="favorite"><a href="#"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
              </div>
              <div class="title"><a href="#">Светр Juvia</a></div>
              <div class="price">UAH  700</div>
            </div>
          </div>

          <div class="item">
            <div class="product">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/slider/slide-4.jpg);">
                <ul class="size">
                  <li><a href="#">xl</a></li>
                  <li><a href="#">s</a></li>
                  <li><a href="#">m</a></li>
                  <li><a href="#">l</a></li>
                  <li><a href="#">xl</a></li>
                </ul>
                <div class="favorite"><a href="#"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
              </div>
              <div class="title"><a href="#">Светр Juvia</a></div>
              <div class="price">UAH  700</div>
            </div>
          </div>

          <div class="item">
            <div class="product">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/slider/slide-5.jpg);">
                <ul class="size">
                  <li><a href="#">xl</a></li>
                  <li><a href="#">s</a></li>
                  <li><a href="#">m</a></li>
                  <li><a href="#">l</a></li>
                  <li><a href="#">xl</a></li>
                </ul>
                <div class="favorite"><a href="#"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
              </div>
              <div class="title"><a href="#">Светр Juvia</a></div>
              <div class="price">UAH  700</div>
            </div>
          </div>

          <div class="item">
            <div class="product">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/slider/slide-1.jpg);">
                <ul class="size">
                  <li><a href="#">xl</a></li>
                  <li><a href="#">s</a></li>
                  <li><a href="#">m</a></li>
                  <li><a href="#">l</a></li>
                  <li><a href="#">xl</a></li>
                </ul>
                <div class="favorite"><a href="#"><svg class="svg-heart"><use xlink:href="img/sprite/svgSprite.svg#heart"></use></svg></a></div>
              </div>
              <div class="title"><a href="#">Светр Juvia</a></div>
              <div class="price">UAH  700</div>
            </div>
          </div>
        </div>
      </div>


      <div id="hit-sale-juvia" class="tab active">
        <div class="slider owl-carousel owl-theme js-owl-carousel-default">
          <div class="item">
            <div class="product">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/slider/slide-1.jpg);">
                <ul class="size">
                  <li><a href="#">xl</a></li>
                  <li><a href="#">s</a></li>
                  <li><a href="#">m</a></li>
                  <li><a href="#">l</a></li>
                  <li><a href="#">xl</a></li>
                </ul>
                <div class="favorite"><a href="#"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
              </div>
              <div class="title"><a href="#">Светр Juvia</a></div>
              <div class="price">UAH  700</div>
            </div>
          </div>

          <div class="item">
            <div class="product">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/slider/slide-2.jpg);">
                <ul class="size">
                  <li><a href="#">xl</a></li>
                  <li><a href="#">s</a></li>
                  <li><a href="#">m</a></li>
                  <li><a href="#">l</a></li>
                  <li><a href="#">xl</a></li>
                </ul>
                <div class="favorite"><a href="#"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
              </div>
              <div class="title"><a href="#">Светр Juvia</a></div>
              <div class="price">UAH  700</div>
            </div>
          </div>

          <div class="item">
            <div class="product">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/slider/slide-3.jpg);">
                <ul class="size">
                  <li><a href="#">xl</a></li>
                  <li><a href="#">s</a></li>
                  <li><a href="#">m</a></li>
                  <li><a href="#">l</a></li>
                  <li><a href="#">xl</a></li>
                </ul>
                <div class="favorite"><a href="#"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
              </div>
              <div class="title"><a href="#">Светр Juvia</a></div>
              <div class="price">UAH  700</div>
            </div>
          </div>

          <div class="item">
            <div class="product">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/slider/slide-4.jpg);">
                <ul class="size">
                  <li><a href="#">xl</a></li>
                  <li><a href="#">s</a></li>
                  <li><a href="#">m</a></li>
                  <li><a href="#">l</a></li>
                  <li><a href="#">xl</a></li>
                </ul>
                <div class="favorite"><a href="#"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
              </div>
              <div class="title"><a href="#">Светр Juvia</a></div>
              <div class="price">UAH  700</div>
            </div>
          </div>

          <div class="item">
            <div class="product">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/slider/slide-5.jpg);">
                <ul class="size">
                  <li><a href="#">xl</a></li>
                  <li><a href="#">s</a></li>
                  <li><a href="#">m</a></li>
                  <li><a href="#">l</a></li>
                  <li><a href="#">xl</a></li>
                </ul>
                <div class="favorite"><a href="#"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
              </div>
              <div class="title"><a href="#">Светр Juvia</a></div>
              <div class="price">UAH  700</div>
            </div>
          </div>

          <div class="item">
            <div class="product">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/slider/slide-1.jpg);">
                <ul class="size">
                  <li><a href="#">xl</a></li>
                  <li><a href="#">s</a></li>
                  <li><a href="#">m</a></li>
                  <li><a href="#">l</a></li>
                  <li><a href="#">xl</a></li>
                </ul>
                <div class="favorite"><a href="#"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
              </div>
              <div class="title"><a href="#">Светр Juvia</a></div>
              <div class="price">UAH  700</div>
            </div>
          </div>
        </div>
      </div>


      <div id="hit-sale-must-have" class="tab">
        <div class="slider owl-carousel owl-theme js-owl-carousel-default">
          <div class="item">
            <div class="product">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/slider/slide-1.jpg);">
                <ul class="size">
                  <li><a href="#">xl</a></li>
                  <li><a href="#">s</a></li>
                  <li><a href="#">m</a></li>
                  <li><a href="#">l</a></li>
                  <li><a href="#">xl</a></li>
                </ul>
                <div class="favorite"><a href="#"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
              </div>
              <div class="title"><a href="#">Светр Juvia</a></div>
              <div class="price">UAH  700</div>
            </div>
          </div>

          <div class="item">
            <div class="product">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/slider/slide-2.jpg);">
                <ul class="size">
                  <li><a href="#">xl</a></li>
                  <li><a href="#">s</a></li>
                  <li><a href="#">m</a></li>
                  <li><a href="#">l</a></li>
                  <li><a href="#">xl</a></li>
                </ul>
                <div class="favorite"><a href="#"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
              </div>
              <div class="title"><a href="#">Светр Juvia</a></div>
              <div class="price">UAH  700</div>
            </div>
          </div>

          <div class="item">
            <div class="product">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/slider/slide-3.jpg);">
                <ul class="size">
                  <li><a href="#">xl</a></li>
                  <li><a href="#">s</a></li>
                  <li><a href="#">m</a></li>
                  <li><a href="#">l</a></li>
                  <li><a href="#">xl</a></li>
                </ul>
                <div class="favorite"><a href="#"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
              </div>
              <div class="title"><a href="#">Светр Juvia</a></div>
              <div class="price">UAH  700</div>
            </div>
          </div>

          <div class="item">
            <div class="product">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/slider/slide-4.jpg);">
                <ul class="size">
                  <li><a href="#">xl</a></li>
                  <li><a href="#">s</a></li>
                  <li><a href="#">m</a></li>
                  <li><a href="#">l</a></li>
                  <li><a href="#">xl</a></li>
                </ul>
                <div class="favorite"><a href="#"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
              </div>
              <div class="title"><a href="#">Светр Juvia</a></div>
              <div class="price">UAH  700</div>
            </div>
          </div>

          <div class="item">
            <div class="product">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/slider/slide-5.jpg);">
                <ul class="size">
                  <li><a href="#">xl</a></li>
                  <li><a href="#">s</a></li>
                  <li><a href="#">m</a></li>
                  <li><a href="#">l</a></li>
                  <li><a href="#">xl</a></li>
                </ul>
                <div class="favorite"><a href="#"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
              </div>
              <div class="title"><a href="#">Светр Juvia</a></div>
              <div class="price">UAH  700</div>
            </div>
          </div>

          <div class="item">
            <div class="product">
              <div class="img" style="background-image: url(catalog/view/theme/default/img/slider/slide-1.jpg);">
                <ul class="size">
                  <li><a href="#">xl</a></li>
                  <li><a href="#">s</a></li>
                  <li><a href="#">m</a></li>
                  <li><a href="#">l</a></li>
                  <li><a href="#">xl</a></li>
                </ul>
                <div class="favorite"><a href="#"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
              </div>
              <div class="title"><a href="#">Светр Juvia</a></div>
              <div class="price">UAH  700</div>
            </div>
          </div>
        </div>
      </div>
    </div-->

  </section>



  <section class="section-text">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <p><?php echo $comment; ?></p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
            <?php echo $modules[34]; ?>
        </div>
      </div>
    </div>
  </section>




</main>





<?php echo $footer; ?>