<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_install) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_install; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php foreach ($rows as $row) { ?>
    <div class="row">
      <?php foreach ($row as $dashboard_1) { ?>
      <?php $class = 'col-lg-' . $dashboard_1['width'] . ' col-md-3 col-sm-6'; ?>
      <?php foreach ($row as $dashboard_2) { ?>
      <?php if ($dashboard_2['width'] > 3) { ?>
      <?php $class = 'col-lg-' . $dashboard_1['width'] . ' col-md-12 col-sm-12'; ?>
      <?php } ?>
      <?php } ?>
      <div class="<?php echo $class; ?>"><?php echo $dashboard_1['output']; ?></div>
      <?php } ?>
    </div>
    <?php } ?>
  </div>
</div>

			<div id="oqv" class="modal" role="dialog">
				<div class="modal-dialog modal-lg" role="document">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title"><?php echo $dmp_oqv_heading; ?> #<span id="oqv_order_id"></span></h4>
						</div>
						<div class="modal-body">
							
						</div>
						<div class="modal-footer" id="oqv_modal_footer">
						</div>
					</div>
				</div>
			</div>

  <script type="text/javascript"><!--
  
$('.hover_order_id').each(function() {

	$( this ).click(function(e){
		$order_id = $( this ).data('order-id');
		$.ajax({
			url: '<?php echo HTTP_SERVER; ?>index.php?route=sale/dmp_oqv/info&token=<?php echo $token; ?>&order_id=' + $order_id,
			type: 'get',
			dataType: 'text',
			beforeSend: function() {
				$('#oqv_modal_footer').empty();
			
				$('#oqv .modal-body').html('<?php echo $dmp_oqv_loading; ?> ...');
				$('#oqv_modal_footer').prepend('<a href="index.php?route=sale/order/edit&token=<?php echo $token; ?>&order_id=' + $order_id + '<?php echo (isset($filter_order_status) ? "&filter_order_status=" . $filter_order_status : ''); ?>" type="button" class="btn btn-primary pull-left"><i class="fa fa-pencil"></i> <?php echo $dmp_oqv_edit; ?></a>');
				$('#oqv_modal_footer').prepend('<a href="index.php?route=sale/order/info&token=<?php echo $token; ?>&order_id=' + $order_id + '<?php echo (isset($filter_order_status) ? "&filter_order_status=" . $filter_order_status : ''); ?>" type="button" class="btn btn-info pull-left"><i class="fa fa-eye"></i> <?php echo $dmp_oqv_open; ?></a>');
				$('#oqv_modal_footer').prepend('<button type="button" class="btn btn-default pull-right" data-dismiss="modal"><?php echo $dmp_oqv_close; ?></button>');
			},
			success: function(responseText) {
				$('#oqv .modal-body').html(responseText);
			},
			error: function(xhr, ajaxOptions, thrownError) {
				alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
			}
		});
	
		$('#oqv_order_id').text( $( this ).data('order-id') );
		$('#oqv').modal();
	});
	
});

//--></script> 
			
<?php echo $footer; ?>