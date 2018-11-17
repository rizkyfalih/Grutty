<?php
    class M_Pegawai extends CI_Model {
        /* CRUD Function */
        public function create_pegawai($data){
            $insert_query =  $this->db->insert('pegawai', $data);
        }
        
        public function edit_pegawai($id_pegawai, $data){
            $this->db->where('id_pegawai', $id_pegawai);
            $this->db->update('pegawai', $data);

            return true;
        }

        public function delete_pegawai($id_pegawai){
            $this->db->where('id_pegawai', $id_pegawai);
            $this->db->delete('pegawai');
        }

        /* GET Function */
        public function get_all_pegawai(){
            $query = $this->db->get('pegawai');
            return $query->result();
        }

        public function get_pegawai($id_pegawai){
            $this->db->where('id_pegawai', $id_pegawai);
            $query = $this->db->get('pegawai');
        }

        public function get_status_pegawai($username, $password){
            $this->db->where('id_pegawai', $username);
            $this->db->where('password', $password);

            $result = $this->db->get('pegawai');
            if($result->num_rows()==1){
                return $result->row(0)->jabatan;
            }else{
                return false;
            }
        }

        public function get_id_pegawai($username, $password){
            $this->db->where('id_pegawai', $username);
            $this->db->where('password', $password);

            $result = $this->db->get('pegawai');
            if($result->num_rows()==1){
                return $result->row(0)->id_pegawai;
            }else{
                return false;
            }
        }

        /* Other function */
        public function kode_pegawai(){
            $this->db->select('RIGHT(pegawai.id_pegawai,4) as kode', FALSE);
            $this->db->order_by('id_pegawai','DESC');    
            $this->db->limit(1);    
            $query = $this->db->get('pegawai'); //cek dulu apakah ada sudah ada kode di tabel.    
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
            $kodejadi = "Peg".$kodemax;    // hasilnya ODJ-9921-0001 dst.
            return $kodejadi;
        }
    }

?>