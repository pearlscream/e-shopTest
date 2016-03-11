<?php echo $header; ?>


<div class="wide-body-layout">
    <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
    </ul>
</div>
<section class="product-full"  id="content"> <?php echo $content_top; ?>
<?php if ($products2) { ?>
<div class="row">
    <?php foreach ($products2 as $product) { ?>
    <?php if ($product['linedesc']['title'] == $product['line_name']) { ?>
    <div class="productline-layout product-list col-xs-12">
        <div class="product-thumb">
            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
            <div>
                <div class="caption">
                    <div class="list-desc">
                        <h4><a href="<?php echo $product['href']; ?>"><span><?php echo $product['name']; ?></span></a></h4>
                        <h5><?php echo $text_related; ?><?php if(isset($product['linedesc']['title'])){ ?> «<?php echo $product['linedesc']['title']; ?>»<?php } ?></h5>
                        <?php if(isset($product['linedesc']['desc'])){ ?><p><?php echo $product['linedesc']['desc']; ?></p><?php } ?>
                    </div>
                    <?php if ($product['rating']) { ?>
                    <div class="rating">
                        <?php for ($i = 1; $i <= 5; $i++) { ?>
                        <?php if ($product['rating'] < $i) { ?>
                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                        <?php } else { ?>
                        <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                        <?php } ?>
                        <?php } ?>
                    </div>
                    <?php } ?>
                </div>

                <div class="list-price-group">
                    <?php if ($product['price']) { ?>
                    <p class="price">
                        <?php if (!$product['special']) { ?>
                        <?php echo $product['price']; ?>
                        <?php } else { ?>
                        <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                        <?php } ?>
                        <?php if ($product['tax']) { ?>
                        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                        <?php } ?>
                    </p>
                    <?php } ?>
                    <!-- <button type="button" class="buy list-buy" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><i class="fa fa-shopping-cart"></i><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>              -->

                </div>
            </div>
        </div>
        <?php if ($product['lines']) { ?>
        <h3 class="konan-h3"><?php echo $text_related; ?></h3>
        <?php $i = 0; ?>
        <table class="table konan_table " cellspacing="0">
            <thead>
            <tr>
                <!-- <td></td> -->
                <td>Модель</td>
                <td>Серия</td>
                <td>Основная мощность</td>
                <td>Резервная мощность</td>
                <td>Расход топлива (75 % нагрузки. П/Ч)</td>
                <td>Сравнение</td>
            </tr>
            </thead>
            <tbody>

            <?php foreach ($product['lines'] as $line) { ?>

            <tr>
                <!-- <td class="image"><a href="<?php echo $line['href']; ?>"><img src="<?php echo $line['thumb']; ?>" alt="<?php echo $line['name']; ?>" title="<?php echo $line['name']; ?>" class="img-responsive" /></a></td> -->
                <td class="caption">
                    <h4><a href="<?php echo $line['href']; ?>"><?php echo $line['model']; ?></a></h4>
                </td>
                <td>
                    <p class="cool">
                        <?php echo $product['linedesc']['title']?>
                    </p>
                </td>
                <td>
                    <p class="heat">
                        <?php echo $line['power'] . " кВт /" ?><?php echo $line['power_kwa'] . "  кВа"?>
                    </p>
                </td>
                <td class="caption">
                    <?php echo $line['rpower'] . " кВт /" ?><?php echo $line['rpower_kwa'] . "  кВа"?>
                </td>
                <td class="caption">
                    <?php echo $line['fuel'] ?>
                </td>
                <td class="button-group">
                    <button class='add-to-comparison' data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $line['product_id']; ?>');"></button>
                </td>
                <?php $i++; ?>
            </tr>
            <?php } ?>
            </tbody>
        </table>
        <?php } ?>
    </div>
    <?php } ?>
    <?php } ?>
</div>
<div class="row row-pagination-2">
    <div class="col-sm-2 text-left"></div>
    <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
</div>
<?php } ?>
</section>

<?php echo $content_bottom; ?></div>
<?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
