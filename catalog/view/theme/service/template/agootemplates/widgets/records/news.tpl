

<?php if ($records) { ?>
<?php echo $records[0]['blog_description']?>
<?php $i = 0?>
<?php foreach ($records as $record) { ?>
<?php if($i % 2 == 0) { ?>
<div class="wide-body-layout">
    <div class="blogs flex-wrapper">
        <div class="flex-item blog borders borders-with-hover">
            <div class="blog-wrapper">
                <div class="image-wrapper">
                    <?php if (isset ($settings_widget['images_view']) && $settings_widget['images_view'] ) { ?>
                    <?php foreach ($record['images'] as $numi => $images) { ?>
                    <img alt="<?php echo $images['title']; ?>" title="<?php echo $images['title']; ?>" src="<?php echo $images['image']; ?>">
                    <?php } ?>
                    <?php } ?>
                </div>
                <h3 class="section-title"><a href="<?php echo $record['href']; ?>" ><?php echo $record['name']; ?></a></h3>
                <?php if (isset($settings_widget['title_status']) && $settings_widget['title_status'] ) { ?>
                <h3><a href="<?php echo $record['href']; ?>" ><?php echo $record['name']; ?></a></h3>
                <?php } ?>
                <p class="description"> <?php if (isset($settings_widget['description_status']) && $settings_widget['description_status'] ) { ?>
                    <?php echo $record['description']; ?></p>
                <div class="text-center">
                    <a href="<?php echo $record['href']?>" class="blue-button">Подробнее</a>
                </div>
                <?php } ?>
            </div>
        </div>
        <?php } else { ?>
        <div class="flex-item blog borders borders-with-hover">
            <div class="blog-wrapper">
                <div class="image-wrapper">
                    <?php if (isset ($settings_widget['images_view']) && $settings_widget['images_view'] ) { ?>
                    <?php foreach ($record['images'] as $numi => $images) { ?>
                    <img alt="<?php echo $images['title']; ?>" title="<?php echo $images['title']; ?>" src="<?php echo $images['thumb']; ?>">
                    <?php } ?>
                    <?php } ?>
                </div>
                <h3 class="section-title"><a href="<?php echo $record['href']; ?>" ><?php echo $record['name']; ?></a></h3>
                <?php if (isset($settings_widget['title_status']) && $settings_widget['title_status'] ) { ?>
                <h3><a href="<?php echo $record['href']; ?>" ><?php echo $record['name']; ?></a></h3>
                <?php } ?>
                <p class="description"> <?php if (isset($settings_widget['description_status']) && $settings_widget['description_status'] ) { ?>
                    <?php echo $record['description']; ?></p>
                <div class="text-center">
                    <a href="<?php echo $record['href']?>" class="blue-button">Подробнее</a>
                </div>
                <?php } ?>
            </div>
        </div>
        <?php } ?>
        <?php $i++;?>
        <?php } ?>
    </div>

</div>
<?php } ?>
