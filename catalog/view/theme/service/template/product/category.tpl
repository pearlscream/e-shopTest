<?php echo $header; ?>
<div class="container">
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>

      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
      <div class="wide-body-layout">
      <h2 class="product-list-title"><?php echo $heading_title; ?></h2>
      <?php if ($thumb || $description) { ?>
      <div class="product-list-description">
        <?php if ($thumb) { ?>
        <?php } ?>
        <?php if ($description) { ?>
        <p ><?php echo $description; ?></p>
        <?php } ?>
      </div>
  </div>
    <div id="content"><?php echo $content_top; ?>
    <div class="wide-body-layout">
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
      <?php } ?>
      
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>

<?php echo $footer; ?>
