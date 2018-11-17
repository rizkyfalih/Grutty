<!-- Header Content -->
<?php
  $this->load->view('layout/header');
?>
<!-- /Header Content -->

  <!-- Navigation Content -->
  <?php
    $this->load->view('kasir/navigation');
  ?>
  <!-- /Navigation Content -->
    
    
    <!-- page content -->
        <div class="right_col" role="main">
          <div class="">
            <div class="row top_tiles">
              <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-shopping-cart"></i></div>
                  <div class="count"><?php $query = $this->db->query('SELECT * FROM penjualan');
                        echo $query->num_rows();?></div>
                  <h3>Jumlah Transaksi Penjualan</h3>
                </div>
              </div>
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Laporan Penjualan</h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <table id="datatable-buttons" class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>ID Penjualan</th>
                          <th>Total Harga Penjualan</th>
                          <th>Pembayaran</th>
                          <th>Kembalian</th>
                        </tr>
                      </thead>
                      <?php foreach($penjualans as $penjualan): ?>
                        <tr>
                        <td><?php echo $penjualan-> id_penjualan?></td>
                        <td><?php echo $penjualan-> pj_total; ?></td>
                        <td><?php echo $penjualan-> pj_bayar; ?></td>
                        <td><?php echo $penjualan-> pj_kembalian; ?></td>
                        </tr>
                        <?php endforeach;?>
                      <tbody>

                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
           
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->
    <!-- Footer content -->
    <?php
      $this->load->view('layout/footer');
    ?>
    <!-- /Footer content -->

    <!-- Custom Theme Scripts -->
    <script src="<?php echo base_url(); ?>assets/build/js/custom.min.js"></script>
    
    </body>
</html>