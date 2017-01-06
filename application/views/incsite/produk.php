<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">Daftar Produk</h2>
						<?php foreach($data_produk as $row) { ?>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img style="width:268px; height:269px" src="<?php echo base_url(); ?>assets/upload/<?php echo $row['foto']; ?>" alt="" />
											<h2><?php echo currency_format($row['harga']); ?></h2>
											<p style="text-transform:capitalize;"><?php echo $row['judul']; ?></p>
											<a href="<?php echo base_url(); ?>detail-<?php echo strtolower(str_replace(' ','-',preg_replace("/[^a-zA-Z0-9\s]/", "", $row['judul']))).'-'.$row['id_produk']; ?>" class="btn btn-default add-to-cart"><i class="fa fa-eye"></i>Detail Produk</a>
										</div>
								</div>
								
							</div>
						</div>
						<?php } ?>
						
						<div class="pagination-area">
							<ul class="pagination">
								<?php echo $pages; ?>
							</ul>
						</div>
					</div>
				</div>