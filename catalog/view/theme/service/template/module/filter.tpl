<!--Filter begins-->
<?php if (isset($lines)) { ?>
<div class="filter-container">
  <div class="wide-body-layout">
    <div class="filter-header flex-wrapper">
      <h3>Фильтр</h3>
      <?php $i = 0;?>
      <?php foreach ($filter_groups as $filter_group) { ?>
      <?php if ($filter_group['filter_group_id'] == 1) { ?>
        <?php foreach ($filter_group['filter'] as $filter) { ?>
          <?php $i++;?>
            <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
               <input type="radio" id="<?php echo $filter['filter_id']; ?>" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked">
               <label for="<?php echo $filter['filter_id']; ?>" class="grey-button "><?php echo $filter['name']; ?></label>
            <?php } else { ?>
                   <input type="radio" id="<?php echo $i;?>" name="filter[]" value="<?php echo $filter['filter_id']; ?>" >
                <label for="<?php echo $i;?>" class="grey-button "><?php echo $filter['name']; ?></label>
            <?php } ?>
      <?php } ?>
      <?php } ?>
      <?php } ?>
    </div>
    <div class="hr-hide">
      <div class="hide-arrow" onclick="hideFilterBody()"></div>
      <hr />
      <div class="hide-text">скрыть</div>
      <div class="show-text">открыть</div>
    </div>
    <div class="filter-body">
    <div class="filter-body-upper flex-wrapper">
      <div class="flex-item flex-wrapper input-group">
        <label for="main-power" name="main-power">Основная мощность:</label>
        <input id="main-power" type="text">
        <div class="sliding-checkbox">
          <input id="measure-unit-1" type="checkbox">
          <label for="measure-unit-1"></label>
          <div class="first-unit active-unit">кВА</div>
          <div class="second-unit">кВт</div>
        </div>
      </div>
      <div class="flex-item flex-wrapper input-group">
        <label for="reserve-power" name="reserve-power">Резервная мощность:</label>
        <input id="reserve-power" type="text">
        <div class="sliding-checkbox">
          <input id="measure-unit-2" type="checkbox">
          <label for="measure-unit-2"></label>
          <div class="first-unit active-unit">кВА</div>
          <div class="second-unit">кВт</div>
        </div>
      </div>
      <div class="flex-item flex-wrapper input-group">
        <label for="current" name="current">Ток А:</label>
        <input id="current" type="text">
      </div>
    </div>
      <div class="flex-wrapper filter-body-lower">
        <div class="flex-item">Двигатель:</div>
        <div class="flex-item flex-wrapper checkbox-group">
          <?php foreach ($filter_groups as $filter_group) { ?>
          <?php if ($filter_group['filter_group_id'] == 2) { ?>
          <?php foreach ($filter_group['filter'] as $filter) { ?>
          <div class="custom-checkbox">
            <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
              <input type="checkbox" name="filter[]" id="<?php echo $filter['filter_id']; ?>" value="<?php echo $filter['filter_id']; ?>" checked="checked">
              <label for="<?php echo $filter['filter_id']; ?>"><?php echo $filter['name']; ?></label>
            <?php } else { ?>
              <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" id="<?php echo $filter['filter_id']; ?>">
              <label for="<?php echo $filter['filter_id']; ?>"><?php echo $filter['name']; ?></label>
            <?php } ?>
          </div>
          <?php } ?>
          <?php } ?>
          <?php } ?>
        </div>
      </div>
    </div>
    <div class="filter-button-wrapper">
      <button  id="button-filter" class="red-button btn"><?php echo $button_filter; ?></button>
    </div>
  </div>
</div>

<?php } else { ?>
<div class="filter-container">
  <div class="wide-body-layout">
    <div class="filter-header flex-wrapper">
      <h3>Фильтр</h3>
      <?php $i = 0;?>
      <?php foreach ($filter_groups as $filter_group) { ?>
      <?php if ($filter_group['filter_group_id'] == 1) { ?>
      <?php foreach ($filter_group['filter'] as $filter) { ?>
      <?php $i++;?>
      <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
      <input type="radio" id="<?php echo $filter['filter_id']; ?>" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked">
      <label for="<?php echo $filter['filter_id']; ?>" class="grey-button "><?php echo $filter['name']; ?></label>
      <?php } else { ?>
      <input type="radio" id="<?php echo $i;?>" name="filter[]" value="<?php echo $filter['filter_id']; ?>" >
      <label for="<?php echo $i;?>" class="grey-button "><?php echo $filter['name']; ?></label>
      <?php } ?>
      <?php } ?>
      <?php } ?>
      <?php } ?>
    </div>
    <div class="hr-hide">
      <div class="hide-arrow" onclick="hideFilterHeader()"></div>
      <hr />
      <div class="hide-text">скрыть</div>
      <div class="show-text">открыть</div>
    </div>
    </div>
  <div class="filter-button-wrapper">
    <button type="button" id="button-filter" class="red-button btn btn-primary"><?php echo $button_filter; ?></button>
  </div>
  </div>

<?php }?>


<!--Filter ends-->
<script type="text/javascript">
$('#button-filter').on('click', function() {
	filter = [];
	$('input[name^=\'filter\']:checked').each(function(element) {
		filter.push(this.value);
	});

  lines = '';


  if (location['search'].indexOf('lines') != -1) {
    lines = "&lines=0";
  }


  //location = '<?php echo $action; ?>&filter=' + filter.join(',') + power + rpower + amperage + lines + nominal;
  if(nominal != undefined) {
    location = '<?php echo $action; ?>&filter=' + filter.join(',') + nominal + lines;
  }


});
</script>
