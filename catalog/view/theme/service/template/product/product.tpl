<?php echo $header; ?>

<div class="wide-body-layout">
        <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>

        <section class="product-full"  id="content"> <?php echo $content_top; ?>
            <h1 class="page-title bold product-main-title"><?php echo $heading_title; ?> </h1>
            <div class="flex-wrapper product-full-flex-wrapper">
                <div class="flex-item gallery thumbnails">
                    <figure class="big-size borders">
                        <a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a>
                        <div class="scale-image"></div>
                    </figure>
                    <div class="flex-wrapper">
                        <?php foreach ($images as $image) { ?>
                        <figure class="small-size "><div class="borders"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></div></figure>
                        <?php } ?>
                    </div>
                </div>
                <div class="flex-item all-description">
                    <table class="stats">
                        <thead>
                        <tr>
                            <td colspan="2"><strong>Основные характеристики</strong></td>
                        </tr>
                        </thead>
                        <tr>
                            <td class="key">Производитель:</td>
                            <td class="value"><?php echo $main_attributes['manufacturer']; ?></td>
                        </tr>
                        <tr>
                            <td class="key">Мощность номинальная:</td>
                            <td class="value"><?php echo $main_attributes['nominal']; ?></td>
                        </tr>
                        <tr>
                            <td class="key">Мощность резервная:</td>
                            <td class="value"><?php echo $main_attributes['reserv']; ?></td>
                        </tr>
                        <tr>
                            <td class="key">КПД: </td>
                            <td class="value"><?php echo $main_attributes['kpd']; ?></td>
                        </tr>
                        <tr>
                            <td class="key">Вес: </td>
                            <td class="value"><?php echo $main_attributes['weight']; ?></td>
                        </tr>
                        <tr>
                            <td class="key">Применяемость: </td>
                            <td class="value"><?php echo $main_attributes['applicability']; ?></td>
                        </tr>
                    </table>
                    <hr />
                    <p class="description"><?php echo $description; ?></p>
                    <div class="features flex-wrapper">
                        <div class="flex-item">
                            <figure>
                                <img src="\catalog\view\theme\service\image\ukraine-map.png" alt="">
                            </figure>
                            <figcapture>собственное производство</figcapture>
                        </div>
                        <div class="flex-item">
                            <figure>
                                <img src="\catalog\view\theme\service\image\earth.png" alt="">
                            </figure>
                            <figcapture>официальный дистрибьютор</figcapture>
                        </div>
                        <div class="flex-item">
                            <figure>
                                <img src="\catalog\view\theme\service\image\maintenance.png" alt="">
                            </figure>
                            <figcapture>сервисное обслуживание</figcapture>
                        </div>
                        <div class="flex-item">
                            <figure>
                                <img src="\catalog\view\theme\service\image\warranty.png" alt="">
                            </figure>
                            <figcapture>гарантия на 2000 часов</figcapture>
                        </div>
                        <div class="flex-item">
                            <figure>
                                <img src="\catalog\view\theme\service\image\graduation.png" alt="">
                            </figure>
                            <figcapture>учебный центр</figcapture>
                        </div>
                    </div>
                </div>
            </div>

</div>
</section>
<section class="get-price">
    <div class="wide-body-layout">
        <form class="flex-wrapper" action="">
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'radio') { ?>
            <span class="blue-text"><?php echo $option['name'];?></span>
            <?php $i = 0;?>
            <?php foreach ($option['product_option_value'] as $option_value) { ?>
            <?php $i++;?>
            <input type="radio" id="option[<?php echo $option['product_option_id'].$i; ?>]" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>">
            <label for="option[<?php echo $option['product_option_id'].$i; ?>]">
                <?php echo $option_value['name']; ?>
                <?php if ($option_value['price']) { ?>
                (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                <?php } ?>

            </label>
            <?php } ?>
            <?php } ?>
            <?php } ?>
            <img src="\catalog\view\theme\service\image\weigher.png" onclick="compare.add('<?php echo $product_id; ?>');" class="weigher" alt="">
            <button class="blue-button   callme_viewform" onclick="fixInput()">Узнать цену</button>
        </form>
    </div>

</section>

