<?php

    class M_Detil_Penjualan extends CI_Model {
        /* CRUD function */
        public function create_detil_penjualan($data){
            $insert_query = $this->db->insert('detil_penjualan', $data);
            return $insert_query;
        }

        public function edit_penjualan($id_penjualan, $data){
            $this->db->where('id_penjualan', $id_penjualan);
            $this->db->update('penjualan', $data);

            return true;
        }

        public function delete_penjualan($id_penjualan){
            $this->db->where('id_penjualan', $id_penjualan);
            $this->db->delete('penjualan');
        }

        /* GET Function */
        public function get_all_penjualan(){
            $query = $this->db->get('penjualan');
            return $query->result();
        }

        public function get_penjualan($id_penjualan){
            $this->db->where('id_penjualan',$id_penjualan);
            $query = $this->db->get('penjualan');

            return $query->row();
        }

        /* Other function */
        public function kode_detil_penjualan(){
            $this->db->select('RIGHT(detil_penjualan.id_detil_penjualan,4) as kode', FALSE);
            $this->db->order_by('id_detil_penjualan','DESC');    
            $this->db->limit(1);    
            $query = $this->db->get('detil_penjualan'); //cek dulu apakah ada sudah ada kode di tabel.    
            if($query->num_rows() <> 0){      
              //jika kode ternyata sudah ada.      
              $data = $query->row();      
              $kode = intval($data->kode) + 1;    
            }
            else {      
              //jika kode belum ada      
              $kode = 1;    
            }
            $kodemax = str_pad($kode, 4, "0", STR_PAD_LEFT); // angka 4 menunjukkan jumlah digit angka 0
            $kodejadi = "DP".$kodemax;    // hasilnya ODJ-9921-0001 dst.
            return $kodejadi;
        }

    }



?>