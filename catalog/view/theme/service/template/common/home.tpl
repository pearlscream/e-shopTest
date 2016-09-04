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
    <div id="content" ><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>

<?php foreach($categories as $category) { ?>
<section class="white-and-grey-grid product-division">
  <div class="wide-body-layout">
    <div>
      <h3 class="section-title"><a href="<?echo $category['href']?>"><?php echo $category['name']?></a></h3>
      <img alt="" title="" src="image/<?php print_r($category[image]) ?>">
      <p class="section-description"><?php echo $category['description']?></p>
      <div class="button-wrapper">
        <a href="<?echo $category['href']?>" class="blue-button">Подробнее</a>
      </div>
    </div>
  </div>
</section>
<?php } ?>

<script>
</script>
<?php echo $footer; ?>