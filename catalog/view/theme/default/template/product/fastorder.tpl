<!-- Button fastorder -->
<button type="button" id="btn-formcall<?php echo $product_id?>" class="btn btn_white btn-buy btn-fastorder js-open-fastorder">
  <?php echo $text_fastorder_button;?>
</button>

<div id="fastorder-form-container<?php echo $product_id;?>" class="js-fastorder-form fastorder-form"></div>

<script type="text/javascript">
  $('#btn-formcall<?php echo $product_id;?>').on('click', function() {
    var data = [];

    data['product_name']    = '<?php echo $product_name;?>';
    data['price']           = '<?php echo $price;?>';
    data['product_id']      = '<?php echo $product_id;?>';
    data['product_link']    = '<?php echo $product_link;?>';

    // data['product_foto']    = '<?php echo $product_______; ?>';
    // data['product_size']    = '<?php echo $product_______; ?>';
    // data['product_color']['name']   = '<?php echo $product_______; ?>';
    // data['product_color']['hex']   = '<?php echo $product_______; ?>';

    showForm(data);
  });
</script>