<section>
    <div class="wide-body-layout">
        <ul class="nav nav-tabs">
            <?php if ($attribute_groups) { ?>
            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <li><a href="#tab-additional" data-toggle="tab">Дополнительные характеристики</a></li>
            <li><a href="#tab-equipment" data-toggle="tab">Дополнительное оборудование</a></li>
            <li><a href="#tab-review" data-toggle="tab">Сравнить с аналогами</a></li>
            <?php } ?>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="tab-specification">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <td colspan="2"><strong>Основные характеристики</strong></td>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>Производитель: </td>
                        <td><?php echo $main_attributes['manufacturer']; ?></td>
                    </tr>
                    <tr>
                        <td>Мощность номинальная: </td>
                        <td><?php echo $main_attributes['nominal']; ?></td>
                    </tr>
                    <tr>
                        <td>Мощность резервная: </td>
                        <td><?php echo $main_attributes['reserv']; ?></td>
                    </tr>
                    <tr>
                        <td>КПД: </td>
                        <td><?php echo $main_attributes['kpd']; ?></td>
                    </tr>
                    <tr>
                        <td>Вес: </td>
                        <td><?php echo $main_attributes['weight']; ?></td>
                    </tr>
                    <tr>
                        <td>Применяемость: </td>
                        <td><?php echo $main_attributes['applicability']; ?></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div class="tab-pane" id="tab-additional">
                <table class="table table-striped">
                    <?php foreach ($attribute_groups as $attribute_group) { ?>
                    <?php if ($attribute_group['attribute_group_id'] == 8) { ?>
                    <thead>
                    <tr>
                        <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                    <tr>
                        <td><?php echo $attribute['name']; ?></td>
                        <td><?php echo $attribute['text']; ?></td>
                    </tr>
                    <?php } ?>
                    </tbody>
                    <?php } ?>
                    <?php } ?>
                </table>
            </div>
            <div class="tab-pane" id="tab-equipment">
                <table class="table table-striped">
                    <?php foreach ($attribute_groups as $attribute_group) { ?>
                    <?php if ($attribute_group['attribute_group_id'] == 9) { ?>
                    <thead>
                    <tr>
                        <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                    </tr>
                    </thead>
                    <tbody>
                    <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                    <tr>
                        <td><?php echo $attribute['name']; ?></td>
                        <td><?php echo $attribute['text']; ?></td>
                    </tr>
                    <?php } ?>
                    </tbody>
                    <?php } ?>
                    <?php } ?>
                </table>
            </div>
            <div class="tab-pane" id="tab-review">
                <?php if ($products) { ?>
                <h3><?php echo $text_related; ?></h3>
                <div class="row">
                    <?php $i = 0; ?>
                    <?php foreach ($products as $product) { ?>
                    <?php if ($column_left && $column_right) { ?>
                    <?php $class = 'col-lg-6 col-md-6 col-sm-12 col-xs-12'; ?>
                    <?php } elseif ($column_left || $column_right) { ?>
                    <?php $class = 'col-lg-4 col-md-4 col-sm-6 col-xs-12'; ?>
                    <?php } else { ?>
                    <?php $class = 'col-lg-3 col-md-3 col-sm-6 col-xs-12'; ?>
                    <?php } ?>
                    <div class="<?php echo $class; ?>">
                        <div class="product-thumb transition">
                            <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-responsive" /></a></div>
                            <div class="caption">
                                <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
                                <p><?php echo $product['description']; ?></p>
                                <?php if ($product['rating']) { ?>
                                <div class="rating">
                                    <?php for ($i = 1; $i <= 5; $i++) { ?>
                                    <?php if ($product['rating'] < $i) { ?>
                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                    <?php } else { ?>
                                    <span class="fa fa-stack"><i class="fa fa-star fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
                                    <?php } ?>
                                    <?php } ?>
                                </div>
                                <?php } ?>
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
                            </div>
                            <div class="button-group">
                                <button type="button" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span> <i class="fa fa-shopping-cart"></i></button>
                                <button type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
                                <button type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
                            </div>
                        </div>
                    </div>
                    <?php if (($column_left && $column_right) && ($i % 2 == 0)) { ?>
                    <div class="clearfix visible-md visible-sm"></div>
                    <?php } elseif (($column_left || $column_right) && ($i % 3 == 0)) { ?>
                    <div class="clearfix visible-md"></div>
                    <?php } elseif ($i % 4 == 0) { ?>
                    <div class="clearfix visible-md"></div>
                    <?php } ?>
                    <?php $i++; ?>
                    <?php } ?>
                </div>
                <?php } ?>
            </div>
        </div>
    </div>
