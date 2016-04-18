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
    <div class="filter-body body-hidden">
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
    <div class="filter-button-wrapper">
      <button  id="button-filter" class="red-button btn"><?php echo $button_filter; ?></button>
    </div>
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
  $('.filter-header .grey-button').click(function(e){
    e.preventDefault();
    var forAttr = $(this).attr('for');
    
    var selectedInput = $('.filter-header #' + forAttr);
    if ($(selectedInput).prop('checked') == true) {
      $(selectedInput).prop('checked', false);
    }
    else {

      $(selectedInput).prop('checked', true);
      $('#button-filter').click();
    }
  });
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
    if (typeof nominal != 'undefined') {
      nominal = '&power=' + nominal;
      location = '<?php echo $action; ?>&filter=' + filter.join(',') + nominal + lines;
    }
    else {
      location = '<?php echo $action; ?>&filter=' + filter.join(',') + lines;
    }
  });
  function hideFilterBody() {
    $('.filter-body').toggleClass('body-hidden');
    $('.hr-hide').toggleClass('body-hidden');
  }
  $('.sliding-checkbox').find('label').click(function() {
    // console.log($(this))
    $(this).parent().find('.first-unit').toggleClass('active-unit');
    $(this).parent().find('.second-unit').toggleClass('active-unit');
  });
  $('.productline-layout .callme_viewform').click(function() {
    var formIdInput = '<span><input name="add[Имя формы:]" value="узнать цену главного товара линейки" type="hidden"><span>';
    var productName = $('.konan-table tr:first-child > td:first-child').text();
    var productNameInput = '<span><input type="hidden" name="Название товара:" value="' + productName +' "><span>';
    $('#cme-form-main').find('.cme-fields').append(formIdInput);
    $('#cme-form-main').find('.cme-fields').append(productNameInput);
  });
  // FILTER FIELDS CALCULATION FUNCTIONS
  // FILTER FIELDS CALCULATION FUNCTIONS
  // FILTER FIELDS CALCULATION FUNCTIONS
  
  function calculateMainPower() {
    currentField = document.getElementById('main-power');
    if ($("#measure-unit-1").is(':checked')) {
      nominal = currentField.value;
    } else {
      nominal = currentField.value * 0.8;
    }
    if ($("#measure-unit-2").is(':checked')) {
      document.getElementById('reserve-power').value = 1.1 * nominal;
    } else {
      document.getElementById('reserve-power').value = nominal / 0.8 * 1.1;
    }
    document.getElementById('current').value = 1.8 * nominal;
    $('#reserve-power').val(Number($('#reserve-power').val()).toFixed(2)) ;
    $('#current').val(Number($('#current').val()).toFixed(2));
  }
  function calculateReservePower() {
    currentField = document.getElementById('reserve-power');
    if ($("#measure-unit-2").is(':checked')) {
      nominal = currentField.value / 1.1;
    } else {
      nominal = 0.8 * currentField.value / 1.1;
    }
    if ($("#measure-unit-1").is(':checked')) {
      document.getElementById('main-power').value = nominal;
    } else {
      document.getElementById('main-power').value = nominal / 0.8;
    }
    document.getElementById('current').value = 1.8 * nominal;
    $('#current').val(Number($('#current').val()).toFixed(2));
    $('#main-power').val(Number($('#main-power').val()).toFixed(2));
  }
  function calculateCurrent() {
    currentField = document.getElementById('current');
    nominal = currentField.value / 1.8;
    if ($("#measure-unit-1").is(':checked')) {
      document.getElementById('main-power').value = nominal;
    } else {
      document.getElementById('main-power').value = nominal / 0.8;
    }
    if ($("#measure-unit-2").is(':checked')) {
      document.getElementById('reserve-power').value = 1.1 * nominal;
    } else {
      document.getElementById('reserve-power').value = nominal / 0.8 * 1.1;
    }
    $('#reserve-power').val(Number($('#reserve-power').val()).toFixed(2)) ;
    $('#main-power').val(Number($('#main-power').val()).toFixed(2));
  }
  function recalculateFields() {
    var nominal = document.getElementById('main-power').value;
    calculateMainPower();
    calculateReservePower(nominal);
    calculateCurrent(nominal);
  }
  function changeValue1() {
    if ($("#measure-unit-1").is(':checked')) {
      document.getElementById('main-power').value = nominal;
    } else {
      document.getElementById('main-power').value = nominal / 0.8;
    }
  }
  function changeValue2() {
    if ($("#measure-unit-2").is(':checked')) {
      document.getElementById('reserve-power').value = 1.1 * nominal;
    } else {
      document.getElementById('reserve-power').value = nominal / 0.8 * 1.1;
    }
  }
  // FILTER FIELDS CALCULATION FUNCTIONS END
  // FILTER FIELDS CALCULATION FUNCTIONS END
  // FILTER FIELDS CALCULATION FUNCTIONS END
  // FILTER FILEDS LISTENTERS
  // FILTER FILEDS LISTENTERS
  // FILTER FILEDS LISTENTERS
  document.getElementById('main-power').addEventListener('input', calculateMainPower);
  document.getElementById('reserve-power').addEventListener('input', calculateReservePower);
  document.getElementById('current').addEventListener('input', calculateCurrent);
  $('#measure-unit-1').click(changeValue1);
  $('#measure-unit-2').click(changeValue2);
  // FILTER FILEDS LISTENTERS END
  // FILTER FILEDS LISTENTERS END
  // FILTER FILEDS LISTENTERS END
</script>