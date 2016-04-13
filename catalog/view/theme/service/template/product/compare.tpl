<?php echo $header; ?>
<div class="wide-body-layout">
<ul class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
  <?php } ?>
</ul>
</div>
<link rel="stylesheet" href="catalog/view/theme/service/stylesheet/swiper.css">


<div class="inner-page comparison-block">
  <div class="wide-body-layout"><?php echo $content_top; ?>
    <h1 class="page-title"><?php echo $heading_title; ?></h1>
    <div>Вы добавили товаров: <span><?php echo count($products) ?></span></div>
    <!-- Slider main container -->
    <div class="swiper-container comparison-swiper-container">
      <!-- Additional required wrapper -->
      <div class="swiper-wrapper">
        <!-- Slides -->
        <!-- Добавить новый -->
        <div class="swiper-slide add-new-slide">
          <div class="product-wrapper flex-wrapper">
            <figure><img src="\catalog\view\theme\service\image\weigher-big.png" alt=""></figure>
            <div class="add-new-wrapper flex-wrapper">
              <button onclick="javascript:history.back();" gre class="red-button round-button"><img src="\catalog\view\theme\service\image\plus.png" alt="+"></button>
              <div class="add-new-text">Добавить другие модели</div>
            </div>
          </div>

          <div class="product-stats">
            <?php foreach ($attribute_groups as $attribute_group) { ?>
              <?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
            <div class="stat"><?php echo $attribute['name'];?></div>
            <?php } ?>
            <?php } ?>
          </div>
        </div>



        <!-- Добавить новый конец -->
        <!-- Вывод товаров -->

        <?php foreach ($products as $product) { ?>
        <div class="swiper-slide">
          <a href="<?php echo $product['remove'];?>"><div class="delete-product"></div></a>
          <a href="<?php echo $product['href'];?>" class="product-wrapper flex-wrapper">
            <figure>
              <img src="<?php echo $product['thumb']?>" alt="">
            </figure>

            <figcaption>
              <?php echo $product['name']; ?>
            </figcaption>
            <div class="blue-button"><?php if ($products[$product['product_id']]['price']) { ?>
              <?php if (!$products[$product['product_id']]['special']) { ?>
              <?php echo $products[$product['product_id']]['price']; ?>
              <?php } else { ?>
              <strike><?php echo $products[$product['product_id']]['price']; ?></strike> <?php echo $products[$product['product_id']]['special']; ?>
              <?php } ?>
              <?php } ?></div>
          </a>
          <div class="product-stats">
            <?php foreach ($attribute_groups as $attribute_group) { ?>
            <?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
            <div class="stat">
              <?php if (isset($product['attribute'][$key])) { ?>
              <td><?php echo $product['attribute'][$key]; ?></td>
              <?php } else { ?>
              <td></td>
              <?php } ?></div>
            <?php }?>
            <?php }?>
          </div>
        </div>
        <?php } ?>



        <!-- Вывод товаров конец -->
      </div>
      <div class="swiper-footer">
        <div class="main-stats-text">Основные характеристики</div>
        <div class="swiper-scrollbar"></div>
      </div>
    </div>
  </div>

</div>

<script>
  var comparisonSlider = new Swiper ('.comparison-swiper-container', {
  breakpoints: {
    // when window width is <= 320px
    320: {
      slidesPerView: 2,
    },
    // when window width is <= 480px
    480: {
      slidesPerView: 2,
    },
    // when window width is <= 640px
    640: {
      slidesPerView: 3,
    },
    800: {
      slidesPerView: 5,
    },
    2000: {
      slidesPerView: 6,
    }
  },
  // width: 155,
  scrollbar: '.comparison-swiper-container .swiper-scrollbar',
})
</script>

<?php echo $content_bottom; ?>

<?php echo $footer; ?>

 