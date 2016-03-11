
<?php echo $header; ?>
<div class="container category">
  <ul class="breadcrumb">
    <?php $last = array_pop($breadcrumbs);?>
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li>
      <a href="<?php echo $breadcrumb['href']; ?>
		"> <?php echo $breadcrumb['text']; ?>
      </a>
    </li>
    <?php } ?>
    <li class="li"><?php echo $last['text']; ?>
    </li>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
      <div class="compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
      <h2 class="main-cat"><?php echo $heading_title; ?></h2>
      <?php echo $content_top; ?>
      <!--<?php if ($thumb || $description) { ?>
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
     <?php } ?>-->
      <div role="tabpanel">
        <ul class="nav nav-tabs" role="tablist">
          <li role="presentation"<?php if(strpos($_SERVER['REQUEST_URI'], 'lines') !== false && $_SERVER['REQUEST_URI'] != '/coolone/'){?> class="active"<?php } ?>>
          <a href="<?php echo $lnk_prod; ?>" aria-controls="tab" role="tab" ><?php echo $tab_prod; ?></a>
          </li>
          <li role="presentation"<?php if(strpos($_SERVER['REQUEST_URI'], 'lines') === false && $_SERVER['REQUEST_URI'] != '/coolone/'){?> class="active"<?php } ?>>
          <a href="<?php echo $lnk_line; ?>" aria-controls="tab" role="tab" ><?php echo $tab_line; ?></a>
          </li>
        </ul>

        <div class="tab-content">

          <!-- ******************************************************************** -->

          <div role="tabpanel" class="tab-pane<?php if(strpos($_SERVER['REQUEST_URI'], 'lines') !== false && $_SERVER['REQUEST_URI'] != '/coolone/'){ ?> active<?php } ?>" id="tab-prod">
            <div class="wide-body-layout">
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
              <!-- <p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p> -->
              <div class="row">
                <div class="col-md-4">
                  <div class="hidden btn-group hidden-xs">
                    <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
                    <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
                  </div>
                </div>
                <div class="sorting-container flex-wrapper">
                  <label class="sorting-attribute" for="input-sort"><?php echo $text_sort; ?></label>
                  <select id="input-sort" class="custom-select" onchange="console.log(this.value); location = this.value;">
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
              <br />
              <div class="product-list flex-wrapper">
                <?php foreach ($products as $product) { ?>
                <div class="product borders flex-item flex-wrapper">
                  <a href="<?php echo $product['href']; ?>">
                    <figure><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="" /></figure>
                  </a>
                  <figcapture>
                    <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                  </figcapture>
                  <div class="short-stats">
                    <div class="one-stat">
                      <span class="key">Двигатель</span>:
                      <span class="value">3LD</span>
                    </div>
                    <div class="one-stat">
                      <span class="key">Двигатель</span>:
                      <span class="value">3LD</span>
                    </div>
                    <div class="one-stat">
                      <span class="key">Двигатель</span>:
                      <span class="value">3LD</span>
                    </div>
                  </div>
                  <div class="product-footer flex-wrapper">
                    <button class='add-to-comparison' data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"></button>
                    <?php if ($product['price']) { ?>
                    <div class="flex-item"><button class="blue-button"><?php echo $product['price']; ?>
                      </button></div>
                    <?php } ?>

                  </div>
                </div>

                <?php } ?>
              </div>
              <div class="pagination">
                <div class=""><?php echo $pagination; ?></div>
                <div class=""><?php echo $results; ?></div>
              </div>
              <?php } ?>
              <?php if (!$categories && !$products) { ?>
              <p><?php echo $text_empty; ?></p>
              <div class="buttons">
                <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
              </div>
              <?php } ?>

            </div>
            <?php echo $content_bottom; ?></div>
          </div>

<!-- ******************************************************************** -->

<div role="tabpanel" class="tab-pane<?php if(strpos($_SERVER['REQUEST_URI'], 'lines') === false && $_SERVER['REQUEST_URI'] != '/coolone/'){?> active<?php } ?>" id="tab-line">
  <?php if ($products2) { ?>
  <div class="row">
    <?php foreach ($products2 as $product) { ?>
    <div class="productline-layout product-list col-xs-12">
      <div class="product-thumb">
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
        <div>
          <button type="button" class="buy" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><!-- <i class="fa fa-shopping-cart"></i>  --><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
          <div class="caption">
            <div class="list-desc">
              <h4><a href="<?php echo $product['href']; ?>"><span><?php echo $product['name']; ?></span></a></h4>
              <h5><?php echo $text_related; ?><?php if(isset($product['linedesc']['title'])){ ?> «<?php echo $product['linedesc']['title']; ?>»<?php } ?></h5>
              <?php if(isset($product['linedesc']['desc'])){ ?><p><?php echo $product['linedesc']['desc']; ?></p><?php } ?>
            </div>
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
          <div class="list-price-group">
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
            <!-- <button type="button" class="buy list-buy" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>              -->

          </div>
        </div>
        <?php } ?>
      </div>
      <div class="pagination pagination-wrapper">
        <div class=""><?php echo $pagination; ?></div>
        <div class=""><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php if ($product['lines']) { ?>
      <h3 class="konan-h3"><?php echo $text_related; ?></h3>
      <?php $i = 0; ?>
      <table class="table konan_table " cellspacing="0">
        <thead>
        <tr>
          <!-- <td></td> -->
          <td>Модель</td>
          <td>Серия</td>
          <td>Основная мощность</td>
          <td>Резервная мощность</td>
          <td>Расход топлива (75 % нагрузки. П/Ч)</td>
          <td>Сравнение</td>
        </tr>
        </thead>
        <tbody>

        <?php foreach ($product['lines'] as $line) { ?>

        <tr>
          <!-- <td class="image"><a href="<?php echo $line['href']; ?>"><img src="<?php echo $line['thumb']; ?>" alt="<?php echo $line['name']; ?>" title="<?php echo $line['name']; ?>" class="img-responsive" /></a></td> -->
          <td class="caption">
            <h4><a href="<?php echo $line['href']; ?>"><?php echo $line['model']; ?></a></h4>
          </td>
          <td>
            <p class="cool">
              <?php echo $product['linedesc']['title']?>
            </p>
          </td>
          <td>
            <p class="heat">
              <?php echo $line['power'] . " кВт /" ?><?php echo $line['power_kwa'] . "  кВа"?>
            </p>
          </td>
          <td class="caption">
            <?php echo $line['rpower'] . " кВт /" ?><?php echo $line['rpower_kwa'] . "  кВа"?>
          </td>
          <td class="caption">
            <?php echo $line['fuel'] ?>
          </td>
          <td class="button-group">
            <button class='add-to-comparison' data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"></button>
          </td>
          <?php $i++; ?>
        </tr>
        <?php } ?>
        </tbody>
      </table>
      <?php } ?>
    </div>
    <?php } ?>
  </div>
  <div class="row row-pagination-2">
    <div class="col-sm-2 text-left"></div>
    <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
    <div class="col-sm-1 text-right"><?php //echo $results; ?><label class="control-label count-pages-label" for="input-limit"><?php echo $text_limit; ?></label></div>
    <div class="col-sm-3 text-right">
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
  <?php } ?>
</div>

<!-- ******************************************************************** -->

</div><!-- /.tab-content -->
</div><!-- /tabpanel -->
<?php echo $content_bottom; ?></div>
<?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
