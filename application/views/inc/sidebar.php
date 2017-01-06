<section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="<?php echo base_url(); ?>assets/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p><?php echo $nama; ?></p>

              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MENU</li>
            <li>
              <a href="<?php echo base_url(); ?>dashboard">
                <i class="fa fa-home"></i> <span>Dashboard</span> <small class="label pull-right bg-green">new</small>
              </a>
            </li>
            <li>
              <a href="<?php echo base_url(); ?>kategori">
                <i class="fa fa-tag"></i> <span>Kategori</span> <small class="label pull-right bg-green">new</small>
              </a>
            </li>
            <li>
              <a href="<?php echo base_url(); ?>produk">
                <i class="fa fa-photo"></i> <span>Produk</span> <small class="label pull-right bg-green">new</small>
              </a>
            </li>
            <li>
              <a href="<?php echo base_url(); ?>login/logout">
                <i class="fa fa-sign-out"></i> <span>Keluar</span> <small class="label pull-right bg-green">new</small>
              </a>
            </li>
          </ul>
        </section>