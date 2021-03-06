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
                    <a href="<?php echo $product['href'];?>" class="product-wrapper flex-wrapper">
                        <figure>
                            <img src="<?php echo $product['thumb']?>" alt="">
                        </figure>

                        <figcaption>
                            <?php echo $product['name']; ?>
                        </figcaption>
                        <div onclick="addFieldsToPopup(formName='Форма со страницы сравнений', productName='<?php echo $product['name']; ?>', productUrl='<?php echo $product['href'];?>')" class="callme_viewform blue-button"><?php if ($products[$product['product_id']]['price']) { ?>
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

</script>

<?php echo $content_bottom; ?>

<?php echo $footer; ?>

