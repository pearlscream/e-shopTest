<?php echo $header; ?>


<div class="wide-body-layout">
        <ul class="breadcrumb">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>

        <section class="product-full"  id="content"> <?php echo $content_top; ?>
            <h2 class="page-title bold"><?php echo $heading_title; ?> </h2>
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
                        <?php foreach ($attribute_groups as $attribute_group) { ?>
                        <thead>
                        <tr>
                            <td colspan="2"><strong><?php echo $attribute_group['name']; ?></strong></td>
                        </tr>
                        </thead>
                        <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                        <tr>
                            <td class="key"><?php echo $attribute['name']; ?></td>
                            <td class="value"><?php echo $attribute['text']; ?></td>
                        </tr>
                        <?php } ?>
                    </table>
                    <?php } ?>
                    <hr />
                    <p class="description"><?php echo $description; ?></p>
                    <div class="features flex-wrapper">
                        <div class="flex-item">
                            <figure>
                                <img src="\catalog\view\theme\service\image\ukraine-map.png" alt="">
                                <figcapture>собственное производство</figcapture>
                            </figure>
                        </div>
                        <div class="flex-item">
                            <figure>
                                <img src="\catalog\view\theme\service\image\earth.png" alt="">
                                <figcapture>официальный дистрибьютор</figcapture>
                            </figure>
                        </div>
                        <div class="flex-item">
                            <figure>
                                <img src="\catalog\view\theme\service\image\maintenance.png" alt="">
                                <figcapture>сервисное обслуживание</figcapture>
                            </figure>
                        </div>
                        <div class="flex-item">
                            <figure>
                                <img src="\catalog\view\theme\service\image\warranty.png" alt="">
                                <figcapture>гарантия на 2000 часов</figcapture>
                            </figure>
                        </div>
                        <div class="flex-item">
                            <figure>
                                <img src="\catalog\view\theme\service\image\graduation.png" alt="">
                                <figcapture>учебный центр</figcapture>
                            </figure>
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
            <li class="active"><a href="#tab-description" data-toggle="tab"><?php echo $tab_description; ?></a></li>
            <?php if ($attribute_groups) { ?>
            <li><a href="#tab-specification" data-toggle="tab"><?php echo $tab_attribute; ?></a></li>
            <?php } ?>
            <?php if ($review_status) { ?>

            <li><a type="button" class="btn btn-default" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product_id; ?>');">Сравнить с аналогом</a></li>
            <?php } ?>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="tab-description"><?php echo $description; ?></div>
            <?php if ($attribute_groups) { ?>
            <div class="tab-pane" id="tab-specification">
                <table class="table table-bordered">
                    <?php foreach ($attribute_groups as $attribute_group) { ?>
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
                </table>
            </div>
            <?php } ?>
            <?php if ($review_status) { ?>
            <div class="tab-pane" id="tab-review">
                <form class="form-horizontal" id="form-review">
                    <div id="review"></div>
                    <h2><?php echo $text_write; ?></h2>
                    <?php if ($review_guest) { ?>
                    <div class="form-group required">
                        <div class="col-sm-12">
                            <label class="control-label" for="input-name"><?php echo $entry_name; ?></label>
                            <input type="text" name="name" value="" id="input-name" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group required">
                        <div class="col-sm-12">
                            <label class="control-label" for="input-review"><?php echo $entry_review; ?></label>
                            <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                            <div class="help-block"><?php echo $text_note; ?></div>
                        </div>
                    </div>
                    <div class="form-group required">
                        <div class="col-sm-12">
                            <label class="control-label"><?php echo $entry_rating; ?></label>
                            &nbsp;&nbsp;&nbsp; <?php echo $entry_bad; ?>&nbsp;
                            <input type="radio" name="rating" value="1" />
                            &nbsp;
                            <input type="radio" name="rating" value="2" />
                            &nbsp;
                            <input type="radio" name="rating" value="3" />
                            &nbsp;
                            <input type="radio" name="rating" value="4" />
                            &nbsp;
                            <input type="radio" name="rating" value="5" />
                            &nbsp;<?php echo $entry_good; ?></div>
                    </div>
                    <?php echo $captcha; ?>
                    <div class="buttons clearfix">
                        <div class="pull-right">
                            <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><?php echo $button_continue; ?></button>
                        </div>
                    </div>
                    <?php } else { ?>
                    <?php echo $text_login; ?>
                    <?php } ?>
                </form>
            </div>
            <?php } ?>
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
