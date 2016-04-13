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
<script>
  
  $(document).ready(function() {

  
var myLatlng = new google.maps.LatLng(50.4110228, 30.3831262);
  var myOptions = {
    zoom: 18,
    center: myLatlng,
    scrollwheel: false,
    mapTypeId: google.maps.MapTypeId.HYBRID
  }
  var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions); 
  var image = '/catalog/view/theme/service/image/logo-for-map.png';

  var marker = new google.maps.Marker({
    position: myLatlng,
    map: map,
    icon: image
  });

});
  
</script>
<?php echo $footer; ?>
