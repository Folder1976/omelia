<?php echo $header; ?>

<main class="site-content checkout-page">
  <div class="container">
    <div class="row">
      <div class="bread_crumbs">
        <ul>
          <li><a href="/">Головна</a></li>
          <li><a href="/">Корзина</a></li>
        </ul>
      </div>
    </div>
    <div class="row">
      <h1>оформлення замовлення</h1>
    </div>
  </div>

  <div class="container">
    <div class="row">
      <div class="col">
        <?php if ($attention) { ?>
        <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
          <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <?php if ($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
          <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
          <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
      </div>
    </div>
  </div>


  <div class="container">
    <div class="row">
      <div class="col">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
          <div class="dropdown-menu side-panel" id="cart-product-list">
            <?php if ($products) { ?>
              <div class="mini-cart-hidden">
                <div class="cart-product-list__header">
                  <div class="product__col-1"><span class="js-cart-total bold"><?php //echo $text_items; ?></span>&nbsp;&nbsp;&nbsp;товари у кошику</div>
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
                      <div class="field">
                        <div class="field-name"><?php echo $option['name']; ?>: <?php echo $option['value']; ?></div>
                      </div>

                      <?php if ( false /* $option['option_id'] == 11 */ ) { // если опция - "размер", то: ?>
                      <div class="field product-size">
                        <div class="field-name"><?php echo $option['name']; ?>:</div>
                        <div class="field-value"><?php echo $option['value']; ?></div>
                      </div>
                      <?php } ?>
                      <?php if ( false /* $option['option_id'] == 5 */) { // если опция - "цвет", то: ?>
                      <div class="field product-color">
                        <div class="field-name"><?php echo $option['name']; ?>: <?php //echo $product_color['name']; ?></div>
                        <div class="field-value field-value_color"><span style="background: <?php //echo $product_color['hex']; ?>;"></span></div>
                      </div>
                      <?php } ?>

                    <?php } ?>
                    <?php } ?>

                    <?php if (!$product['stock']) { ?>
                    <span class="text-danger">***</span>
                    <?php } ?>

                    <?php if ($product['reward']) { ?>
                    <br />
                    <small><?php echo $product['reward']; ?></small>
                    <?php } ?>
                    <?php if ($product['recurring']) { ?>
                    <br />
                    <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                    <?php } ?>


                    <div class="field product-count">
                        <div class="field-name">Кількість: <span class="js-product-count"><?php echo $product['quantity']; ?></span> шт</div>
                        <input type="hidden" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-control" />
                        <button class="product-count__btn js-btnproduct-minus" data-id="<?php echo $product['cart_id']; ?>">-</button>
                        <button class="product-count__btn js-btnproduct-plus" data-id="<?php echo $product['cart_id']; ?>">+</button>
                    </div>

                    <div class="remove-product mini-cart-hidden">
                      <span onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><svg class="svg-remove"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#close"></use></svg>Видалити</span>
                    </div>

                </div>
              </div>
              <div class="product__col-2 mini-cart-hidden">UAH  1 500</div>
              <div class="product__col-3 mini-cart-hidden bold">UAH  3 000</div>
            </div>

            <?php } ?>

            <div>
              <table class="table table-bordered">
                <?php foreach ($totals as $total) { ?>
                <tr>
                  <td class="text-right"><strong><?php echo $total['title']; ?></strong></td>
                  <td class="text-right"><?php echo $total['text']; ?></td>
                </tr>
                <?php } ?>
              </table>
              
              <div class="cart-product-list__footer">
                <div class="mini-cart-hidden">
                  <label for="gift-wrap">Подарункова упаковка (50грн)</label>
                  <input type="checkbox" class="checkbox" id="gift-wrap">
                </div>
                <div class="total-summ-header mini-cart-hidden iblock">Загальна сума: <span class="js-cart-total">UAH 3 330</span></div>
                <p class="text-right">
                  <!-- <div class="pull-left"><a href="<?php echo $continue; ?>" class="btn btn_black btn-buy"><?php echo $button_shopping; ?></a></div> -->
                  <div class="pull-right"><a href="<?php echo $checkout; ?>" class="btn btn_black btn-buy"><?php echo $button_checkout; ?></a></div>
                </p>
              </div>
            </div>


            <?php } ?>
          </div>














          </div>
        </form>
      </div>
    </div>
  </div>
