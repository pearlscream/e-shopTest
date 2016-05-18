
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
        <h1 class="main-cat"><?php echo $heading_title; ?></h1>
        <div class="page-description">
        <?php if (isset($description)) echo $description; ?>
      </div>
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
            <?php echo $content_top; ?>
            
                        <div class="wide-body-layout">
                            <?php if ($categories) { ?>
                            <?php if (count($categories) <= 5) { ?>
                            <div class="">
                                <div >
                                    <ul class="flex-wrapper category-list">
                                        <?php foreach ($categories as $category) { ?>
                                        <li class="flex-item inner-borders-hover category-name-adaptive">
                                        <a href="<?php echo $category['href']; ?>">
                                        <h4 class="category-name-outer"><?php echo $category['name']; ?></h4>
                                        <figure class="borders borders-with-hover">
                                            <img src="<?php echo $category['thumb']?>"></a>
                                        </figure>
                                        </li>
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
                                <div class="sorting-container sorting-container-2 flex-wrapper">
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
                            <!-- <div class="product-list"> -->
                                <?php foreach ($products as $product) { ?>
                                <!-- <div class="product borders flex-item flex-wrapper"> -->
                                <div class="product borders col-sm-3 flex-wrapper">
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
                                            <span class="key">Расход топлива </span>:
                                            <span class="value"><?php echo $product['fuel'] ?> (75 % нагрузки. П/Ч)</span>
                                        </div>
                                    </div>
                                    <div class="product-footer flex-wrapper">
                                        <a href=""><button class='add-to-comparison' data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"></button></a>
                                        <?php if ($product['price']) { ?>
                                        <div class="flex-item">
                                        <button class="blue-button callme_viewform" onclick="addFieldsToPopup(formName='Продукт в категории', productName = '<?php echo $product["name"]; ?>', productUrl = '<?php echo $product["href"]; ?>')"><?php echo $product['price']; ?>
                                      </button>
                                      </div>
                                        <?php } ?>

                                    </div>
                                </div>
                                <?php } ?>
                            </div>
                            <div class="pagination pagination-wrapper">
                                <!-- <div class=""><?php echo $pagination; ?></div> -->
                                <!-- <div class=""><?php echo $results; ?></div> -->
                                <button class="red-button" onclick="showMore()">показать больше</button>
                            </div>
                            <?php } ?>
                            <?php if (!$categories && !$products) { ?>
                            <p><?php echo $text_empty; ?></p>
                            <div class="buttons">
                                <div class="pull-left"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
                            </div>
                            <?php } ?>

                        </div>
                        <?php echo $content_bottom; ?></div>

        <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<script>

$( document ).ready(function() {
  
  var search = window.location.search.substr(1);
  var fullSearch = window.location.href; 
  keys = {};
  locations = {};
  search.split('&').forEach(function(item) {
    item = item.split('=');
    keys[item[0]] = item[1];
  });
  console.log(fullSearch)
  var base = fullSearch.split('?')[0] + '?';

  if (keys['page'] == undefined) {
    keys['page'] = 1;
  }
  if (keys['limit'] == undefined) {
    keys['limit'] = 15;
  }
  var newPageNumber = 2;
  
  nextPageUrl = base + '&route=' + keys['route'] + '&path=' + keys['path'] + '&limit=' + keys['limit'] + '&lines=' + keys['lines'] + '&page=' + newPageNumber;
  $.ajax({
    url: nextPageUrl, // указываем URL и
    dataType : "html", // тип загружаемых данных
    success: function(data){
    var text = $(data);
    text = text.find('.product-list').html();
    if (!text) $('.pagination .red-button').hide();
    }
});
});

function pageIncrement() {
    // Check to see if the counter has been initialized
    if ( typeof pageIncrement.counter == 'undefined' ) {
        // It has not... perform the initialization
        pageIncrement.counter = 1;
    }

    // Do something stupid to indicate the value
    return ++pageIncrement.counter;
}
function showMore() {
  
  var search = window.location.search.substr(1);
  var fullSearch = window.location.href; 
  keys = {};
  locations = {};
  search.split('&').forEach(function(item) {
    item = item.split('=');
    keys[item[0]] = item[1];
  });
  console.log(fullSearch)
  var base = fullSearch.split('?')[0] + '?';

  if (keys['page'] == undefined) {
    keys['page'] = 1;
  }
  if (keys['limit'] == undefined) {
    keys['limit'] = 15;
  }
  var newPageNumber = pageIncrement();
  var resultUrl = base + '&route=' + keys['route'] + '&path=' + keys['path'] + '&limit=' + keys['limit'] + '&lines=' + keys['lines'] + '&page=' + newPageNumber;
  $.ajax({ 
    url: resultUrl, // указываем URL и 
    dataType : "html", // тип загружаемых данных 
    success: function(data){ 
    var text = $(data); 
    text = text.find('.product-list').html(); 
    // console.log(text)
    $(text).insertAfter( ".product-list > .product:last-child"); 
    } 
  });
  nextPageUrl = base + '&route=' + keys['route'] + '&path=' + keys['path'] + '&limit=' + keys['limit'] + '&lines=' + keys['lines'] + '&page=' + (newPageNumber + 1);
  $.ajax({
    url: nextPageUrl, // указываем URL и
    dataType : "html", // тип загружаемых данных
    success: function(data){
    var text = $(data);
    text = text.find('.product-list').html();
    if (!text) $('.pagination .red-button').hide();
    }
});
}

function showMoreBlogs() {
//not in prod
  var currentPage = pageIncrement();
  console.log(currentPage)
  currentPage = currentPage + 1;
  var base = $('.blogs + .pagination-wrapper ul li:nth-child('+currentPage+') a').attr['href'];
  console.log(base)
  $.ajax({ 
    url: base, // указываем URL и 
    dataType : "html", // тип загружаемых данных 
    success: function(data) { 
    var text = $(data); 
    text = text.find('.blogs').html(); 
    $(text).insertAfter( ".blogs > .blog:last-child"); 
    } 
  });
}

$('button.add-to-comparison').click(function(){
  $(this).addClass('active');
})
function addFieldsToPopup(productName = '', productUrl = '') {
  if (productName) {
    $('#cme-form-main').find('.cme-fields').append('<span><input type="hidden" name="Название товара:" value="' + productName +' "><span>');
  }
  if (productUrl) {
    $('#cme-form-main').find('.cme-fields').append('<span><input type="hidden" name="Ссылка на товар:" value="' + productUrl +' "><span>');
  }
}

</script>
<?php echo $footer; ?>
