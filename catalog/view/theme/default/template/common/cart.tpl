<div id="cart" class="header-cart">
  <div data-loading-text="<?php echo $text_loading; ?>" class="js-open-mini-cart open-mini-cart"><span class="d-none d-sm-inline">Корзина </span><svg class="svg-shopping-cart d-inline d-sm-none"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#shopping-cart"></use></svg><span class="number" id="cart-total"><?php echo $text_items; ?></span></div>

  <div id="mini-cart" class="mini-cart side-panel">
    <div class="close-btn js-close-mini-cart"><svg class="svg-close"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#close"></use></svg></div>

    <div class="side-panel__header">
      <h3 class="title">корзина (<span class="js-cart-total"><?php echo $text_items; ?></span>)  <span class="cart-detail-btn js-open-detail-cart detail-hidden"><svg class="svg-cart-left-arrow"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#left-arrow"></use></svg> Детальніше</span><div class="total-summ-header mini-cart-hidden iblock">Загальна сума: <span class="js-cart-total">UAH 3 330</span></div></h3>

      <div class="cart-auth mini-cart-hidden">Авторизуйтесь, щоб відслідкувати статус виконання покупки та зберегти її історію <a href="#" class="btn btn_grey">Авторизуватись <svg class="svg-cart-right-arrow"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#right-arrow"></use></svg></a></div>

    </div>
    <div class="side-panel__content">

      <div class="dropdown-menu" id="cart-product-list">
        <?php if ($products || $vouchers) { ?>
          <div class="mini-cart-hidden">
            <div class="cart-product-list__header">
              <div class="product__col-1"><span class="js-cart-total bold"><?php echo $text_items; ?></span>&nbsp;&nbsp;&nbsp;товари у кошику</div>
              <div class="product__col-2">Ціна:</div>
              <div class="product__col-3">Сума:</div>
            </div>
          </div>

        <?php foreach ($products as $product) { ?>

        <div class="product">
          <div class="product__col-1">
            <div class="col-foto"><?php if ($product['thumb']) { ?><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" <?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail"></a><?php } ?></div>
            <div class="col-detail">
                <div class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                <div class="product-price detail-hidden"><span id="total-price<?php echo $product_id;?>"><?php echo $product['total']; ?></span></div>

                <div class="field mini-cart-hidden">
                  <div class="field-name">Артикул: 209350</div>
                </div>


                
                <?php if ($product['option']) { ?>
                <?php foreach ($product['option'] as $option) { ?>
                  <!-- <pre>
                  <?php var_dump($option); ?>
                  </pre> -->
                  <div class="field">
                    <div class="field-name"><?php echo $option['name']; ?>: <?php echo $option['value']; ?></div>
                  </div>

                  <?php if ( false ) { // если опция - "размер", то: ?>
                  <div class="field product-size">
                    <div class="field-name"><?php echo $option['name']; ?>:</div>
                    <div class="field-value"><?php echo $option['value']; ?></div>
                  </div>
                  <?php } ?>
                  <?php if ( false ) { // если опция - "цвет", то: ?>
                  <div class="field product-color">
                    <div class="field-name"><?php echo $option['name']; ?>: <?php //echo $product_color['name']; ?></div>
                    <div class="field-value field-value_color"><span style="background: <?php //echo $product_color['hex']; ?>;"></span></div>
                  </div>
                  <?php } ?>

                <?php } ?>
                <?php } ?>


                <div class="field product-count">
                    <div class="field-name">Кількість: <span class="js-product-count"><?php echo $product['quantity']; ?></span> шт</div>
                    <input type="hidden" value="1" onchange="priceCalc(this.value)" id="count<?php echo $product_id;?>" name="quantity[<?php echo $product['cart_id']; ?>]">
                    <button class="product-count__btn js-btnproduct-minus" data-id="<?php echo $product['cart_id']; ?>">-</button>
                    <button class="product-count__btn js-btnproduct-plus" data-id="<?php echo $product['cart_id']; ?>">+</button>
                </div>

                <div class="remove-product mini-cart-hidden">
                  <a href="#"><svg class="svg-remove"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#close"></use></svg>Видалити</a>
                </div>

            </div>
          </div>
          <div class="product__col-2 mini-cart-hidden">UAH  1 500</div>
          <div class="product__col-3 mini-cart-hidden bold">UAH  3 000</div>
        </div>

        <?php } ?>

        <div>
          <table class="table table-bordered">
            <?php //foreach ($totals as $total) { ?>
            <tr>
              <td class="text-right"><strong><?php echo $totals[0]['title']; ?></strong></td>
              <td class="text-right"><?php echo $totals[0]['text']; ?></td>
            </tr>
            <?php //} ?>
          </table>
          
          <div class="cart-product-list__footer">
            <div class="mini-cart-hidden">
              <label for="gift-wrap">Подарункова упаковка (50грн)</label>
              <input type="checkbox" class="checkbox" id="gift-wrap">
            </div>
            <div class="total-summ-header mini-cart-hidden iblock">Загальна сума: <span class="js-cart-total">UAH 3 330</span></div>
            <p class="text-right"><!-- <a href="<?php echo $cart; ?>"><strong><i class="fa fa-shopping-cart"></i> <?php echo $text_cart; ?></strong></a>&nbsp;&nbsp;&nbsp; --><a href="<?php echo $checkout; ?>" class="btn btn_black btn-buy"><?php echo $text_checkout; ?></a></p>
          </div>
        </div>










        <li style="display: none;">
          <table class="table table-striped">
            <?php foreach ($products as $product) { ?>
            <tr>
              <td class="text-center"><?php if ($product['thumb']) { ?>
                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                <?php } ?></td>
              <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                <?php if ($product['option']) { ?>
                <?php foreach ($product['option'] as $option) { ?>
                <br />
                - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
                <?php } ?>
                <?php } ?>
                <?php if ($product['recurring']) { ?>
                <br />
                - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
                <?php } ?></td>
              <td class="text-right">x <?php echo $product['quantity']; ?></td>
              <td class="text-right"><?php echo $product['total']; ?></td>
              <td class="text-center"><button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
            </tr>
            <?php } ?>
            <?php foreach ($vouchers as $voucher) { ?>
            <tr>
              <td class="text-center"></td>
              <td class="text-left"><?php echo $voucher['description']; ?></td>
              <td class="text-right">x&nbsp;1</td>
              <td class="text-right"><?php echo $voucher['amount']; ?></td>
              <td class="text-center text-danger"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
            </tr>
            <?php } ?>
          </table>
        </li>
        <li style="display: none">
          <div>
            <table class="table table-bordered">
              <?php foreach ($totals as $total) { ?>
              <tr>
                <td class="text-right"><strong><?php echo $total['title']; ?></strong></td>
                <td class="text-right"><?php echo $total['text']; ?></td>
              </tr>
              <?php } ?>
            </table>
            <p class="text-right"><!-- <a href="<?php echo $cart; ?>"><strong><i class="fa fa-shopping-cart"></i> <?php echo $text_cart; ?></strong></a>&nbsp;&nbsp;&nbsp; --><a href="<?php echo $checkout; ?>" class="btn btn_black btn-buy"><?php echo $text_checkout; ?></a></p>
          </div>
        </li>
        <?php } else { ?>
        <!-- <li> -->
          <p class="text-center"><?php echo $text_empty; ?></p>
        <!-- </li> -->
        <?php } ?>
      </div>

    </div>
  </div>

