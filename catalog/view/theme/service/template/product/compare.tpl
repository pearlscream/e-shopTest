<?php echo $header; ?>

<ul class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
  <?php } ?>
</ul>
<link rel="stylesheet" href="catalog/view/theme/service/stylesheet/swiper.css">


<div class="inner-page comparison-block">
  <div class="wide-body-layout">
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
            <figure><img src="\e-shop\catalog\view\theme\service\image\weigher-big.png" alt=""></figure>
            <div class="add-new-wrapper flex-wrapper">
              <button class="red-button round-button"><img src="\e-shop\catalog\view\theme\service\image\plus.png" alt="+"></button>
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
          <a href="" class="product-wrapper flex-wrapper">
            <figure>
              <img src="\e-shop\catalog\view\theme\service\image\product1.jpg" alt="">
              <div class="delete-product"></div>
            </figure>

            <figcaption>
              <?php echo $product['name']; ?>
            </figcaption>
            <div class="blue-button">120256 грн</div>
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

        <div class="swiper-slide">
          <a href="" class="product-wrapper flex-wrapper">
            <figure>
              <img src="\e-shop\catalog\view\theme\service\image\product1.jpg" alt="">
              <div class="delete-product"></div>
            </figure>
            <figcaption>SMM 60</figcaption>
            <div class="blue-button">120256 грн</div>
          </a>
          <div class="product-stats">
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
          </div>
        </div>
        <div class="swiper-slide">
          <a href="" class="product-wrapper flex-wrapper">
            <figure>
              <img src="\e-shop\catalog\view\theme\service\image\product1.jpg" alt="">
              <div class="delete-product"></div>
            </figure>
            <figcaption>SMM 60</figcaption>
            <div class="blue-button">120256 грн</div>
          </a>
          <div class="product-stats">
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
          </div>
        </div>
        <div class="swiper-slide">
          <a href="" class="product-wrapper flex-wrapper">
            <figure>
              <img src="\e-shop\catalog\view\theme\service\image\product1.jpg" alt="">
              <div class="delete-product"></div>
            </figure>
            <figcaption>SMM 60</figcaption>
            <div class="blue-button">120256 грн</div>
          </a>
          <div class="product-stats">
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
          </div>
        </div>
        <div class="swiper-slide">
          <a href="" class="product-wrapper flex-wrapper">
            <figure>
              <img src="\e-shop\catalog\view\theme\service\image\product1.jpg" alt="">
              <div class="delete-product"></div>
            </figure>
            <figcaption>SMM 60</figcaption>
            <div class="blue-button">120256 грн</div>
          </a>
          <div class="product-stats">
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
          </div>
        </div>
        <div class="swiper-slide">
          <a href="" class="product-wrapper flex-wrapper">
            <figure>
              <img src="\e-shop\catalog\view\theme\service\image\product1.jpg" alt="">
              <div class="delete-product"></div>
            </figure>
            <figcaption>SMM 60</figcaption>
            <div class="blue-button">120256 грн</div>
          </a>
          <div class="product-stats">
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
          </div>
        </div>
        <div class="swiper-slide">
          <a href="" class="product-wrapper flex-wrapper">
            <figure>
              <img src="\e-shop\catalog\view\theme\service\image\product1.jpg" alt="">
              <div class="delete-product"></div>
            </figure>
            <figcaption>SMM 60</figcaption>
            <div class="blue-button">120256 грн</div>
          </a>
          <div class="product-stats">
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
          </div>
        </div>
        <div class="swiper-slide">
          <a href="" class="product-wrapper flex-wrapper">
            <figure>
              <img src="\e-shop\catalog\view\theme\service\image\product1.jpg" alt="">
              <div class="delete-product"></div>
            </figure>
            <figcaption>SMM 60</figcaption>
            <div class="blue-button">120256 грн</div>
          </a>
          <div class="product-stats">
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
          </div>
        </div>
        <div class="swiper-slide">
          <a href="" class="product-wrapper flex-wrapper">
            <figure>
              <img src="\e-shop\catalog\view\theme\service\image\product1.jpg" alt="">
              <div class="delete-product"></div>
            </figure>
            <figcaption>SMM 60</figcaption>
            <div class="blue-button">120256 грн</div>
          </a>
          <div class="product-stats">
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
            <div class="stat">50 кВт</div>
          </div>
        </div>

        <!-- Вывод товаров конец -->
      </div>
      <div class="swiper-footer">
        <div class="main-stats-text">Основные характеристики</div>
        <div class="swiper-scrollbar"></div>
      </div>
    </div>
  </div>

</div>

<?php echo $footer; ?>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-beta1/jquery.min.js"></script>
  <script src="\e-shop\catalog\view\theme\service\js\swiper.min.js"></script>
  <script src="\e-shop\catalog\view\theme\service\js\scripts.js"></script>