</section>

<?php echo $content_bottom; ?></div>

<script type="text/javascript"><!--
    $('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
        $.ajax({
            url: 'index.php?route=product/product/getRecurringDescription',
            type: 'post',
            data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
            dataType: 'json',
            beforeSend: function() {
                $('#recurring-description').html('');
            },
            success: function(json) {
                $('.alert, .text-danger').remove();

                if (json['success']) {
                    $('#recurring-description').html(json['success']);
                }
            }
        });
    });
    //--></script>
<script type="text/javascript"><!--
    $('#button-cart').on('click', function() {
        $.ajax({
            url: 'index.php?route=checkout/cart/add',
            type: 'post',
            data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
            dataType: 'json',
            beforeSend: function() {
                $('#button-cart').button('loading');
            },
            complete: function() {
                $('#button-cart').button('reset');
            },
            success: function(json) {
                $('.alert, .text-danger').remove();
                $('.form-group').removeClass('has-error');

                if (json['error']) {
                    if (json['error']['option']) {
                        for (i in json['error']['option']) {
                            var element = $('#input-option' + i.replace('_', '-'));

                            if (element.parent().hasClass('input-group')) {
                                element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                            } else {
                                element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
                            }
                        }
                    }

                    if (json['error']['recurring']) {
                        $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
                    }

                    // Highlight any found errors
                    $('.text-danger').parent().addClass('has-error');
                }

                if (json['success']) {
                    $('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                    $('#cart > button').html('<i class="fa fa-shopping-cart"></i> ' + json['total']);

                    $('html, body').animate({ scrollTop: 0 }, 'slow');

                    $('#cart > ul').load('index.php?route=common/cart/info ul li');
                }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    });
    //--></script>
<script type="text/javascript"><!--
    $('.date').datetimepicker({
        pickTime: false
    });

    $('.datetime').datetimepicker({
        pickDate: true,
        pickTime: true
    });

    $('.time').datetimepicker({
        pickDate: false
    });

    $('button[id^=\'button-upload\']').on('click', function() {
        var node = this;

        $('#form-upload').remove();

        $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

        $('#form-upload input[name=\'file\']').trigger('click');

        if (typeof timer != 'undefined') {
            clearInterval(timer);
        }

        timer = setInterval(function() {
            if ($('#form-upload input[name=\'file\']').val() != '') {
                clearInterval(timer);

                $.ajax({
                    url: 'index.php?route=tool/upload',
                    type: 'post',
                    dataType: 'json',
                    data: new FormData($('#form-upload')[0]),
                    cache: false,
                    contentType: false,
                    processData: false,
                    beforeSend: function() {
                        $(node).button('loading');
                    },
                    complete: function() {
                        $(node).button('reset');
                    },
                    success: function(json) {
                        $('.text-danger').remove();

                        if (json['error']) {
                            $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
                        }

                        if (json['success']) {
                            alert(json['success']);

                            $(node).parent().find('input').attr('value', json['code']);
                        }
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
                    }
                });
            }
        }, 500);
    });
    //--></script>
<script type="text/javascript"><!--
    $('#review').delegate('.pagination a', 'click', function(e) {
        e.preventDefault();

        $('#review').fadeOut('slow');

        $('#review').load(this.href);

        $('#review').fadeIn('slow');
    });

    $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

    $('#button-review').on('click', function() {
        $.ajax({
            url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
            type: 'post',
            dataType: 'json',
            data: $("#form-review").serialize(),
            beforeSend: function() {
                $('#button-review').button('loading');
            },
            complete: function() {
                $('#button-review').button('reset');
            },
            success: function(json) {
                $('.alert-success, .alert-danger').remove();

                if (json['error']) {
                    $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
                }

                if (json['success']) {
                    $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

                    $('input[name=\'name\']').val('');
                    $('textarea[name=\'text\']').val('');
                    $('input[name=\'rating\']:checked').prop('checked', false);
                }
            }
        });
    });

    $(document).ready(function() {
        $('.thumbnails').magnificPopup({
            type:'image',
            delegate: 'a',
            gallery: {
                enabled:true
            }
        });
    });
    //--></script>
<?php echo $footer; ?>
