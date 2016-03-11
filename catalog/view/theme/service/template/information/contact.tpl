<?php echo $header; ?>
<div class="container">
  <?php echo $content_top; ?>
  <ul class="breadcrumb wide-body-layout">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <h1 class="page-title"><?php echo $heading_title; ?></h1>
  <?php echo $content_bottom; ?>
<?php echo $footer; ?>
