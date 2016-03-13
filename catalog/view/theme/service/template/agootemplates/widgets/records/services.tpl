<?php if ($records) { ?>
<div id="cmswidget-<?php echo $cmswidget; ?>" class="cmswidget">
    <?php echo $box_begin; ?>
    <div class="blog-content">
        <?php if ($records) { ?>
        <div class="record_columns">


            <!--Описание блога-->
            <?php echo $records[0]['blog_description']?>
            <!--Описание блога-->

            <?php foreach ($records as $record) { ?>
            <section class="white-and-grey-grid content-records column_width_<?php echo $cmswidget; ?>">
                <div class="wide-body-layout">
                    <?php if (isset($settings_widget['title_status']) && $settings_widget['title_status'] ) { ?>
                    <div >
                        <h3 class="section-title"><a href="<?php echo $record['href']; ?>" ><?php echo $record['name']; ?></a></h3>
                    </div>
                    <?php } ?>


                    <?php if ((isset ($settings_widget['images_view']) && $settings_widget['images_view'])  || (isset($settings_widget['avatar_status']) && $settings_widget['avatar_status'])) { ?>
                    <div class="image blog-image">
                        <?php if ($record['thumb'] && isset($settings_widget['avatar_status']) && $settings_widget['avatar_status']) { ?>
                        <div>
                            <?php if (isset ($settings_widget['blog_small_colorbox']) && $settings_widget['blog_small_colorbox']) { ?>
                            <a href="<?php echo $record['popup']; ?>" title="<?php echo $record['name']; ?>" class="imagebox" rel="imagebox">
                                <img src="<?php echo $record['thumb']; ?>"  title="<?php echo $record['name']; ?>" alt="<?php echo $record['name']; ?>" >
                            </a>
                            <?php } else { ?>
                            <a href="<?php echo $record['href']; ?>" title="<?php echo $record['name']; ?>" class="modal_<?php echo $cmswidget; ?> <?php if (isset($settings_widget['modal_status']) && $settings_widget['modal_status']) {
echo 'colorbox_modal';
 } ?>" data-cmswidget="<?php echo $cmswidget; ?>" data-template_modal="<?php
						 if (isset($settings_widget['template_modal']) && $settings_widget['template_modal']!='') {
							 	echo $settings_widget['template_modal'];
						 } else {
								echo '';
						 }
						?>">
                                <img src="<?php echo $record['thumb']; ?>" title="<?php echo $record['name']; ?>" alt="<?php echo $record['name']; ?>" />
                            </a>
                            <?php } ?>
                        </div>
                        <?php } ?>

                        <?php if (isset ($settings_widget['images_view']) && $settings_widget['images_view'] ) { ?>
                        <?php foreach ($record['images'] as $numi => $images) { ?>
                        <div class="image blog-image blog-image-thumb">
                            <a class="imagebox" rel="imagebox" title="<?php echo $images['title']; ?>" href="<?php echo $images['popup']; ?>">
                                <img alt="<?php echo $images['title']; ?>" title="<?php echo $images['title']; ?>" src="<?php echo $images['thumb']; ?>">
                            </a>
                        </div>
                        <?php } ?>
                        <?php } ?>
                    </div>
                    <?php } ?>

                    <?php if (isset($settings_widget['description_status']) && $settings_widget['description_status'] ) { ?>
                    <div class="description record_description"><?php echo $record['description']; ?><a href="<?php echo $record['href']; ?>" class="blog_further modal_<?php echo $cmswidget; ?> <?php if (isset($settings_widget['modal_status']) && $settings_widget['modal_status']) {
echo 'colorbox_modal';
 } ?>" data-cmswidget="<?php echo $cmswidget; ?>" data-template_modal="<?php
						 if (isset($settings_widget['template_modal']) && $settings_widget['template_modal']!='') {
							 	echo $settings_widget['template_modal'];
						 } else {
								echo '';
						 }
						?>"><?php if (isset($settings_general['further'][$config_language_id])) echo html_entity_decode($settings_general['further'][$config_language_id]); ?></a></div>
                    <?php } ?>

                </div>
            </section>
            <?php } ?>


        </div>

        <?php if (isset ($settings_widget['category_button']) && $settings_widget['category_button'] ) { ?>
        <?php
				reset($records);
				foreach ($records as $num => $record) {
        $category[$record['blog_name']]= $record['blog_href'];
        }

        ?>
        <div class="marginbottom5 textalignright">
            <?php foreach ($category as $name => $href) { ?>
            <div class="textcatbutton floatright marginleft5">
                <a href="<?php echo $href; ?>" class="button btn btn-primary"><?php echo $language->get('text_all_begin'); ?><?php echo utf8_strtolower($name); ?><?php echo $language->get('text_all_end'); ?></a>
            </div>
            <?php } ?>
        </div>
        <?php } ?>
        <div class="divider100"></div>



        <?php if ((isset ($settings_widget['limit']) && $settings_widget['limit']) || (isset ($settings_widget['sort']) && $settings_widget['sort'])) { ?>
        <div class="divider100 borderbottom2 margintop2"></div>
        <div class="record-filter textalignright margintop5">
            <ul class="ascp_horizont">
                <?php if (isset ($settings_widget['limit']) && $settings_widget['limit'] ) { ?>
                <li>
                    <b><?php echo $text_limit; ?></b>
                    <select onchange="location = this.value;">
                        <?php foreach ($limits as $limits) { ?>
                        <?php if ($limits['value'] == $limit) { ?>
                        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                        <?php } ?>
                        <?php } ?>
                    </select>
                </li>
                <?php } ?>
                <?php if (isset ($settings_widget['sort']) && $settings_widget['sort'] ) { ?>
                <li>
                    <b><?php echo $text_sort; ?></b>
                    <select onchange="location = this.value;">
                        <?php foreach ($sorts as $sorts) { ?>
                        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                        <?php } ?>
                        <?php } ?>
                    </select>
                </li>
                <?php } ?>

            </ul>
        </div>
        <div class="divider100"></div>
        <?php } ?>

        <?php if (isset ($settings_widget['pagination']) && $settings_widget['pagination'] ) { ?>
        <div class="pagination margintop5"><?php echo $pagination; ?></div>
        <?php } ?>

        <?php } ?>

    </div>

    <?php echo $box_end; ?>
</div>

<?php if (isset($settings_widget['anchor']) && $settings_widget['anchor']!='') { ?>
<script>
    <?php if (isset($settings_widget['doc_ready']) && $settings_widget['doc_ready']) { ?>
        $(document).ready(function(){
            <?php  } ?>
            var prefix = '<?php echo $prefix;?>';
            var cmswidget = '<?php echo $cmswidget; ?>';
            var heading_title = '<?php echo $heading_title; ?>';
            var records = '<?php echo count($records); ?>';
            var total = '<?php echo $total; ?>';
            var data = $('#cmswidget-<?php echo $cmswidget; ?>').html($('#cmswidget-<?php echo $cmswidget; ?>').clone());
		<?php echo $settings_widget['anchor']; ?>;
		delete records;
		delete total;
		delete data;
		delete prefix;
		delete cmswidget;
	<?php if (isset($settings_widget['doc_ready']) && $settings_widget['doc_ready']) { ?>
	});
	<?php  } ?>
</script>
<?php  } ?>

<?php } ?>