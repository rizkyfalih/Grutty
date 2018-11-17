<?php

    class M_Produk extends CI_Model {

        /* GET function */    
        public function get_all_produk(){
            $query = $this->db->get('produk');
            return $query->result();
        }

        public function get_barang(){
            $this->db->where('id_user', $this->session->userdata('user_id'));
            $query = $this->db->get('barang');
        
            return $query->row();
        }
        
        public function get_barang_info($id){
            $this->db->where('id_barang',$id);
            $get_data = $this->db->get('barang');

            return $get_data->row();
        }
        
        public function get_produk_by_id($id_produk){
            $hsl = $this->db->query("SELECT * FROM produk WHERE id_produk='$id_produk'");
            if($hsl->num_rows()>0){
                foreach ($hsl->result() as $data){
                    $hasil = array(
                        'id_produk' => $data->id_produk,
                        'nama_produk' => $data->nama_produk,
                        'harga_jual' => $data->harga_jual,
                        'jml_produk' => $data->jml_produk,

                    );
                }
                return $hasil;
            }
        }

    
    }


?>