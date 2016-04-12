<?php echo $header; ?>
<div class="container">
  <?php echo $content_top; ?>
  <div class="wide-body-layout">
  <ul class="breadcrumb ">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <h1 class="page-title"><?php echo $heading_title; ?></h1>
  </div>
  <?php echo $content_bottom; ?>
</div>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script>
  
  
</script>
<?php echo $footer; ?>