</div>









<?php if (false) { ?>
<ul class="dropdown-menu">
  <?php if ($products || $vouchers) { ?>
  <li>
    <table class="table table-striped">
      <?php foreach ($products as $product) { ?>
      <tr>
        <td class="text-center"><?php if ($product['thumb']) { ?>
          <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
          <?php } ?></td>
        <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
          <?php if ($product['option']) { ?>
          <?php foreach ($product['option'] as $option) { ?>
          <br />
          - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
          <?php } ?>
          <?php } ?>
          <?php if ($product['recurring']) { ?>
          <br />
          - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
          <?php } ?></td>
        <td class="text-right">x <?php echo $product['quantity']; ?></td>
        <td class="text-right"><?php echo $product['total']; ?></td>
        <td class="text-center"><button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
      </tr>
      <?php } ?>
      <?php foreach ($vouchers as $voucher) { ?>
      <tr>
        <td class="text-center"></td>
        <td class="text-left"><?php echo $voucher['description']; ?></td>
        <td class="text-right">x&nbsp;1</td>
        <td class="text-right"><?php echo $voucher['amount']; ?></td>
        <td class="text-center text-danger"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
      </tr>
      <?php } ?>
    </table>
  </li>
  <li>
    <div>
      <table class="table table-bordered">
        <?php foreach ($totals as $total) { ?>
        <tr>
          <td class="text-right"><strong><?php echo $total['title']; ?></strong></td>
          <td class="text-right"><?php echo $total['text']; ?></td>
        </tr>
        <?php } ?>
      </table>
      <p class="text-right"><a href="<?php echo $cart; ?>"><strong><i class="fa fa-shopping-cart"></i> <?php echo $text_cart; ?></strong></a>&nbsp;&nbsp;&nbsp;<a href="<?php echo $checkout; ?>"><strong><i class="fa fa-share"></i> <?php echo $text_checkout; ?></strong></a></p>
    </div>
  </li>
  <?php } else { ?>
  <li>
    <p class="text-center"><?php echo $text_empty; ?></p>
  </li>
  <?php } ?>
</ul>
<?php } ?>

<script>
  $('.js-btnproduct-minus').on('click', function(e){
    e.preventDefault;
    var id = $(this).data('id');
    var q = parseInt( $('input[name="quantity['+id+']"]').val() );
    $('input[name="quantity['+id+']"]').val(q-1);
  });


  $('.js-btnproduct-plus').on('click', function(e){
    e.preventDefault;
    var id = $(this).data('id');
    var q = parseInt( $('input[name="quantity['+id+']"]').val() );
    $('input[name="quantity['+id+']"]').val(q+1);
  });


</script>