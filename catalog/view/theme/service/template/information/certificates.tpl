<?php echo $header; ?>

<div class="container">
<div class="wide-body-layout">	
  <?php echo $content_top; ?>
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <h1 class="page-title"><?php echo $heading_title; ?></h1>
</div>
  <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>
