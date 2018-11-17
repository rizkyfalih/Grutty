<?php

    class Kasir extends CI_Controller {
        public function __construct(){
            parent::__construct();

            if(!$this->session->userdata('logged_in')){
                redirect('login/index');
            }
            
        }
    
        public function index(){
            $data['produks'] = $this->m_produk->get_all_produk();
            $data['kode_penjualan'] = $this->m_penjualan->kode_penjualan();
            $this->load->view('kasir/index', $data);
        }

        function get_penjualan(){
            $id_penjualan = $this->input->post('id_penjualan');
            $data = $this->m_penjualan->get_penjualan_by_id($id_penjualan);
            echo json_encode($data);
        }

        function get_produk(){
            $id_produk = $this->input->post('id_produk');
            $data = $this->m_produk->get_produk_by_id($id_produk);
            echo json_encode($data);
        }

        function add_to_cart(){
            $id_produk = $this->input->post('id_produk');
            $produk = $this->m_produk->get_produk_by_id($id_produk);
            $data = array(
                'id' => $id_produk,
                'name' => $produk['nama_produk'],
                'price' => $produk['harga_jual'],
                'qty' => $this->input->post('qty'),
            );

            if(!empty($this->cart->total_items())){
                foreach ($this->cart->contents() as $items){
                    $id=$items['id'];
                    $qtylama=$items['qty'];
                    $rowid=$items['rowid'];
                    $id_produk=$this->input->post('id_produk');
                    $qty = $this->input->post('qty');
                    if($id==$id_produk){
                        $up=array(
                            'rowid' => $rowid,
                            'qty' => $qtylama+$qty 
                        );
                        $this->cart->update($up);
                    } else {
                        $this->cart->insert($data);
                    }             
                }
            } else {
                $this->cart->insert($data);
            }
            redirect('kasir/index');
        }

        public function create_penjualan(){
            $pj_total = $this->input->post('pj_total');
            $pj_bayar = $this->input->post('pj_bayar');
            $pj_kembalian = $pj_bayar - $pj_total;

            $id_penjualan = $this->m_penjualan->kode_penjualan();
            $this->session->set_userdata('id_penjualan', $id_penjualan);
            $order_proses=$this->m_penjualan->create_penjualan($id_penjualan,$pj_total,$pj_bayar,$pj_kembalian);
            if($order_proses){
                $this->cart->destroy();
                redirect('kasir/index');
            }
        }

        public function laporan_penjualan(){
            $data['penjualans'] = $this->m_penjualan->get_all_penjualan();
            $this->load->view('kasir/laporan_pj',$data);
        }

        public function remove_a_cart(){
            $row_id = $this->uri->segment(3);
            $this->cart->update(array(
                'rowid' => $row_id,
                'qty' => 0
            ));
            redirect('kasir/index');
        }

    }

?>