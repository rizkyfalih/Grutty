<?php

    class M_Penjualan extends CI_Model {
        /* CRUD function */
        public function create_penjualan($id_penjualan,$pj_total,$pj_bayar,$pj_kembalian){
            $id_pegawai = $this->session->userdata('id_pegawai');
            $date = date("Y-m-d");
            $this->db->query("INSERT INTO penjualan (id_penjualan,pj_total,pj_bayar,pj_kembalian,id_pegawai,pj_tgl) VALUES ('$id_penjualan','$pj_total','$pj_bayar','$pj_kembalian','$id_pegawai','$date')");
            foreach($this->cart->contents() as $item){
                $id_detail_penjualan = $this->m_detil_penjualan->kode_detil_Penjualan();
                $data = array(
                    'id_detil_penjualan' => $id_detail_penjualan,
                    'id_produk' => $item['id'],
                    'id_penjualan' => $id_penjualan,
                    'harga' => $item['subtotal'],
                    'qty' => $item['qty']
                );
                $this->db->insert('detil_penjualan',$data);
                $this->db->query("update produk set jml_produk=jml_produk-'$item[qty]' where id_produk='$item[id]'");
            }
            return true;
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

        public function get_penjualan_by_id($id_penjualan){
            $hsl = $this->db->query("SELECT * FROM penjualan WHERE id_penjualan='$id_penjualan'");
            if($hsl->num_rows()>0){
                foreach ($hsl->result() as $data){
                    $hasil = array(
                        'id_penjualan' => $data->id_penjualan,
                        'pj_total' => $data->pj_total,
                        'pj_bayar' => $data->pj_bayar,
                        'pj_kembalian' => $data->pj_kembalian,

                    );
                }
                return $hasil;
            }
        }


        /* Other function */
        public function kode_penjualan(){
            $this->db->select('RIGHT(penjualan.id_penjualan,4) as kode', FALSE);
            $this->db->order_by('id_penjualan','DESC');    
            $this->db->limit(1);    
            $query = $this->db->get('penjualan'); //cek dulu apakah ada sudah ada kode di tabel.    
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
            $kodejadi = "Penj".$kodemax;    // hasilnya ODJ-9921-0001 dst.
            return $kodejadi;
        }

    }



?>