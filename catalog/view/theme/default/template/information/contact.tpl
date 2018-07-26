<?php echo $header; ?>


<main class="site-content contact-page">
  <div class="content-top">
    <div class="container">
      <div class="content-top-inner">
        <div>
          <div class="bread_crumbs">
            <ul>
              <?php foreach ($breadcrumbs as $breadcrumb) { ?>
              <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
              <?php } ?>
            </ul>
          </div>
          <h1><?php echo $heading_title; ?></h1>
        </div>
      </div>
    </div>
  </div> <!-- /.content-top -->

  
  <div class="container">
    <div class="row">
      <div class="col-lg-8 offset-lg-2">
        <div class="address-row">
          <div class="social-icons">
            <a href="#"><svg class="svg-facebook"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#facebook"></use></svg></a>
            <a href="#"><svg class="svg-instagram"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#instagram"></use></svg></a>
          </div>
          <div class="address">
            <h3><?php echo $text_address; ?></h3>
            <p>ТРЦ KingCrossLeopolis<br>Вул. Стрийська, 30, с. Сокільники</p>
          </div>          
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-lg-8 offset-lg-2">
        <div class="contact-wrap">
          <div class="block">
            <div class="title">телефон</div>
            <p><a href="tel:+380971101107"></a><?php echo $telephone; ?><br><a href="tel:+380971101107"></a><?php echo $telephone; ?></p>
          </div>
          <div class="block">
            <div class="title">EMAIL</div>
            <p><a href="mailto:INFO@Julia.COM.UA">INFO@Julia.COM.UA</a></p>
          </div>
          <div class="block">
            <div class="title">ГРАФІК РОБОТИ</div>
            <p>щодня з 10:00 до 22:00<br>нд з 10:00 до 22:00</p>
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-lg-8 offset-lg-2">
        <div class="map"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d5153.272891773276!2d24.00650844141766!3d49.774095284979474!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1suk!2sua!4v1532624159465" height="276" frameborder="0" style="border:0" allowfullscreen></iframe></div>
        <p class="map-text">Бажаєте запитати про щось? Ми будемо раді відповісти на ваші питання</p>
      </div>
    </div>


    <div class="row">
      <div class="col-lg-8 offset-lg-2">

        <div class="text-center">
          <button class="btn js-open-contact-form">запитати <svg class="svg-right-arrow"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#right-arrow"></use></svg></button>
        </div>


        <?php if ( strlen($error_name) != 0 || strlen($error_email) != 0 || strlen($error_enquiry) != 0 ) { ?>
          <div class="contact-form open">
        <?php } else { ?>
          <div class="contact-form">
        <?php } ?>
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
              <div class="form-group required">
                <!-- <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label> -->
                <div class="row">
                  <div class="col-sm-6">
                    <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control input" placeholder="<?php echo $entry_name; ?>">
                    <?php if ($error_name) { ?>
                    <div class="text-danger"><?php echo $error_name; ?></div>
                    <?php } ?>
                  </div>
                  <div class="col-sm-6">
                    <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control input" placeholder="<?php echo $entry_email; ?>">
                    <?php if ($error_email) { ?>
                    <div class="text-danger"><?php echo $error_email; ?></div>
                    <?php } ?>
                  </div>
                </div>
              </div>
              <div class="form-group required">
                <!-- <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label> -->
                
              </div>
              <div class="form-group required">
                <!-- <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label> -->
                <div class="row">
                  <div class="col-sm-12">
                    <textarea name="enquiry" rows="5  " id="input-enquiry" class="form-control input" placeholder="<?php echo $entry_enquiry; ?>"><?php echo $enquiry; ?></textarea>
                    <?php if ($error_enquiry) { ?>
                    <div class="text-danger"><?php echo $error_enquiry; ?></div>
                    <?php } ?>
                  </div>
                </div>
              </div>
              <?php echo $captcha; ?>
            </fieldset>
            <div class="buttons text-center">
              <div class="pull-right">
                <input class="btn" type="submit" value="<?php echo $button_submit; ?>" />
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

</main>
<?php echo $footer; ?>



<script>
$('.js-open-contact-form').on('click', function(){
  $('.contact-form').toggleClass('open');
});
</script>































<div class="container" style="display: none;">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?></h1>
      <h3><?php echo $text_location; ?></h3>
      <div class="panel panel-default">
        <div class="panel-body">
          <div class="row">
            <?php if ($image) { ?>
            <div class="col-sm-3"><img src="<?php echo $image; ?>" alt="<?php echo $store; ?>" title="<?php echo $store; ?>" class="img-thumbnail" /></div>
            <?php } ?>
            <div class="col-sm-3"><strong><?php echo $store; ?></strong><br />
              <address>
              <?php echo $address; ?>
              </address>
              <?php if ($geocode) { ?>
              <a href="https://maps.google.com/maps?q=<?php echo urlencode($geocode); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
              <?php } ?>
            </div>
            <div class="col-sm-3"><strong><?php echo $text_telephone; ?></strong><br>
              <?php echo $telephone; ?><br />
              <br />
              <?php if ($fax) { ?>
              <strong><?php echo $text_fax; ?></strong><br>
              <?php echo $fax; ?>
              <?php } ?>
            </div>
            <div class="col-sm-3">
              <?php if ($open) { ?>
              <strong><?php echo $text_open; ?></strong><br />
              <?php echo $open; ?><br />
              <br />
              <?php } ?>
              <?php if ($comment) { ?>
              <strong><?php echo $text_comment; ?></strong><br />
              <?php echo $comment; ?>
              <?php } ?>
            </div>
          </div>
        </div>
      </div>
      <?php if ($locations) { ?>
      <h3><?php echo $text_store; ?></h3>
      <div class="panel-group" id="accordion">
        <?php foreach ($locations as $location) { ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><a href="#collapse-location<?php echo $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion"><?php echo $location['name']; ?> <i class="fa fa-caret-down"></i></a></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-location<?php echo $location['location_id']; ?>">
            <div class="panel-body">
              <div class="row">
                <?php if ($location['image']) { ?>
                <div class="col-sm-3"><img src="<?php echo $location['image']; ?>" alt="<?php echo $location['name']; ?>" title="<?php echo $location['name']; ?>" class="img-thumbnail" /></div>
                <?php } ?>
                <div class="col-sm-3"><strong><?php echo $location['name']; ?></strong><br />
                  <address>
                  <?php echo $location['address']; ?>
                  </address>
                  <?php if ($location['geocode']) { ?>
                  <a href="https://maps.google.com/maps?q=<?php echo urlencode($location['geocode']); ?>&hl=<?php echo $geocode_hl; ?>&t=m&z=15" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i> <?php echo $button_map; ?></a>
                  <?php } ?>
                </div>
                <div class="col-sm-3"> <strong><?php echo $text_telephone; ?></strong><br>
                  <?php echo $location['telephone']; ?><br />
                  <br />
                  <?php if ($location['fax']) { ?>
                  <strong><?php echo $text_fax; ?></strong><br>
                  <?php echo $location['fax']; ?>
                  <?php } ?>
                </div>
                <div class="col-sm-3">
                  <?php if ($location['open']) { ?>
                  <strong><?php echo $text_open; ?></strong><br />
                  <?php echo $location['open']; ?><br />
                  <br />
                  <?php } ?>
                  <?php if ($location['comment']) { ?>
                  <strong><?php echo $text_comment; ?></strong><br />
                  <?php echo $location['comment']; ?>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>











