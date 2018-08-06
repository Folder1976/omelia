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
          <h2><?php echo $heading_title; ?></h2>
          <?php if ($products) { ?>
            <div class="wishlist-list">
            <?php foreach ($products as $product) { ?>
              <div class="product">
                <div class="product__col-1">
                  <div class="col-foto"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail"></a></div>
                  <div class="col-detail">
                    <div class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
                    <div class="product-price"><?php if ($product['price']) { ?>
                        <span class="price">
                          <?php if (!$product['special']) { ?>
                          <?php echo $product['price']; ?>
                          <?php } else { ?>
                          <b><?php echo $product['special']; ?></b> <s><?php echo $product['price']; ?></s>
                          <?php } ?>
                        </span>
                        <?php } ?></div>
                    <div class="field">
                      <div class="field-name">Артикул: <?php echo $product['model']; ?></div>
                    </div>

                    <div class="field">
                      <div class="field-name"><?php echo $column_stock; ?>: <?php echo $product['stock']; ?></div>
                    </div>


                    <div class="remove-product">
                      <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="btn btn-primary">Додати в кошик</button>
                        <a href="<?php echo $product['remove']; ?>" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger">Видалити</a>
                    </div>

                  </div>
                </div>
              </div>
            <?php } ?>
          </div>






          <?php if (false) { ?>
          <div class="table-responsive">
            <table class="table table-bordered table-hover">
              <thead>
                <tr>
                  <td class="text-center"><?php echo $column_image; ?></td>
                  <td class="text-left"><?php echo $column_name; ?></td>
                  <td class="text-left"><?php echo $column_model; ?></td>
                  <td class="text-right"><?php echo $column_stock; ?></td>
                  <td class="text-right"><?php echo $column_price; ?></td>
                  <td class="text-right"><?php echo $column_action; ?></td>
                </tr>
              </thead>
              <tbody>
                <?php foreach ($products as $product) { ?>
                <tr>
                  <td class="text-center"><?php if ($product['thumb']) { ?>
                    <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                    <?php } ?></td>
                  <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
                  <td class="text-left"><?php echo $product['model']; ?></td>
                  <td class="text-right"><?php echo $product['stock']; ?></td>
                  <td class="text-right"><?php if ($product['price']) { ?>
                    <div class="price">
                      <?php if (!$product['special']) { ?>
                      <?php echo $product['price']; ?>
                      <?php } else { ?>
                      <b><?php echo $product['special']; ?></b> <s><?php echo $product['price']; ?></s>
                      <?php } ?>
                    </div>
                    <?php } ?></td>
                  <td class="text-right"><button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');" data-toggle="tooltip" title="<?php echo $button_cart; ?>" class="btn btn-primary"><i class="fa fa-shopping-cart"></i></button>
                    <a href="<?php echo $product['remove']; ?>" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-times"></i></a></td>
                </tr>
                <?php } ?>
              </tbody>
            </table>
          </div>
          <?php } ?>






          <?php } else { ?>
          <p><?php echo $text_empty; ?></p>
          <?php } ?>
          <div class="buttons clearfix">
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