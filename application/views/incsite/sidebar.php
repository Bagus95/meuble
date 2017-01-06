<div class="right-sidebar">
	<div class="brands_products">
		<h2>Kategori</h2>
		<div class="brands-name">
			<ul class="nav nav-pills nav-stacked">
				<?php foreach($kategoriq as $row) { ?>
				<li><a href="<?php echo base_url()."site/kategori/".$row['id_kat']; ?>"> <span class="pull-right"></span><?php echo $row['kategori']; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div>

	<div class="brands_products">
		<h2>Jenis</h2>
		<div class="brands-name">
			<ul class="nav nav-pills nav-stacked">
				<?php foreach($merk as $row) { ?>
				<li><a href="<?php echo base_url()."site/merk/".$row['id_merk']; ?>"> <span class="pull-right"></span><?php echo $row['merk']; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div>
</div>