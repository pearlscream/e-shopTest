
<?php echo $header; ?>
<div class="container category">
  <div class="wide-body-layout">
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
  </div>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content">
      <!-- <div class="compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div> -->
      <div class="wide-body-layout">
        <h2 class="main-cat"><?php echo $heading_title; ?></h2>
      </div>
      <?php echo $content_top; ?>
    <?php if ($products) { ?>
    <!-- <p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p> -->
    <div class="row">
    <div class="wide-body-layout">   
      <div class="sorting-container flex-wrapper">
        <ul class="flex-item output-type list-unstyled flex-wrapper">
            <li role="presentation"<?php if(strpos($_SERVER['REQUEST_URI'], 'lines') !== false && $_SERVER['REQUEST_URI'] != '/coolone/'){?> class="active"<?php } ?>>
            <a href="<?php echo $lnk_prod; ?>" aria-controls="tab" role="tab" ><?php echo $tab_prod; ?></a>
            </li>
            <li role="presentation"<?php if(strpos($_SERVER['REQUEST_URI'], 'lines') === false && $_SERVER['REQUEST_URI'] != '/coolone/'){?> class="active"<?php } ?>>
            <a href="<?php echo $lnk_line; ?>" aria-controls="tab" role="tab" ><?php echo $tab_line; ?></a>
            </li>
            <li>
              <a href="<?php echo $special; ?>" aria-controls="tab" role="tab" >Эконом-предложения</a>
            </li>
        </ul>
        <div class="flex-item">
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
        </div>
    </div>
    <br />
    <div class="wide-body-layout product-list flex-wrapper">
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
            <span class="key">Мощность номинальная</span>:
            <span class="value"><?php echo $product['power'] . " кВт /" ?><?php echo $product['power_kwa'] . "  кВа"?></span>
          </div>
          <div class="one-stat">
            <span class="key">Мощность резервная</span>:
            <span class="value"><?php echo $product['rpower'] . " кВт /" ?><?php echo $product['rpower_kwa'] . "  кВа"?></span>
          </div>
          <div class="one-stat">
            <span class="key">Расход топлива (75 % нагрузки. П/Ч)</span>:
            <span class="value"><?php echo $product['fuel'] ?></span>
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
    <div class="pagination pagination-wrapper">
      <div class=""><?php echo $pagination; ?></div>
      <div class=""><?php echo $results; ?></div>
    </div>
    <?php } ?>
    <?php if (!$products) { ?>
    <p><?php echo $text_empty; ?></p>
    <div class="buttons">
      <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
    </div>
    <?php } ?>

  </div>
  <?php echo $content_bottom; ?></div>
</div>


    <?php echo $content_bottom; ?></div>
  <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
