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
      <div class="col-sm-12">
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
          <h1><?php echo $heading_title; ?></h1>
          <?php echo $text_message; ?>
          <div class="buttons">
            <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
          </div>
          <?php echo $content_bottom; ?>
        </div>
      </div>
      <?php // echo $column_right; ?>
    </div>
  </div>

</main>


<?php echo $footer; ?>