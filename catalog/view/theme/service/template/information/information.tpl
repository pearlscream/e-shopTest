<?php echo $header; ?>
<div class="container">
  <?php echo $content_top; ?>
  <div class="wide-body-layout">
  <ul class="breadcrumb ">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  </div>
  <h1 class="page-title"><?php echo $heading_title; ?></h1>
  <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>