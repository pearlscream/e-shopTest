<?php if (count($languages) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="language">


  <div class="flex-wrapper">
      <?php foreach ($languages as $language) { ?>
      <a class= "<?php if ($language['code'] == $code) echo 'lang active'; else echo 'lang';?>" href="<?php echo $language['code']; ?>">  <?php
       switch ($language['name']) {
         case "English": echo "En";
         break;
          case "Russian": echo "Ru";
          break;
         case "Ukrainian": echo "Ua";
        break;
       }
        ?></a>
      <?php } ?>
    </div>

  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
<?php } ?>
