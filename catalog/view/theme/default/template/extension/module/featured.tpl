<div class="container">
  <?php $pref = $module_id; ?>
      <h2><?php echo $heading_title; ?></h2>
      <ul class="tabs">
        
        <?php $first = 1; ?>
        
        <?php foreach($manufacturers as $manufacturer_id => $manufacturer){ ?>
          <li <?php if($first++ == 1){ ?>class="active"<?php } ?>><a href="#novelties-<?php echo $pref.'-'.$manufacturer['keyword']; ?>"><?php echo $manufacturer['name']; ?></a></li>
        <?php } ?>
        <!--li class="active"><a href="#novelties-juvia">JUVIA</a></li>
        <li><a href="#novelties-must-have">must have</a></li-->
      </ul>
    </div>

    <div class="tabs-content">
      <?php $first = 1; ?>
      <?php foreach($products as $manufacturer_id => $nom_products){ ?>
        
        <div id="novelties-<?php echo $pref.'-'.$manufacturers[$manufacturer_id]['keyword']; ?>"
                class="tab <?php if($first++ == 1){ ?>active<?php } ?>">
          <div class="slider owl-carousel owl-theme js-owl-carousel-default">
            <?php foreach($nom_products as $product){ ?>
            <div class="item">
              <div class="product">
                <div class="img" style="background-image: url(<?php echo $product['thumb']; ?>);">
                  <?php if(isset($product['options']['product_option_value']) AND count($product['options']['product_option_value']) > 0){?>
                    <ul class="size">
                      <?php foreach($product['options']['product_option_value'] as $option_value){ ?>
                        <li><a href="<?php echo $product['href']; ?>?product_option_value_id=<?php echo $option_value['product_option_value_id'] ;?>"><?php echo $option_value['name'] ;?></a></li>
                      <?php } ?>
                    </ul>
                  <?php } ?>
                  <div class="favorite"><a href="#"><svg class="svg-heart">
                  <use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
                </div>
                <div class="title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                <?php if($product['special']){ ?>
                  <span class="price"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                <?php }else{ ?>
                  <div class="price"><?php echo $product['price']; ?></div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
          
          </div>
        </div>
      
      <?php } ?>


      <!--div id="novelties-juvia" class="tab active">
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


      <div id="novelties-must-have" class="tab">
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


    <div class="container">
      <div class="btn-wrap">
        <a href="#" class="btn">переглянути усе <svg class="svg-right-arrow"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#right-arrow"></use></svg></a>
      </div>
    </div>