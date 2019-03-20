<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>
    </div>
    <hr>
    
            <div class="col-sm-3"><p><?php echo $powered; ?></p></div>
			<div class="col-sm-9 social_icons_vt_9"><?php echo $social_icons_vt; ?></div>
			
  </div>
</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

 
        <?php if (isset($jivosite_status)) { ?>
          <!-- BEGIN JIVOSITE CODE {literal} -->
          <script type='text/javascript'>
          (function(){ var widget_id = '<?php echo $jivosite_widget_id; ?>';var d=document;var w=window;function l(){
          var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = '//code.jivosite.com/script/widget/'+widget_id; var ss = document.getElementsByTagName('script')[0]; ss.parentNode.insertBefore(s, ss);}if(d.readyState=='complete'){l();}else{if(w.attachEvent){w.attachEvent('onload',l);}else{w.addEventListener('load',l,false);}}})();
          function jivo_onLoadCallback() {
          <?php if ($jlogged) { ?>
            //var date = new Date(0);document.cookie = "jv_client_name_<?php echo $jivosite_widget_id; ?>=; path=/; expires=" + date.toUTCString();
            jivo_api.setContactInfo({
                "name": "<?php echo $jname; ?>",
                "email": "<?php echo $jemail; ?>",
                "phone": "<?php echo $jtel; ?>",
                "description": "<?php echo $jdesc; ?>"
            }); 
          <?php } ?>
          }

          </script>
          <!-- {/literal} END JIVOSITE CODE -->
        <?php } ?>

      

				<?php if ($buyoneclick_status) { ?>
					<div id="boc_order" class="modal fade">
						<div class="modal-dialog">
							<div class="modal-content">
								<form id="boc_form" action="" role="form">
									<fieldset>
								<div class="modal-header">
									<button class="close" type="button" data-dismiss="modal">×</button>
									<h2 id="boc_order_title" class="modal-title"><?php echo $buyoneclick_title; ?></h2>
								</div>
								<div class="modal-body">
									<div id="boc_product_field" class="col-xs-12"></div>
									<div class="col-xs-12"><hr /></div>
									<div class="col-xs-12">
										<div style="display:none">
											<input id="boc_admin_email" type="text" name="boc_admin_email" value="<?php echo $buyoneclick_admin_email; ?>">
										</div>
										<div style="display:none">
											<input id="boc_product_id" type="text" name="boc_product_id">
										</div>
										<?php if ($buyoneclick_field1_status) { ?>
											<div class="input-group<?php if ($buyoneclick_field1_required) { echo ' has-warning';} ?>">
												<span class="input-group-addon"><i class="fa fa-fw fa-user" aria-hidden="true"></i></span>
												<input id="boc_name" class="form-control<?php if ($buyoneclick_field1_required) { echo ' required';} ?>" type="text" name="boc_name" placeholder="<?php echo $buyoneclick_field1_title; ?>">
											</div>
											<br />
										<?php } ?>
										<?php if ($buyoneclick_field2_status) { ?>
											<div class="input-group<?php if ($buyoneclick_field2_required) { echo ' has-warning';} ?>">
												<span class="input-group-addon"><i class="fa fa-fw fa-phone-square" aria-hidden="true"></i></span>
												<input id="boc_phone" class="form-control<?php if ($buyoneclick_field2_required) { echo ' required';} ?>" type="tel" name="boc_phone" placeholder="<?php if ($buyoneclick_validation_status) { echo $buyoneclick_validation_type; } else { echo $buyoneclick_field2_title; } ?>"<?php if ($buyoneclick_validation_status) {echo ' data-pattern="true"';} else {echo ' data-pattern="false"';} ?>>
											</div>
											<br />
										<?php } ?>
										<?php if ($buyoneclick_field3_status) { ?>
											<div class="input-group<?php if ($buyoneclick_field3_required) { echo ' has-warning';} ?>">
												<span class="input-group-addon"><i class="fa fa-fw fa-envelope" aria-hidden="true"></i></span>
												<input id="boc_email" class="form-control<?php if ($buyoneclick_field3_required) { echo ' required';} ?>" type="email" name="boc_email" placeholder="<?php echo $buyoneclick_field3_title; ?>">
											</div>
											<br />
										<?php } ?>
										<?php if ($buyoneclick_field4_status) { ?>
											<div class="form-group<?php if ($buyoneclick_field4_required) { echo ' has-warning';} ?>">
												<textarea id="boc_message" class="form-control<?php if ($buyoneclick_field4_required) { echo ' required';} ?>" name="boc_message" rows="3" placeholder="<?php echo $buyoneclick_field4_title; ?>" ></textarea>
											</div>
										<?php } ?>
										<?php if ($buyoneclick_agree_status !=0) { ?>
											<div class="checkbox">
												<label>
													<input id="boc_agree" type="checkbox" name="boc_agree" class="required" value="1"> <?=$buyoneclick_text_agree;?>
												</label>
											</div>
										<?php } ?>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="modal-footer">
									<div class="col-sm-2 hidden-xs">
									</div>
									<div class="col-sm-8 col-xs-12">
										<button type="submit" id="boc_submit" class="btn btn-lg btn-block btn-default"><?php echo $buyoneclick_button_order; ?></button>
									</div>
									<div class="col-sm-2 hidden-xs">
									</div>
								</div>
									</fieldset>
								</form>
							</div>
						</div>
					</div>
					<div id="boc_success" class="modal fade">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-body">
									<div class="text-center"><?php echo $buyoneclick_success_field; ?></div>
								</div>
							</div>
						</div>
					</div>
					<script type="text/javascript"><!--
					$('.boc_order_btn').on('click', function() {
						$.ajax({
							url: 'index.php?route=common/buyoneclick/info',
							type: 'post',
							data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
							beforeSend: function() {
								$('.boc_order_btn').button('loading');
							},
							complete: function() {
								$('.boc_order_btn').button('reset');
							},
							success: function(data) {
								//console.log(data);
								$('#boc_product_field').html(data);
							},
							error: function(xhr, ajaxOptions, thrownError) {
								console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
							}
						});
					});
					$('.boc_order_category_btn').on('click', function() {
						var for_post = {};
						for_post.product_id = $(this).attr('data-product_id');
						$.ajax({
							url: 'index.php?route=common/buyoneclick/info',
							type: 'post',
							data: for_post,
							beforeSend: function() {
								$('.boc_order_btn').button('loading');
							},
							complete: function() {
								$('.boc_order_btn').button('reset');
							},
							success: function(data) {
								//console.log(data);
								$('#boc_product_field').html(data);
							},
							error: function(xhr, ajaxOptions, thrownError) {
								console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
							}
						});
					});					
					//--></script>
				<?php } ?>
				
</body></html>