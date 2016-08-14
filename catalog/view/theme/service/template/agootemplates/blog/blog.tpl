

<?php echo $header; ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">


		<?php echo $content_top; ?>


	<div class="wide-body-layout">
		<h1 class="page-title">Новости</h1>
		<?php if ($records) { ?>
		<p class="page-description"><?php echo $description; ?></p>
		<div class="blogs flex-wrapper">
			<?php foreach ($records as $record) { ?>
			<div class="flex-item blog borders borders-with-hover">
				<div class="blog-wrapper">
					<div class="image-wrapper">
						<?php if (isset ($settings_widget['images_view']) && $settings_widget['images_view'] ) { ?>
						<?php foreach ($record['images'] as $numi => $images) { ?>
						<img alt="<?php echo $images['title']; ?>" title="<?php echo $images['title']; ?>" src="<?php echo $images['popup']; ?>">
						<?php } ?>
						<?php } ?>
					</div>
					<h3 class="blog-title"><a href="<?php echo $record['href']; ?>" ><?php echo $record['name']; ?></a></h3>
					<?php if (isset($settings_widget['title_status']) && $settings_widget['title_status'] ) { ?>
					<?php } ?>
					<p class="description">
						<?php echo $record['description']; ?></p>
					<div class="text-center">
						<a href="<?php echo $record['href']?>" class="blue-button">Подробнее</a>
					</div>
				</div>
			</div>
			<?php } ?>
			<?php } ?>
		</div>
		<?php if (isset ($settings_widget['pagination']) && $settings_widget['pagination'] ) { ?>
		<div class="pagination margintop5"><?php echo $pagination; ?></div>
		<?php } ?>

	</div>
</div>

	<?php echo $content_bottom; ?>

<?php echo $footer; ?>



