<?php foreach ($records as $record) { ?>
<section class="white-and-grey-grid product-division">
    <div class="wide-body-layout">
        <div>
            <h3 class="section-title"><a href="<?php echo $record['href']; ?>" ><?php echo $record['name']; ?></a></h3>
            <?php if (isset ($settings_widget['images_view']) && $settings_widget['images_view'] ) { ?>
            <?php foreach ($record['images'] as $numi => $images) { ?>
            <img alt="<?php echo $images['title']; ?>" title="<?php echo $images['title']; ?>" src="<?php echo $images['popup']; ?>">
            <?php } ?>
            <?php } ?>
            <p class="section-description"><?php echo $record['description']; ?></p>
            <div class="button-wrapper">
                <a href="<?php echo $record['href']?>" class="blue-button">Подробнее</a>
            </div>
        </div>
    </div>
</section>
<?php } ?>