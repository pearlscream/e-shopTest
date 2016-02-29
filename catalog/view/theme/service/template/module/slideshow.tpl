<div class="slideshow-wide-body-layout"> 
<div id="slideshow<?php echo $module; ?>" class="owl-carousel" style="opacity: 1;">
  <?php foreach ($banners as $banner) { ?>
  <div class="wide-body-layout">
    <div class="item">
      <div class="flex-wrapper">
      <div class="item-text">
        <h3 class="attention-text">ВНИМАНИЕ АКЦИЯ!</h3>
        <div class="item-title"> 
          <?php echo $banner['title']; ?>
        </div>
        <div class="item-description">
          <?php echo $banner['banner_description']; ?>
        </div>
      </div>
    <div class="image-wrapper">
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" class="img-responsive" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>"  class="img-responsive" />
    <?php } ?>
    </div> 
    </div>
    </div>
</div>
  <?php } ?>

</div>
</div>
<script type="text/javascript"><!--
$('#slideshow<?php echo $module; ?>').owlCarousel({
	items: 6,
	autoPlay: 80000,
	singleItem: true,
	navigation: true,
	navigationText: ['<i class="fa fa-chevron-circle-left fa-5x"></i>', '<i class="fa fa-chevron-circle-right fa-5x"></i>'],
	pagination: true
});
--></script>