
<?php echo $header; ?>
<div class="container category">
    <div class="wide-body-layout">
        <ul class="breadcrumb">
            <?php $last = array_pop($breadcrumbs);?>
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li>
                <a href="<?php echo $breadcrumb['href']; ?>
		"> <?php echo $breadcrumb['text']; ?>
                </a>
            </li>
            <?php } ?>
            <li class="li"><?php echo $last['text']; ?>
            </li>
        </ul>
    </div>
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content">
            <!-- <div class="compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div> -->
            <div class="wide-body-layout">
                <h2 class="main-cat"><?php echo $heading_title; ?></h2>
            </div>
            <?php echo $content_top; ?>
            <!--<?php if ($thumb || $description) { ?>
           <div class="row">
             <?php if ($thumb) { ?>
             <div class="col-sm-2"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
             <?php } ?>
             <?php if ($description) { ?>
             <div class="col-sm-10"><?php echo $description; ?></div>
             <?php } ?>
           </div>
           <hr>
           <?php } ?>
           <?php if ($categories) { ?>
           <h3><?php echo $text_refine; ?></h3>
           <?php if (count($categories) <= 5) { ?>
           <div class="row">
             <div class="col-sm-3">
               <ul>
                 <?php foreach ($categories as $category) { ?>
                 <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                 <?php } ?>
               </ul>
             </div>
           </div>
           <?php } else { ?>
           <div class="row">
             <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
             <div class="col-sm-3">
               <ul>
                 <?php foreach ($categories as $category) { ?>
                 <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                 <?php } ?>
               </ul>
             </div>
             <?php } ?>
           </div>
           <?php } ?>
           <?php } ?>-->
                        <div class="wide-body-layout">
                            <?php if ($categories) { ?>
                            <h3><?php echo $text_refine; ?></h3>
                            <?php if (count($categories) <= 5) { ?>
                            <div class="row">
                                <div class="col-sm-3">
                                    <ul>
                                        <?php foreach ($categories as $category) { ?>
                                        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                                        <?php } ?>
                                    </ul>
                                </div>
                            </div>
                            <?php } else { ?>
                            <div class="row">
                                <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
                                <div class="col-sm-3">
                                    <ul>
                                        <?php foreach ($categories as $category) { ?>
                                        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
                                        <?php } ?>
                                    </ul>
                                </div>
                                <?php } ?>
                            </div>
                            <?php } ?>
                            <?php } ?>
                            <?php if ($products) { ?>
                            <!-- <p><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p> -->
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="hidden btn-group hidden-xs">
                                        <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
                                        <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
                                    </div>
                                </div>
                                <div class="sorting-container flex-wrapper">
                                    <label class="sorting-attribute" for="input-sort"><?php echo $text_sort; ?></label>
                                    <select id="input-sort" class="custom-select" onchange="console.log(this.value); location = this.value;">
                                        <?php foreach ($sorts as $sorts) { ?>
                                        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                                        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                                        <?php } else { ?>
                                        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                                        <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <br />
                            <div class="product-list flex-wrapper">
                                <?php foreach ($products as $product) { ?>
                                <div class="product borders flex-item flex-wrapper">
                                    <a href="<?php echo $product['href']; ?>">
                                        <figure><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="" /></figure>
                                    </a>
                                    <figcapture>
                                        <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                    </figcapture>
                                    <div class="short-stats">
                                        <div class="one-stat">
                                            <span class="key">Мощность номинальная</span>:
                                            <span class="value"><?php echo $product['power'] . " кВт /" ?><?php echo $product['power_kwa'] . "  кВа"?></span>
                                        </div>
                                        <div class="one-stat">
                                            <span class="key">Мощность резервная</span>:
                                            <span class="value"><?php echo $product['rpower'] . " кВт /" ?><?php echo $product['rpower_kwa'] . "  кВа"?></span>
                                        </div>
                                        <div class="one-stat">
                                            <span class="key">Расход топлива (75 % нагрузки. П/Ч)</span>:
                                            <span class="value"><?php echo $product['fuel'] ?></span>
                                        </div>
                                    </div>
                                    <div class="product-footer flex-wrapper">
                                        <button class='add-to-comparison' data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"></button>
                                        <?php if ($product['price']) { ?>
                                        <div class="flex-item"><button class="blue-button"><?php echo $product['price']; ?>
                                            </button></div>
                                        <?php } ?>

                                    </div>
                                </div>

                                <?php } ?>
                            </div>
                            <div class="pagination pagination-wrapper">
                                <div class=""><?php echo $pagination; ?></div>
                                <div class=""><?php echo $results; ?></div>
                            </div>
                            <?php } ?>
                            <?php if (!$categories && !$products) { ?>
                            <p><?php echo $text_empty; ?></p>
                            <div class="buttons">
                                <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
                            </div>
                            <?php } ?>

                        </div>
                        <?php echo $content_bottom; ?></div>

        <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
