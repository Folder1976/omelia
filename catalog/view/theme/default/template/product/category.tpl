<?php echo $header; ?>

<main class="site-content">
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

        <div class="view" style="display: none;">
          <span>Відображати:</span>
        </div>
      </div>
    </div>
  </div> <!-- /.content-top -->
  
  <script>
    //$(document).on('change', '#filter_manufacturer', function(){
    function filter(){   
        
        var url = '';
        var route = '<?php echo $_SERVER['REDIRECT_URL'];?>';
        
        var manufacturer_id = $('#filter_manufacturer').val();
        if(manufacturer_id > 0) url = url + 'manufacturer_id='+manufacturer_id+'&';
      
        var filter_color = $('#filter_color').val();
        if(filter_color != 0) url = url + 'filter_color='+filter_color+'&';
       
        var filter_size = $('#filter_size').val();
        if(filter_size != 0) url = url + 'filter_size='+filter_size+'&';
       
        var filter_price = $('#filter_price').val();
        if(filter_price != 0) url = url + 'filter_price='+filter_price+'&';
       
        
        
        if(url.length > 1){
          url = url.substring(0, url.length - 1);
          document.location.href = route+'?'+url;  
        }else{
          document.location.href = route;  
        }
        
    }//);
  </script>
  

  <div class="container" id="alerts-area"></div>

  <?php //echo $content_top; ?>
  <div class="filter">
    <div class="container">
      <div class="row">
        <div class="col-lg-9">
          <div class="filrer-inner">

            <select class="form-control form-control-select" name="filter_manufacturer" id="filter_manufacturer" onChange="filter()">
              <option value="0" <?php if(!isset($_GET['filter_color']) OR (isset($_GET['manufacturer_id']) AND $_GET['manufacturer_id'] == '0')) echo 'selected'; ?>>бренд</option>
              <?php if(isset($filter_manufactures)){ ?>
                <?php foreach($filter_manufactures as $manufacturer_id => $manufacturer){ ?>
                  <option <?php if(isset($_GET['manufacturer_id']) AND $_GET['manufacturer_id'] == $manufacturer_id) echo 'selected'; ?> value="<?php echo $manufacturer_id; ?>"><?php echo $manufacturer['name'];?></option>
                <?php } ?>
              <?php } ?>
            </select>

            <select class="form-control form-control-select" name="filter_color" id="filter_color" onChange="filter()">
              <option value="0" <?php if(!isset($_GET['filter_color']) OR (isset($_GET['filter_color']) AND $_GET['filter_color'] == '0')) echo 'selected'; ?>>колір</option>
              <?php if(isset($filter_attributes[12])){ ?>
                <?php foreach($filter_attributes[12] as $attribute){ ?>
                  <option <?php if(isset($_GET['filter_color']) AND $_GET['filter_color'] == $attribute) echo 'selected'; ?> value="<?php echo $attribute; ?>"><?php echo $attribute;?></option>
                <?php } ?>
              <?php } ?>
            </select>

            <select class="form-control form-control-select" name="filter_size" id="filter_size" onChange="filter()">
              <option value="0" <?php if(!isset($_GET['filter_size']) OR (isset($_GET['filter_size']) AND $_GET['filter_size'] == '0')) echo 'selected'; ?>>розмір</option>
               <?php if(isset($filter_attributes[13])){ ?>
                <?php foreach($filter_attributes[13] as $attribute){ ?>
                  <option <?php if(isset($_GET['filter_size']) AND $_GET['filter_size'] == $attribute) echo 'selected'; ?> value="<?php echo $attribute; ?>"><?php echo $attribute;?></option>
                <?php } ?>
              <?php } ?>
            </select>

            <select class="form-control form-control-select" name="filter_price" id="filter_price" onChange="filter()">
              <option value="0" <?php if(!isset($_GET['filter_price']) OR (isset($_GET['filter_price']) AND $_GET['filter_price'] == '0')) echo 'selected'; ?>>ціна</option>
                 <?php if(isset($filter_attributes[14])){ ?>
                <?php foreach($filter_attributes[14] as $attribute){ ?>
                  <option <?php if(isset($_GET['filter_price']) AND $_GET['filter_price'] == $attribute) echo 'selected'; ?> value="<?php echo $attribute; ?>"><?php echo $attribute;?></option>
                <?php } ?>
              <?php } ?>
            </select>

          </div>
        </div>
        <div class="col-lg-3">
          <div class="sort-inner">
            <select id="input-sort" class="form-control form-control-select" onchange="location = this.value;">
              <?php foreach ($sorts as $sorts) { ?>
              <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
              <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $text_sort; ?></option>
              <?php } else { ?>
              <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
      </div>
    </div>
  </div>

  <?php if ($products) { ?>
  <div class="container">
    <div class="product-list product-list__view-4">
      <?php foreach ($products as $product) { ?>
        <div class="product">
          <div class="img" style="background-image: url(<?php echo $product['thumb']; ?>);">
            <a href="<?php echo $product['href']; ?>" class="product-link"></a>
            <?php if(isset($product['options']['product_option_value']) AND count($product['options']['product_option_value']) > 0){?>
              <ul class="size">
                <?php foreach($product['options']['product_option_value'] as $option_value){ ?>
                  <li><a href="<?php echo $product['href']; ?>?product_option_value_id=<?php echo $option_value['product_option_value_id'] ;?>"><?php echo $option_value['name'] ;?></a></li>
                <?php } ?>
              </ul>
            <?php } ?>
            <div class="favorite"><a href="javascript:void(0)" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><svg class="svg-heart"><use xlink:href="catalog/view/theme/default/img/sprite/svgSprite.svg#heart"></use></svg></a></div>
          </div>
          <div class="title"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
          <div class="price">
            <?php if (!$product['special']) { ?>
            <?php echo $product['price']; ?>
            <?php } else { ?>
            <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
            <?php } ?>
            <?php if ($product['tax']) { ?>
            <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
            <?php } ?>
          </div>
        </div>
      <?php } ?>
      <div class="product null"></div>
      <div class="product null"></div>
      <div class="product null"></div>
      <div class="product null"></div>
      <div class="product null"></div>
    </div>
    <div class="pagination-wrap"><?php echo $pagination; ?></div>
  </div>
  <?php } ?>

</main>





















<?php if (false) { ?>
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
      <?php if ($thumb || $description) { ?>
      <div class="row">
        <?php if ($thumb) { ?>
        <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-10"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <hr>
      <?php } ?>
      <?php if ($categories) { ?>
      <h3><?php echo $text_refine; ?></h3>
      <?php if (count($categories) <= 5) { ?>
      <div class="row">
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>
      <?php if ($products) { ?>
      <div class="row">
        <div class="col-md-2 col-sm-6 hidden-xs">
          <div class="btn-group btn-group-sm">
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
          </div>
        </div>
        <div class="col-md-3 col-sm-6">
          <div class="form-group">
            <a href="<?php echo $compare; ?>" id="compare-total" class="btn btn-link"><?php echo $text_compare; ?></a>
          </div>
        </div>
        <div class="col-md-4 col-xs-6">
          <div class="form-group input-group input-group-sm">
            <label class="input-group-addon" for="input-sort"><?php echo $text_sort; ?></label>
            <select id="input-sort" class="form-control" onchange="location = this.value;">
              <?php foreach ($sorts as $sorts) { ?>
              <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
              <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="col-md-3 col-xs-6">
          <div class="form-group input-group input-group-sm">
            <label class="input-group-addon" for="input-limit"><?php echo $text_limit; ?></label>
            <select id="input-limit" class="form-control" onchange="location = this.value;">
              <?php foreach ($limits as $limits) { ?>
              <?php if ($limits['value'] == $limit) { ?>
              <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
              <?php } else { ?>
              <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
              <?php } ?>
              <?php } ?>
            </select>
          </div>
        </div>
      </div>
      <div class="row">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12">
          <div class="product-thumb">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div>
              <div class="caption">
                <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                <p><?php echo $product['description']; ?></p>
                <?php if ($product['price']) { ?>
                <p class="price">
                  <?php if (!$product['special']) { ?>
                  <?php echo $product['price']; ?>
                  <?php } else { ?>
                  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                  <?php } ?>
                  <?php if ($product['tax']) { ?>
                  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                  <?php } ?>
                </p>
                <?php } ?>
                <?php if ($product['rating']) { ?>
                <div class="rating">
                  <?php for ($i = 1; $i <= 5; $i++) { ?>
                  <?php if ($product['rating'] < $i) { ?>
                  <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } else { ?>
                  <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                  <?php } ?>
                  <?php } ?>
                </div>
                <?php } ?>
              </div>
              <div class="button-group">
                <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php } ?>





<?php echo $footer; ?>
