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
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
            <fieldset>
              <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo $entry_newsletter; ?></label>
                <div class="col-sm-10">
                  <?php if ($newsletter) { ?>
                  <label class="radio-inline">
                    <input type="radio" name="newsletter" value="1" checked="checked" />
                    <?php echo $text_yes; ?> </label>
                  <label class="radio-inline">
                    <input type="radio" name="newsletter" value="0" />
                    <?php echo $text_no; ?></label>
                  <?php } else { ?>
                  <label class="radio-inline">
                    <input type="radio" name="newsletter" value="1" />
                    <?php echo $text_yes; ?> </label>
                  <label class="radio-inline">
                    <input type="radio" name="newsletter" value="0" checked="checked" />
                    <?php echo $text_no; ?></label>
                  <?php } ?>
                </div>
              </div>
            </fieldset>
            <div class="buttons clearfix">
              <div class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-default"><?php echo $button_back; ?></a></div>
              <div class="pull-right">
                <input type="submit" value="<?php echo $button_continue; ?>" class="btn btn-primary" />
              </div>
            </div>
          </form>
          <?php echo $content_bottom; ?>
        </div>
        
      </div>
      <?php // echo $column_right; ?>
    </div>
  </div>

</main>



<?php echo $footer; ?>