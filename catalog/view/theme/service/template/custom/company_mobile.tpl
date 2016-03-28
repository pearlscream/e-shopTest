

<?php echo $header; ?>
<div class="container">
    <div class="wide-body-layout">
        <div class="row"><?php echo $column_left; ?>
            <?php if ($column_left && $column_right) { ?>
            <?php $class = 'col-sm-6'; ?>
            <?php } elseif ($column_left || $column_right) { ?>
            <?php $class = 'col-sm-9'; ?>
            <?php } else { ?>
            <?php $class = 'col-sm-12'; ?>
            <?php } ?>
            <div id="content" ><?php echo $content_top; ?><?php echo $content_bottom; ?></div>
            <?php echo $column_right; ?></div>

        <section class="links-wrapper">
            <a href="<?php echo $company?>">О нас</a>
            <a href="<?php echo $blogs?>">Блоги</a>
            <a href="<?php echo $news?>">Новости</a>
            <a href="<?php echo $projects?>">Проекты</a>
            <a href="<?php echo $certificates?>">Сертификаты</a>
        </section>
    </div>
</div>
<?php echo $footer; ?>