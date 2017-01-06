<div class="col-sm-9 padding-right">
					<?php foreach($data_produk as $row){ ?>
					<div class="product-details"><!--product-details-->
						<div class="col-sm-5">
							<div class="view-product">
								<img style="width:266px; height=281px" src="<?php echo base_url(); ?>assets/upload/<?php echo $row['foto']; ?>" alt="" />
							</div>

						</div>
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
								<img src="<?php echo base_url(); ?>assets/site/images/product-details/new.jpg" class="newarrival" alt="" />
								<h2><?php echo $row['judul']; ?></h2>
								<!-- <img src="<?php echo base_url(); ?>assets/site/images/product-details/rating.png" alt="" /> -->
								<span>
									<span><?php echo currency_format($row['harga']); ?></span>
								</span>
								<!-- <p><b>Tersedia:</b> <?php echo $row['judul']; ?></p> -->
								<p><b>Di Update Tanggal:</b> <?php echo date('d M Y H:i:s',strtotime($row['tgl_input_pro'])); ?></p>
								<p><b>Jumlah:</b> <?php echo $row['jumlah']; ?></p>
								<p><b>Kondisi:</b> <?php echo $row['kondisi']; ?></p>
								<p><b>Jenis:</b> <?php echo $row['merk']; ?></p>
								<p><b>Keterangan:</b> <?php echo $row['ket']; ?></p>
								<!-- <a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a> -->
							</div><!--/product-information-->
						</div>
					</div><!--/product-details-->
					<?php } ?>
				</div>