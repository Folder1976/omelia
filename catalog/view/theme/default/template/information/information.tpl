<?php echo $header; ?>

<main class="site-content information-page">
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
    <div class="row"><?php echo $column_left; ?>
      <?php if ($column_left && $column_right) { ?>
      <?php $class = 'col-sm-6'; ?>
      <?php } elseif ($column_left || $column_right) { ?>
      <?php $class = 'col-sm-9'; ?>
      <?php } else { ?>
      <?php $class = 'col-sm-12'; ?>
      <?php } ?>
      <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
        <?php echo $description; ?><?php echo $content_bottom; ?></div>
      <?php echo $column_right; ?></div>
  </div>
</main>
<?php echo $footer; ?>