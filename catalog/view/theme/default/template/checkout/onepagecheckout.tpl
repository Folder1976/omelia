<?php echo $header; ?>
<main class="site-content checkout-page" id="content">
  <div class="container">
    <div class="row">
      <div class="bread_crumbs">
        <ul>
          <?php foreach ($breadcrumbs as $breadcrumb) { ?>
          <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
    </div>
    <div class="row">
      <h1>оформлення замовлення</h1>
    </div>
  </div>

  <div class="container">
    <div class="row">
      <?php if ($error_warning) { ?>
      <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
        <button type="button" class="close" data-dismiss="alert">&times;</button>
      </div>
      <?php } ?>
    </div>

    <div class="row">
      <?php if (!$c_logged) { ?>
        <div id="cart-auth-wrap">
          <div class="cart-auth">Авторизуйтесь, щоб відслідкувати статус виконання покупки та зберегти її історію <a href="javascript:void(0)" class="btn btn_grey js-checkout-auth-form-toggle">Авторизуватись <svg class="svg-cart-right-arrow"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#right-arrow"></use></svg></a></div>
          <div class="checkout-auth-form-wrapper">
            <form  method="post" enctype="multipart/form-data" id="LoginModal" class="checkout-auth-form">
              <div class="form-group">
                <div class="errors-block alert-danger"></div>
              </div>
              <div class="form-group">
                <!-- <label class="control-label" for="input-email"><?php echo $entry_email; ?></label> -->
                <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control input" />
              </div>
              <div class="form-group">
                <!-- <label class="control-label" for="input-password"><?php echo $entry_password; ?></label> -->
                <input type="password" name="password" value="" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control input" />
                <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></div>
              <div class="btn btn-primary submit-login-form" ><?php echo $button_login; ?></div>
              <div>
                <a href="<?php echo $register ?>"> <?=$text_register;?></a>
              </div>
            </form>
          </div>
        </div>
      <?php } ?>
    </div>

    <div class="row">
      <div class="checkout__top">
        <div class="row">
          <div class="col-12">
            <a href="/index.php?route=checkout/cart" class="go-back"><svg class="svg-cart-left-arrow"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#left-arrow"></use></svg> Повернутись до корзини</a>

            <div class="checkout__total-sum-header">Загальна сума: <span><?php echo $totals[0]['text']; ?></span></div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="checkout__steps">
    <form action="">
    <div class="container">
      <div class="row">
        <div class="col-lg-5">
          <div class="checkout__step js-step-1">
            <div class="checkout__step-number">1</div>
            <div class="checkout__step-content">
              <div class="title">контактні дані</div>
              <input type="text" id="firstname-ch" value="" name="firstname" class="input" placeholder="Ваше імʼя">
              <div class="error alert-danger"></div>
              <input type="text" id="telephone-ch" value="" name="telephone" class="input js-input-phone" placeholder="Номер телефону">
              <div class="error alert-danger"></div>
              <a href="javascript:void(0)" class="btn btn_black checkout-btn-step-1 js-step-1-continue active-view">продовжити</a>
              <a href="javascript:void(0)" class="checkout-edit-step-1 active-hidden js-step-1-edit">Редагувати</a>
            </div>
          </div>
        </div>
        <!-- /.col-lg-5 -->
        <div class="col-lg-7">
          <div class="checkout__step js-step-2">
            <div class="checkout__step-number">2</div>
            <div class="checkout__step-content">
              <div class="title">доставка і оплата</div>
              <ul class="step-tabs">
                <li class="active"><a href="javascript:void(0)" data-tab="delivery">Доставка</a></li>
                <li><a href="javascript:void(0)" data-tab="pay">Оплата</a></li>
              </ul>

              <div id="delivery" class="step-tab-content active">
                <div class="row">
                  <?php foreach ($shippig_methods as $shipping_method) { ?>
                    <div class="col-md-6">
                      <div class="radio-wrap">
                        <input class="radio <?= substr($shipping_method['value'], strpos($shipping_method['value'], '.')+1 )?>" id="delivery-self" name="method-delivery" type="radio" value='{"title": "<?php echo $shipping_method['title'] ?>", "code": "<?php echo $shipping_method['value'] ?>", "comment":"", "shipping_method":"<?php echo $shipping_method['value'] ?>", "cost":"<?php echo $shipping_method['cost'] ?>","tax_class_id":""}'>
                        <label class="label" for="delivery-self"><?php echo $shipping_method['title'] ?></label>
                      </div>
                    </div>
                  <?php } ?>
                </div>
                <div class="row">
                  <div class="col">

                    <div id="delivery-self-content" class="delivery-content active">
                      <div class="title">Наша адреса:</div>
                      <div class="row">
                        <div class="col-md-4">
                          <p>м. Київ<br>вул. Чорновола, 56</p>
                          <p>ПН - СБ: 10 - 17 <br>НД: вихідний</p>
                        </div>
                        <div class="col-md-4">
                          <p><a href="tel:+380971101107">+38 097 11 01 107</a></p>
                          <p><a href="tel:+380971101107">+38 097 11 01 107</a></p>
                          <p><a href="" style="text-decoration: underline;">Зателефонувати мені</a></p>
                        </div>
                      </div>
                    </div>

                    <div id="delivery-privat-content" class="delivery-content">
                      <div class="row">
                        <div class="col-md-6">
                          <select name="privat-region" id="privat-region" class="form-control form-control-select" placeholder="Область">
                            <option value="1">Область 1</option>
                            <option value="2">Область 2</option>
                            <option value="3">Область 3</option>
                          </select>
                        </div>
                        <div class="col-md-6">
                          <select name="privat-sity" id="privat-sity" class="form-control form-control-select" placeholder="Місто">
                            <option value="1">Місто 1</option>
                            <option value="2">Місто 2</option>
                            <option value="3">Місто 3</option>
                          </select>
                        </div>
                        <div class="col-md-12">
                          <select name="privat-department" id="privat-department" class="form-control form-control-select" placeholder="Відділення">
                            <option value="1">Відділення 1</option>
                            <option value="2">Відділення 2</option>
                            <option value="3">Відділення 3</option>
                          </select>
                        </div>
                      </div>
                    </div>

                    <div id="delivery-nova-post-content" class="delivery-content">
                      <div class="row">
                        <div class="col-md-6">
                          <select name="nova-post-region" id="nova-post-region" class="form-control form-control-select" placeholder="Область">
                            <option value="1">Область 1</option>
                            <option value="2">Область 2</option>
                            <option value="3">Область 3</option>
                          </select>
                        </div>
                        <div class="col-md-6">
                          <select name="nova-post-sity" id="nova-post-sity" class="form-control form-control-select" placeholder="Місто">
                            <option value="1">Місто 1</option>
                            <option value="2">Місто 2</option>
                            <option value="3">Місто 3</option>
                          </select>
                        </div>
                        <div class="col-md-12">
                          <select name="nova-post-department" id="nova-post-department" class="form-control form-control-select" placeholder="Відділення">
                            <option value="1">Відділення 1</option>
                            <option value="2">Відділення 2</option>
                            <option value="3">Відділення 3</option>
                          </select>
                        </div>
                      </div>
                    </div>

                    <div id="delivery-courier-content" class="delivery-content">
                      <div class="row">
                        <div class="col-md-6">
                          <select name="courier-region" id="courier-region" class="form-control form-control-select" placeholder="Область">
                            <option value="1">Область 1</option>
                            <option value="2">Область 2</option>
                            <option value="3">Область 3</option>
                          </select>
                        </div>
                        <div class="col-md-6">
                          <select name="courier-sity" id="courier-sity" class="form-control form-control-select" placeholder="Місто">
                            <option value="1">Місто 1</option>
                            <option value="2">Місто 2</option>
                            <option value="3">Місто 3</option>
                          </select>
                        </div>
                        <div class="col-md-12">
                          <input type="text" name="courier-department" id="courier-department" class="input" placeholder="Адреса">
                        </div>
                      </div>
                    </div>

                  </div>
                </div>
              </div>

              <div id="pay" class="step-tab-content">
                <div class="row">
                  <?php foreach ($payment_methods as $payment_method) { ?>
                    <div class="col-md-6">
                      <div class="radio-wrap">
                        <input class="radio <?php echo $payment_method['code']?>" id="payment-method-<?php echo $payment_method['code']?>" name="method-payment" type="radio" value='{"title": "<?php echo $payment_method['title'] ?>", "code": "<?php echo $payment_method['code'] ?>"}'>
                        <label class="label" for="payment-method-<?php echo $payment_method['code']?>"><?php echo $payment_method['title'] ?></label>
                      </div>
                    </div>
                  <?php } ?>
                </div>
                <div class="row">
                  <div class="col">
                    <textarea name="comment" id="comment" rows="3" class="input" placeholder="Коментар до замовлення..."></textarea>
                  </div>
                </div>
                
              </div>
            </div>
          </div>
        </div>
        <!-- /.col-lg-7 -->
      </div>

      <div class="row">
        <div class="col">
          <div class="btn-buy-wrap">
            <a href="javascript:void(0)" id="ajax-button-confirm" class="btn btn_black btn-buy">оформити замовлення</a>
          </div>          
        </div>
      </div>
    </div>
    </form>
  </div>
</main>



<script>
$('.js-checkout-auth-form-toggle').on('click', function(){
  $('.checkout-auth-form-wrapper').toggleClass('open');
});


function activeStep1(){
  $('.js-step-1').addClass('active');
  $('.js-step-2').removeClass('active');
  $('.checkout__step').find('input, textarea').prop('disabled', true);
  $('.checkout__step.active').find('input, textarea').prop('disabled', false);
};

function activeStep2(){
  $('.js-step-1').removeClass('active');
  $('.js-step-2').addClass('active');
  $('.checkout__step').find('input, textarea').prop('disabled', true);
  $('.checkout__step.active').find('input, textarea').prop('disabled', false);
  // $('.form-control-select').trigger('render');
};


// Кнопка "Продовжити". (Шаг 1 делаем неактивным; шаг 2 делаем активным)
$('.js-step-1-continue').on('click', function(e){
  e.preventDefault;

  $('#name').removeClass('error');
  $('#phone').removeClass('error');
  if ( $('#name').val()=='' ) {
    $('#name').addClass('error');
  }
  if ( $('#phone').val()=='' ) {
    $('#phone').addClass('error');
  }

  if ( $('#name').val()=='' || $('#phone').val()=='' ) {
    return;
  }

  activeStep2();
});

// кнопка для редактирование первого шага
$('.js-step-1-edit').on('click', function(e){
  e.preventDefault;
  activeStep1();
});


activeStep1();


// вкладки "Доставка" и "Оплата"
$('.step-tabs').on('click', 'a', function(e){
  e.preventDefault;
  // если вкладка не активна - ничего не делаем
  if ( ! $('.js-step-2').hasClass('active') ) {
    return;
  }

  var tab = $(this).data('tab');
  $('.step-tab-content').removeClass('active');
  $('#'+tab).addClass('active');

  $('.step-tabs li').removeClass('active');
  $(this).parent().addClass('active');
});


// при изменении способа доставки:
$('#delivery').on('change', '.radio', function(e){
  // какой method-delivery выбран
  var md = $('.radio[name=method-delivery]:checked').val();
  $('.delivery-content').removeClass('active');
  $('#' + md + '-content').addClass('active');
});

</script>






<!-- /****************************************/ -->


<?php if (false) { ?>
<div class="container">
<ul class="breadcrumb">
<?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
        </ul>
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
                                        <div id="content">
                                        <h1 style="text-align: center"><?=$heading_title?></h1>

                                        <div class="">
                                        <div class="checkout checkout-checkout">

                                        <?=$content_top; ?>

                                        <div class="payment">

                                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 payment-data">
                                        <div class="t-head">
                                        <?=$text_customer?>
                                        </div>
                                        <?php if(!$c_logged) {?>
                                        <div id="login_warning" class='checkout-content note'>
                                            <?=$text_notlogged?>

                                        </div>

                                        <?php } ?>
                                        <div id="payment-address">
                                        <div class="checkout-content" style="overflow: hidden; display: block;">
                                        <div class="fields-group">
                                        <?php if($c_logged) {?>
                                        <label for="firstname-ch"> <?=$text_full_name?> :</label><br>
                                        <input type="text" class="form-control large-field" id="firstname-ch" name="firstname"  value="<?php echo $c_name; ?>" readonly="true" />
                                        <?php } else { ?>
                                        <label for="firstname-ch"><span class="required">*</span>   <?=$text_full_name?> :</label><br>
                                        <input type="text" id="firstname-ch" name="firstname" value="" class="form-control large-field">
                                        <span class="error"></span>
                                        <?php }?>
                                        </div>
                                        <div class="fields-group">
                                        <label for="telephone-ch"><span class="required">*</span>   <?=$text_telephone?>:</label><br>
                                        <input type="tel" id="telephone-ch" name="telephone"
                                        value="<?php echo $telephone; ?>" class="form-control large-field">
                                        <span class="error"></span>

                                        </div>

                                        <div class="fields-group">
                                        <label for="email-ch">   <?=$text_email?>:</label><br>
                                        <input type="text" id="email-ch" name="email" value="<?php echo $email; ?>"
                                        class="form-control large-field">
                                        <span class="error"></span>

                                        </div>

                                        <div class="fields-group">
                                        <label for="city-ch"><span class="required">*</span>   <?=$text_town?>:</label><br>
                                        <input type="text" id="city-ch" name="city" value="<?php echo $city; ?>"
                                        class="form-control large-field">
                                        <span class="error"></span>
                                        </div>

                                        <div class="fields-group">
                                        <label for="delivery">  <?=$text_delivery_method?>:</label><br>
                                        <select onChange="updateShipping(this)" name="shipping_method" id="shipping-method" class="form-control large-field">
                                        <?php foreach ($shippig_methods as $shipping_method) { ?>
                                            <option

                                            value='{"title": "<?php echo $shipping_method['title'] ?>", "code": "<?php echo $shipping_method['value'] ?>", "comment":"", "shipping_method":"<?php echo $shipping_method['value'] ?>", "cost":"<?php echo $shipping_method['cost'] ?>","tax_class_id":""}'
                                                class="form-control large-field <?= substr($shipping_method['value'], strpos($shipping_method['value'], '.')+1 )?>"><?php echo $shipping_method['title'] ?></option>

                                                <?php } ?>
                                                </select>
                                                <br>
                                                <!--
                                                <div class="group-check">
                                                <label><input id="to-office" class="delivery-type" type="radio"
                                                name="delivery-type" checked="checked"
                                                value=" <?=$text_delivery_type_1?>">   <?=$text_delivery_type_1?></label> &nbsp;&nbsp;
                                                <label><input id="to-address" class="delivery-type" type="radio"
                                                name="delivery-type" value=" <?=$text_delivery_type_2?>">   <?=$text_delivery_type_2?></label>
                                                </div>
                                                -->
                                                <input type='hidden' name='delivery-type' value='delivery' />
                                                <label for='address_1'> <?=$text_delivery_type_2?>:</label><br/>
                                                <input type="text" name="address_1" id="address_1" value="<?php echo $address_1 ?>"
                                                class="form-control large-field" placeholder="  <?=$text_delivery_placeholder?>">
                                                <span class="error"></span>

                                                </div>
                                                <div class="fields-group" style="">
                                                <label for="payment_select">  <?=$text_payment_method?>:</label><br>
                                                <select id="payment_select" name="payment_method" class="form-control large-field">
                                                <?php foreach ($payment_methods as $payment_method) { ?>
                                                    <option
                                                        value='{"title": "<?php echo $payment_method['title'] ?>", "code": "<?php echo $payment_method['code'] ?>"}'
                                                        class="payment_method_value <?php echo $payment_method['code']?>"
                                                        style=""><?php echo $payment_method['title'] ?></option>
                                                        <?php } ?>
                                                        </select>
                                                        </div>

                                                        <div class="fields-group">
                                                        <label for="comment_field">  <?=$text_comment?>:</label><br>
                                                        <input type="text" id="comment_field" class="form-control large-field" name="comment"
                                                        value="<?php echo $comment ?>">
                                                        </div>
                                                        </div>
                                                        <div class="fields-group">
                                                        <?php if ($modules) { ?>
                                                            <div>
                                                                <?php foreach ($modules as $module) { ?>
                                                                    <?php echo $module; ?>
                                                                        <?php } ?>
                                                                        </div>
                                                                        <?php } ?>
                                                                        </div>

                                                                        </div>
                                                                       </div>
                                                                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 checkout-data">
                                                                        <div class="cart-info table-responsive">
                                                                        <table class="table">
                                                                        <thead>
                                                                        <tr>
                                                                        <td class="name t-head">  <?=$text_product?></td>
                                                                        <td class="price t-head"><?=$text_price?></td>
                                                                        <td class="quantity t-head"><?=$text_quantity?></td>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        <?php foreach ($products as $product) { ?>
                                                                            <tr>
                                                                                <td class="name">
                                                                                <a href="/index.php?route=product/product&product_id=<?php echo $product['product_id'] ?>"><?php echo $product['name'] ?></a>
                                                                                <div class="p-model">
                                                                                <?php echo $product['model'] ?>                                </div>
                                                                                <div class="cart-option">
                                                                                <?php foreach ($product['option'] as $option) { ?>
                                                                                    -
                                                                                        <small><?php echo $option['name']; ?>
                                                                                        : <?php echo $option['value']; ?></small><br/>
                                                                                        <?php } ?>
                                                                                        <?php if ($product['recurring']): ?>
                                                                                        -
                                                                                        <small><?php echo $text_payment_profile ?>
                                                                                        : <?php echo $product['profile_name'] ?></small>
                                                                                        <?php endif; ?>
                                                                                        </div>
                                                                                        </td>
                                                                                        <td class="price"><?php echo $product['price'] ?>   </td>
                                                                                        <td class="quantity"><?php echo $product['quantity'] ?>   </td>
                                                                                        </tr>

                                                                                        <?php } ?>
                                                                                        </table>
                                                                                        <hr/>
                                                                                        <table id='totals' class='table'>
                                                                                        <tbody>
            <?php foreach ($totals as $total) { ?>
            <tr class="subtotal">
              <td class="name subtotal"><strong><?php echo $total['title']; ?>:</strong></td>
              <td class="price"><?php echo $total['text']; ?></td>
            </tr>
            <?php } ?>
 
                                                                                        </tbody>
                                                                                        </table>                                                                        <div id="confirm">
                                                                        <div class="payment">
                                                                        <div id="ajax-button-confirm" class=" btn btn-lg btn-success">
                                                                        <?=$text_confirm?>
                                                                        </div>
                                                                        <a href='index.php?route=checkout/cart'>
                                                                        <div id="button-modify" class=" btn btn-lg btn-cancel">
                                                                        <?=$text_cart?>
                                                                        </div>
                                                                        </a>
                                                                        </div>

                                                                        </div>
 
                                                                                        </div>
                                                                                                                                                                                <div class="col-xs-12 checkout-subinfo">
                                                                                        <?=$content_bottom?>
                                                                                        </div>
                                                                                        </div>
                                                                                        </div>
                                                                                        </div>
                                                                                        <?php echo $column_right; ?></div>
                                                                                        </div>
                    <div id="LoginModal" class="modal fade" role="dialog">
                        <div class="modal-dialog">

                            <!-- Modal content-->
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h3><?php echo $text_returning_customer; ?></h3>
                                </div>
                                <div class="modal-body">

                                    <p><strong><?php echo $text_i_am_returning_customer; ?></strong></p>
                                    <form  method="post" enctype="multipart/form-data">
                                        <div class="form-group">
                                            <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
                                            <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                                        </div>
                                        <div class="form-group">
                                            <label class="control-label" for="input-password"><?php echo $entry_password; ?></label>
                                            <input type="password" name="password" value="" placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control" />
                                            <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></div>
                                        <div class="btn btn-primary submit-login-form" ><?php echo $button_login; ?></div>
                                        <div>
                                            <a href="<?php echo $register ?>"> <?=$text_register;?></a>
                                            <br>
                                            <a href="<?php echo $forgotten ?>"> <?=$text_forgotten;?></a>

                                        </div>

                                    </form>
                                    <div class="errors-block"></div>
                                </div>
                                </div>

                            </div>

                        </div>
                    </div>
    <div class="hiden_payment_info"  style="display:none;"></div>
<?php } ?>



<script type="text/javascript"><!--

function updateShipping(s) {
    shp = JSON.parse(s.value)
    $.ajax({
        url: 'index.php?route=checkout/shipping_method/save',
        type: 'post',
        data: shp,
        dataType: 'json',
        beforeSend: function() {
            $('#shipping-method').addClass('loading');
		},
        success: function(json) {
            $('.alert, .text-danger').remove();

            //if (json['redirect']) {
            //    location = json['redirect'];
            //}
            if (json['error']) {
                if (json['error']['warning']) {
                 // Error ylanyrkkaan....
                 alert(json['error']['warning']);
                }
            } else {
                $.ajax({
                    url: 'index.php?route=checkout/onepagecheckout/totals',
                    type: 'get',
                    success: function(json) {
                        $('#totals tbody').remove();
                        $('#totals').append('<tbody></tbody');
                        for (t in json['totals']) {
                            $('#totals tbody').append('<tr class="name subtotal"><td class="name subtotal"><strong>'+json['totals'][t]['title']+'</strong></td><td class="price">'+json['totals'][t]["text"]+'</td></tr>');
                            }
                    }
                    });
                // Update Totalsi!
            }
            $('#shipping-method').removeClass('loading');
        },
        error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
        }
        ); //ajax
}

$(document).ready(function () {

    $(' #LoginModal .submit-login-form ').on('click', function(){
        $.ajax({
                url: 'index.php?route=checkout/onepagecheckout/AjaxLogin',
                type: 'post',
                data: $('#LoginModal #input-email, #LoginModal #input-password '),
                dataType: 'json',
                beforeSend: function() {

                },
                success: function(json) {
                    console.log(json);
                   if(json.errors!=0){
                       if(typeof json.errors.warning!='undefined' && json.errors.warning!='')
                       $('#LoginModal .errors-block').html(json.errors.warning) ;
                       if(typeof json.errors.errors!='undefined'&& json.errors.errors!='')
                       $('#LoginModal .errors-block').append( '<br>' + json.errors.error ) ;
                   }
                   else if(json.errors==0){
                       $('#firstname-ch').prop('value',json.c_name);
                       $('#city-ch').prop('value',json.city);
                       $('#address_1').prop('value',json.address_1);
                       $('#email-ch').prop('value',json.email);
                       $('#telephone-ch').prop('value',json.telephone);
                       // $('#LoginModal').modal('hide');
                       $('#login_warning').html('');
                       $('#cart-auth-wrap').html('');
                   }
                },
                error: function(xhr, ajaxOptions, thrownError) {
                    alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                }
            }
        ); //ajax
        return false;
    });

            $('#ajax-button-confirm').on('click', function () {

$.ajax({
url: 'index.php?route=checkout/onepagecheckout',
type: 'post',
data: $('input[type=\'text\'], input[type=\'tel\'], input[type=\'radio\']:checked, input[type=\'checkbox\']:checked, select '),
dataType: 'json',
beforeSend: function () {
$('#ajax-button-confirm').addClass('preloader');

},
complete: function () {
$('#ajax-button-confirm').removeClass('preloader');

},
success: function (json) {
console.log(json);

if (json.error) {
if (json['error']['firstname']) {
$('#firstname-ch+.error').html(json['error']['firstname']);
}


if (json['error']['email']) {
    $('#email-ch+.error').html(json['error']['email']);
}

if (json['error']['telephone']) {
    $('#telephone-ch+.error').html(json['error']['telephone']);
}

if (json['error']['address_1']) {
    $('#address_1+.error').html(json['error']['address_1']);
}

if (json['error']['city']) {
    $('#city-ch+.error').html(json['error']['city']);
}
}

else if(json['cod']) {
    $.ajax({
        type: 'get',
        url: 'index.php?route=extension/payment/cod/confirm',
        cache: false,
        beforeSend: function() {
            $('#ajax-button-confirm').button('loading');
        },
        complete: function() {
            $('#ajax-button-confirm').button('reset');
        },
        success: function() {
            location = 'index.php?route=checkout/success';
        }
    });
}

else if(json['payment']) {
    $('.hiden_payment_info').html(json['payment']);
    console.log($('.hiden_payment_info a').attr('href'));
    location = $('.hiden_payment_info a').attr('href');
}
else {
    if (json.credit)
        credit_confirm('/index.php?route=checkout/part_payment_cart/getResult&from_privat24=true');
    else
        location = 'index.php?route=checkout/success';

}
},
error: function (xhr, ajaxOptions, thrownError) {
           alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
       }
});


});


});
//--></script>

<?php echo $footer; ?>
