

<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

  <title><?php echo $title; ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
  <meta name="description" content="<?php echo $description; ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
  <meta name="keywords" content= "<?php echo $keywords; ?>" />
  <?php } ?>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <?php if ($icon) { ?>
  <link href="<?php echo $icon; ?>" rel="icon" />
  <?php    } ?>
  <?php foreach ($links as $link) { ?>
  <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
  <?php } ?>
  <script src="catalog/view/theme/service/js/jquery-2.2.1.min.js" type="text/javascript"></script>
  <!-- <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" /> -->
  <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800&subset=latin,cyrillic' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

  <?php foreach ($styles as $style) { ?>
  <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>
  <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
  <?php foreach ($scripts as $script) { ?>
  <script src="<?php echo $script; ?>" type="text/javascript"></script>
  <?php } ?>
  <?php echo $google_analytics; ?>
  <link href="catalog/view/theme/service/stylesheet/stylesheet.css" rel="stylesheet">
  <link rel="stylesheet" href="catalog/view/theme/service/stylesheet/adaptiveness.css">

  <script type="text/javascript"  src=<?php echo HTTP_SERVER; ?>/callme/js/callme.js></script>
</head>


<body class="<?php echo $class; ?>">
<div class="header-underlay"></div>
<div class="mobile-menu-underlay hidden"><div class="hook"></div></div>

  <header class="header">
    <div class="upper-part">
      <div class="wide-body-layout">
        <div class=" outer flex-wrapper">
          <div class="upper-flex-item logo-wrapper hide-when-small">
            <a href="<?php echo $home; ?>">
              <img src="catalog/view/theme/default/image/logo.png" alt="" class="logo">
            </a>
          </div>
          <p class="site-description hide-when-small flex-wrapper upper-flex-item">ИЗГОТОВЛЕНИЕ, ОБСЛУЖИВАНИЕ и РЕМОНТ ДИЗЕЛЬНЫх ЭЛЕКТРОСТАНЦИй И КОНВЕРСИОННОЙ ТЕХНИКИ.</p>
          <!-- <div class="languages-selection flex-wrapper upper-flex-item">
            <?php echo $language; ?>
          </div> -->
          <div id="google_translate_element"></div><script type="text/javascript">
          function googleTranslateElementInit() {
            new google.translate.TranslateElement({pageLanguage: 'ru', includedLanguages: 'en,ru,uk', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
          }
        </script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
          <div class="regime site-description hide-when-small upper-flex-item">Режим работы: <br> с 9:00 до 17:00</div>
          <div class="phones upper-flex-item">
            <img src="catalog/view/theme/default/image/phone.png" alt="" class="phone-image">
            <div class="phone-number"><small>(044) </small>232-12-20</div>
            <div class="phone-number"><small>(098) </small>153-02-40</div>
          </div>
        </div>
      </div>
    </div>
    <div class="responsive-menu">
      <div class="logo-wrapper">
        <a href="<?php echo $home; ?>">
          <img src="catalog/view/theme/service/image/logo.png" alt="">
        </a>
      </div>
      <div class="page-name-wrapper">
        <h1 class="page-name flex-item"><?php echo $title; ?></h1>
      </div>
      <script>
        

      </script>
        <div class="menu-trigger" onclick="toggleResponsiveMenu();" >
          <span class="icon-bar first"></span>
          <span class="icon-bar second"></span>
          <span class="icon-bar third"></span>
          <span class="icon-bar fourth"></span>
        </div>
    </div>
    <div class="lower-part">
      <div class="wide-body-layout">
        

        <nav id="menu" class="outer flex-wrapper">
          <ul class="flex-wrapper main-nav">
            <?php if ($logo) { ?>
            <li><a href="<?php echo $home; ?>"><?php echo $text_main; ?></a></li>
            <?php } else { ?>
            <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
            <?php } ?>
            <?php foreach ($categories as $category) { ?>
            <?php if ($category['children']) { ?>
            <li class="dropdown" onclick="createSubMenu(this)"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
              <div class="dropdown-menu">
                <div class="dropdown-inner">
                  <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                  <ul class="list-unstyled flex-wrapper">
                    <?php foreach ($children as $child) { ?>
                    <li class="flex-item flex-wrapper ">
                      <a href="<?php echo $child['href']; ?>" class="borders remove-upper-borders">
                      <p class="figure-name"><?php echo $child['name']; ?></p>
                        <figure class="image-wrapper borders borders-with-hover">
                          <img src="<?php echo $child['thumb']; ?>" class="img-thumbnail" />
                        </figure>
                      </a>
                    </li>
                    <?php } ?>
                  </ul>
                  <?php } ?>
                </div>
              </div>

              <!-- <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div> -->
            </li>
            <?php } else { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
            <?php } ?>
            <li>
              <a href="<?php echo $services; ?>">Услуги</a>
            </li>
            <li class="dropdown" onclick="createSubMenu(this);"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown">Компания</a>
              <div class="dropdown-menu">
                <div class="dropdown-inner">
                <ul class="list-unstyled flex-wrapper">
                    <li class="flex-item flex-wrapper borders-with-hover borders">
                      <a href="<?php echo $company?>">О нас
                        <figure class="image-wrapper">
                          <img src="<?php echo $child['thumb']; ?>" class="img-thumbnail" />
                        </figure>
                      </a>
                  </li>
                <li class="flex-item flex-wrapper borders-with-hover borders">
                      <a href="<?php echo $blogs?>">Блоги
                        <figure class="image-wrapper">
                          <img src="<?php echo $child['thumb']; ?>" class="img-thumbnail" />
                        </figure>
                      </a>
                  </li>
                <li class="flex-item flex-wrapper borders-with-hover borders">
                    <a href="<?php echo $news?>">Новости
                      <figure class="image-wrapper">
                        <img src="<?php echo $child['thumb']; ?>" class="img-thumbnail" />
                      </figure>
                    </a>
                </li>
                <li class="flex-item flex-wrapper borders-with-hover borders">
                      <a href="<?php echo $projects?>">Проекты
                        <figure class="image-wrapper">
                          <img src="<?php echo $child['thumb']; ?>" class="img-thumbnail" />
                        </figure>
                      </a>
                  </li>
                <li class="flex-item flex-wrapper borders-with-hover borders">
                      <a href="<?php echo $certificates?>">Сертификаты
                        <figure class="image-wrapper">
                          <img src="<?php echo $child['thumb']; ?>" class="img-thumbnail" />
                        </figure>
                      </a>
                  </li>
                  </ul>
                </div>
              </div>
            </li>
            <li>
              <a href="<?php echo $contact; ?>">Контакты</a>
            </li>
          </ul>
          <button class="red-button callme_viewform" onclick="addFieldsToPopup(formName='Форма с шапки')">заказать звонок</button>
        </nav>
      </div>
    </div>
    <button class="back-button hidden" onclick="hideSubMobile()"></button>
    
    <script>
  function addFieldsToPopup(formName= '', productName = '', productUrl = '', executionType = '') {
      $('.cme-fields').find('input[name="Название формы "]').hide();
      $('.cme-fields').find('input[name="Название товара "]').hide(); 
      $('.cme-fields').find('input[name="Ссылка на товар "]').hide();
      $('.cme-fields').find('input[name="Вид исполнения "]').hide();

     $('.cme-btn').click(function() {
      $('.cme-fields').find('input[name="Название формы "]').val(formName).hide();
      $('.cme-fields').find('input[name="Название товара "]').val(productName).hide(); 
      $('.cme-fields').find('input[name="Ссылка на товар "]').val(productUrl).hide();
      $('.cme-fields').find('input[name="Вид исполнения "]').val(executionType).hide();
     })     
    }
 function toggleResponsiveMenu() {
          if ($('.menu-trigger').hasClass('open')) {
            $('.logo-wrapper').removeClass('hidden');
            $('.header .page-name ').removeClass('hidden');
            $('.mobile-menu-underlay').addClass('hidden');
            $('#menu').removeClass('hidden');
            $('.mobile-menu-underlay .hook').empty();
            $('.header .back-button').addClass('hidden');
            $('.menu-trigger').removeClass('open');
            $('.header .lower-part').removeClass('mobile-open');
          }
          else {
            $("html, body").animate({ scrollTop: 0 }, "fast");
            $('.menu-trigger').addClass('open');
            $('.header .lower-part').addClass('mobile-open');
          }
        }
        function createSubMenu(clickedItem) {
            if ( $( window ).width() <= 768 ) {
              $("html, body").animate({ scrollTop: 0 }, "fast");
              var dropdownName = $(clickedItem).find('.dropdown-toggle').text();
              var dropdownContent = $(clickedItem).find('.dropdown-menu').html();
              $('#menu').addClass('hidden');
              $('.mobile-menu-underlay').removeClass('hidden');
              $('.mobile-menu-underlay .hook').append(dropdownContent);
              $('.logo-wrapper').addClass('hidden');
              $('.header .page-name ').addClass('hidden');
              var backButton = $('.back-button');
              $('.responsive-menu').prepend(backButton);
              $(backButton).removeClass('hidden').text(dropdownName);
            }
        }
        function hideSubMobile() {
          $('.header .back-button').click(function() {
            $('.logo-wrapper').removeClass('hidden');
            $('.header .page-name ').removeClass('hidden');
            $('.mobile-menu-underlay').addClass('hidden');
            $('#menu').removeClass('hidden');
            $('.mobile-menu-underlay .hook').empty();
            $('.header .back-button').addClass('hidden');
          });
        }

          $('.popup-cross').click(function() { 
            $('#cme-back').click();
          });
        $(document).ready(function(){
          $('input[name="Email "]').removeClass('input-name').addClass('input-email');
        });
        // $('*:not(.cme-form)').click(function(){
        //   $('#cme-back').click()
        // })
    </script>

  </header>
