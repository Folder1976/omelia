<?php echo $header; ?>
<main class="site-content account-page">
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
  </div>

  <div class="container">
    <div class="row">
      <div class="col">
        <?php if ($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
        <?php } ?>
      </div>
    </div>
  </div>

  <div class="container">
    <div class="row">
      <div class="col-sm-12">
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
          <h3><?php echo $text_my_account; ?></h3>
          <ul class="list-unstyled">
            <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
            <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
            <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
            <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          </ul>
          <?php if ($credit_cards) { ?>
          <h3><?php echo $text_credit_card; ?></h3>
          <ul class="list-unstyled">
            <?php foreach ($credit_cards as $credit_card) { ?>
            <li><a href="<?php echo $credit_card['href']; ?>"><?php echo $credit_card['name']; ?></a></li>
            <?php } ?>
          </ul>
          <?php } ?>
          <h3><?php echo $text_my_orders; ?></h3>
          <ul class="list-unstyled">
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <!-- <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li> -->
            <?php // if ($reward) { ?>
            <!-- <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li> -->
            <?php // } ?>
            <!-- <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li> -->
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <!-- <li><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li> -->
          </ul>
          <h3><?php echo $text_my_newsletter; ?></h3>
          <ul class="list-unstyled">
            <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
          </ul>
          <h3>Вихід</h3>
          <ul class="list-unstyled">
            <li><a href="/index.php?route=account/logout">Вихід</a></li>
          </ul>
          <?php echo $content_bottom; ?>
        </div>
      </div>
      <?php // echo $column_right; ?>
    </div>
  </div>

</main>


<?php echo $footer; ?> 