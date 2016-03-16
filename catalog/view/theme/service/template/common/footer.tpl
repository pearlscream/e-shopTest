    <footer class="footer">
      <div class="wide-body-layout">
        <div class="flex-wrapper">
          <div class="column">
            <h4 class="footer-title">Продукция</h4>
            <img src="catalog/view/theme/service/image/logo.png" class="logo" alt="">
            <div class="menu-item">SpecCenter 2015.</div>
            <div class="menu-item">All Rights Reserved.</div>
          </div>
          <div class="column">
            <h4 class="footer-title">Комплектующие</h4>

            <?php foreach (array_chunk($categories[1]['children'], ceil(count($categories[1]['children']) / $categories[1]['column'])) as $children) { ?>
            <?php foreach ($children as $child) { ?>

            <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?>

            <?php } ?>
            <?php } ?>

          </div>
          <div class="column">
            <a href="<?php echo $services; ?>"><h4 class="footer-title">Услуги</h4></a>
          </div>
          <div class="column">
            <h4 class="footer-title">Компания</h4>
            <a href="<?php echo $company?>" class="menu-item">О нас</a>
            <a href="<?php echo $blogs?>" class="menu-item">Блоги</a>
            <a href="<?php echo $news?>" class="menu-item">Новости</a>
            <a href="<?php echo $projects?>" class="menu-item" >Проекты</a>
            <a href="<?php echo $certificates?>" class="menu-item">Сертификаты</a>
          </div>
          <div class="column">
            <h4 class="footer-title">Контакты</h4>
            <div class="menu-item">
              <div>08132, Киевская обл.,</div>
              <div>г. Вишневое, а/я 49а Украина</div>
            </div>
            <div class="menu-item">
              <div>+38 (044) 507-18-17</div>
              <div>+38 (044) 507-18-17</div>
              <div>office@spec-service.com</div>
            </div>
            <img src="catalog/view/theme/service/image/neuro-wet.jpg" class="neuro-logo" alt="">
          </div>
        </div>
      </div>
    </footer>
</body>
      <script src="/catalog/view/theme/service/js/swiper.min.js"></script>
      <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
      <script src="/catalog/view/theme/service/js/lightbox.min.js"></script>
      <script src="/catalog/view/theme/service/js/scripts.js"></script>
</html>