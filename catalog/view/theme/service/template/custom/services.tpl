<?php echo $header; ?>

<div class="container">
  <?php echo $content_top; ?>
<div class="wide-body-layout">  
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
</div>
  <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>
