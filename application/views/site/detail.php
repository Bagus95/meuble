<!DOCTYPE html>
<html lang="en">
<head>
    <?php $this->load->view('incsite/head'); ?>
</head><!--/head-->

<body>
	<?php $this->load->view('incsite/head2'); ?>
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<?php $this->load->view('incsite/sidebar'); ?>
				</div>
				
				<?php $this->load->view('incsite/detail_produk'); ?>
			</div>
		</div>
	</section>
	
	<footer id="footer"><!--Footer-->		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Toko Mebel Onliine</p>
					<p class="pull-right">Designed by <span>KCO Team</span></p>
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	<?php $this->load->view('incsite/footer2'); ?>
</body>
</html>