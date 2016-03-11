<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-account" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-account" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="prodline_status" id="input-status" class="form-control">
                <?php if ($prodline_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>

<!-- *********************************************************************************** -->

            <div class="tab-pane" id="tab-status">
              <h2><?php echo $tab_status; ?></h2>
              <div class="table-responsive">
                <table id="prodline_statuses" class="table table-striped table-bordered table-hover">
                  <thead>
                    <tr>
                      <td class="text-left"><?php echo $entry_names; ?></td>
                      <td class="text-left"><?php echo $entry_desc; ?></td>
                      <td class="text-right"><?php echo $entry_sort_order; ?></td>
                      <td></td>
                    </tr>
                  </thead>
                  <tbody>
                    <?php $line_statuses_row = 0; ?>
                    <?php if ($prodline){ ?>
                    <?php foreach ($prodline as $line) { ?>
                    <tr id="form_statuses-row<?php echo $line_statuses_row; ?>">

                      <td class="col-sm-3">
                        <?php foreach ($languages as $language) { ?>
                        <div class="input-group pull-left"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <input type="text" name="prodline[<?php echo $line_statuses_row; ?>][title][<?php echo $language['language_id']; ?>]" value="<?php echo isset($line['title'][$language['language_id']]) ? $line['title'][$language['language_id']] : ''; ?>" placeholder="<?php echo $entry_names; ?>" class="form-control" />
                        </div>
                        <?php } ?>
                      </td>

                      <td class="col-sm-6">
                        <?php foreach ($languages as $language) { ?>
                        <div class="input-group pull-left"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span>
                          <textarea name="prodline[<?php echo $line_statuses_row; ?>][desc][<?php echo $language['language_id']; ?>]" placeholder="<?php echo $entry_desc; ?>" class="form-control"><?php echo isset($line['desc'][$language['language_id']]) ? $line['desc'][$language['language_id']] : ''; ?></textarea>
                        </div>
                        <?php } ?>
                      </td>

                      <td class="text-right"><input type="text" name="prodline[<?php echo $line_statuses_row; ?>][sort_order]" value="<?php echo $line['sort_order']; ?>" placeholder="<?php echo $entry_sort_order; ?>" class="form-control" /></td>

                      <td class="text-left"><button type="button" onclick="$('#form_statuses-row<?php echo $line_statuses_row; ?>').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>

                    </tr>
                    <?php $line_statuses_row++; ?>
                    <?php } ?>
                    <?php } ?>
                  </tbody>
                  <tfoot>
                    <tr>
                      <td colspan="3"></td>
                      <td class="text-left"><button type="button" onclick="add();" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i></button></td>
                    </tr>
                  </tfoot>
                </table>
              </div><!-- /.table-responsive -->
            </div><!-- /#tab-status -->

        </form>
      </div>
    </div>
  </div>
</div>
<script>
  // $('textarea').summernote({height: 150});
  <?php for ($i=0; $i < $line_statuses_row; $i++) { ?>
    <?php foreach ($languages as $language) { ?>
    $('#form_statuses-row<?php echo $i; ?>').find('textarea[name="prodline[<?php echo $i; ?>][desc][<?php echo $language['language_id']; ?>]"]').eq(0).summernote({height: 150});
    // console.log($('#form_statuses-row<?php echo $i; ?>').find('textarea[name="prodline[<?php echo $i; ?>][desc][<?php echo $language['language_id']; ?>]"]').length);
    <?php } ?>
  <?php } ?>
</script>
<script type="text/javascript"><!--
var form_statuses_row = <?php echo $line_statuses_row; ?>;

function add() {
  html  = '<tr id="form_statuses-row' + form_statuses_row + '">';
  html += '  <td class="col-sm-3">';
  <?php foreach ($languages as $language) { ?>
  html += '    <div class="input-group">';
  html += '      <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span><input type="text" name="prodline[' + form_statuses_row + '][title][<?php echo $language['language_id']; ?>]" value="" placeholder="<?php echo $entry_names; ?>" class="form-control" />';
    html += '    </div>';
  <?php } ?>
  html += '  </td>';

  html += '  <td class="col-sm-6">';
  <?php foreach ($languages as $language) { ?>
  html += '    <div class="input-group">';
  html += '      <span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /></span><textarea name="prodline[' + form_statuses_row + '][desc][<?php echo $language['language_id']; ?>]" placeholder="<?php echo $entry_desc; ?>" class="form-control"></textarea>';
    html += '    </div>';
  <?php } ?>
  html += '  </td>';

  html += '  <td class="text-right"><input type="text" name="prodline[' + form_statuses_row + '][sort_order]" value="" placeholder="<?php echo $entry_sort_order; ?>" class="form-control" /></td>';

  html += '  <td class="text-left"><button type="button" onclick="$(\'#form_statuses-row' + form_statuses_row  + '\').remove();" data-toggle="tooltip" title="<?php echo $button_remove; ?>" class="btn btn-danger"><i class="fa fa-minus-circle"></i></button></td>';

  html += '</tr>';

  $('#prodline_statuses > tbody').append(html);
  <?php foreach ($languages as $language) { ?>
  // console.log($('#form_statuses-row' + form_statuses_row).find('textarea[name="prodline[' + form_statuses_row + '][desc][<?php echo $language['language_id']; ?>]"]').length);
  $('#form_statuses-row' + form_statuses_row).find('textarea[name="prodline[' + form_statuses_row + '][desc][<?php echo $language['language_id']; ?>]"]').summernote({height: 150});
  <?php } ?>
  form_statuses_row++;
}
//--></script>

<?php echo $footer; ?>