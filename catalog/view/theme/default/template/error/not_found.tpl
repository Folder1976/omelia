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
      <h1><?php echo $heading_title; ?></h1>
    </div>
  </div>

  <div class="container">
    <div class="row">
      <div class="col">
        <p><?php echo $text_error; ?></p>
        <div class="buttons clearfix">
          <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
        </div>
      </div>
    </div>
  </div>
</main>



<div class="container" style="display: none;">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
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
      <p><?php echo $text_error; ?></p>
      <div class="buttons clearfix">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<br><br>
<?php echo $footer; ?>