</main>




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




































<div class="container" style="display: none;">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?>
        <?php if ($weight) { ?>
        &nbsp;(<?php echo $weight; ?>)
        <?php } ?>
      </h1>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" style="display: none;">
        <div class="table-responsive">
          <table class="table table-bordered">
            <thead>
              <tr>
                <td class="text-center"><?php echo $column_image; ?></td>
                <td class="text-left"><?php echo $column_name; ?></td>
                <td class="text-left"><?php echo $column_model; ?></td>
                <td class="text-left"><?php echo $column_quantity; ?></td>
                <td class="text-right"><?php echo $column_price; ?></td>
                <td class="text-right"><?php echo $column_total; ?></td>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($products as $product) { ?>
              <tr>
                <td class="text-center"><?php if ($product['thumb']) { ?>
                  <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
                  <?php } ?></td>
                <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                  <?php if (!$product['stock']) { ?>
                  <span class="text-danger">***</span>
                  <?php } ?>
                  <?php if ($product['option']) { ?>
                  <?php foreach ($product['option'] as $option) { ?>
                  <br />
                  <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                  <?php } ?>
                  <?php } ?>
                  <?php if ($product['reward']) { ?>
                  <br />
                  <small><?php echo $product['reward']; ?></small>
                  <?php } ?>
                  <?php if ($product['recurring']) { ?>
                  <br />
                  <span class="label label-info"><?php echo $text_recurring_item; ?></span> <small><?php echo $product['recurring']; ?></small>
                  <?php } ?></td>
                <td class="text-left"><?php echo $product['model']; ?></td>
                <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                    <input type="text" name="quantity[<?php echo $product['cart_id']; ?>]" value="<?php echo $product['quantity']; ?>" size="1" class="form-control" />
                    <span class="input-group-btn">
                    <button type="submit" data-toggle="tooltip" title="<?php echo $button_update; ?>" class="btn btn-primary"><i class="fa fa-refresh"></i></button>
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="cart.remove('<?php echo $product['cart_id']; ?>');"><i class="fa fa-times-circle"></i></button>
                    </span></div></td>
                <td class="text-right"><?php echo $product['price']; ?></td>
                <td class="text-right"><?php echo $product['total']; ?></td>
              </tr>
              <?php } ?>
              <?php foreach ($vouchers as $voucher) { ?>
              <tr>
                <td></td>
                <td class="text-left"><?php echo $voucher['description']; ?></td>
                <td class="text-left"></td>
                <td class="text-left"><div class="input-group btn-block" style="max-width: 200px;">
                    <input type="text" name="" value="1" size="1" disabled="disabled" class="form-control" />
                    <span class="input-group-btn">
                    <button type="button" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger" onclick="voucher.remove('<?php echo $voucher['key']; ?>');"><i class="fa fa-times-circle"></i></button>
                    </span></div></td>
                <td class="text-right"><?php echo $voucher['amount']; ?></td>
                <td class="text-right"><?php echo $voucher['amount']; ?></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </form>
      <?php if ($modules) { ?>
      <h2><?php echo $text_next; ?></h2>
      <p><?php echo $text_next_choice; ?></p>
      <div class="panel-group" id="accordion">
        <?php foreach ($modules as $module) { ?>
        <?php echo $module; ?>
        <?php } ?>
      </div>
      <?php } ?>
      <br />
      <div class="row">
        <div class="col-sm-4 col-sm-offset-8">
          <table class="table table-bordered">
            <?php foreach ($totals as $total) { ?>
            <tr>
              <td class="text-right"><strong><?php echo $total['title']; ?>:</strong></td>
              <td class="text-right"><?php echo $total['text']; ?></td>
            </tr>
            <?php } ?>
          </table>
        </div>
      </div>
      <div class="buttons clearfix">
        <div class="pull-left"><a href="<?php echo $continue; ?>" class="btn btn-default"><?php echo $button_shopping; ?></a></div>
        <div class="pull-right"><a href="<?php echo $checkout; ?>" class="btn btn-primary"><?php echo $button_checkout; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
