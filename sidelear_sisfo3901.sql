-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2018 at 09:32 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sidelear_sisfo3901`
--

-- --------------------------------------------------------

--
-- Table structure for table `detil pelatihan`
--

CREATE TABLE `detil pelatihan` (
  `no_pelatihan` varchar(30) NOT NULL,
  `id_pegawai` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detil_penjualan`
--

CREATE TABLE `detil_penjualan` (
  `id_detil_penjualan` varchar(30) NOT NULL,
  `id_produk` varchar(30) NOT NULL,
  `id_penjualan` varchar(30) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detil_penjualan`
--

INSERT INTO `detil_penjualan` (`id_detil_penjualan`, `id_produk`, `id_penjualan`, `harga`, `qty`) VALUES
('1', 'spt02', 'Penj0002', 3300, 3),
('DP0002', 'spt02', 'Penj0004', 1100, 1),
('DP0003', 'spt02', 'Penj0005', 13200, 12);

-- --------------------------------------------------------

--
-- Table structure for table `detil_produk`
--

CREATE TABLE `detil_produk` (
  `id_detil_produk` varchar(30) NOT NULL,
  `id_produk` varchar(30) NOT NULL,
  `jenis_produk` varchar(30) NOT NULL,
  `merk_produk` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `evaluasi`
--

CREATE TABLE `evaluasi` (
  `id_pegawai` varchar(30) NOT NULL,
  `nilai` varchar(30) NOT NULL,
  `Materi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `id_gaji` varchar(30) NOT NULL,
  `tanggal_gaji` date NOT NULL,
  `total_gaji` int(30) NOT NULL,
  `id_pegawai` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` varchar(30) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL,
  `alamat_pegawai` varchar(30) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `tlp_pegawai` double NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `alamat_pegawai`, `jabatan`, `jenis_kelamin`, `tlp_pegawai`, `tanggal_lahir`, `password`) VALUES
('absen', 'John cena', 'tetenetteeet', 'tukang absen', 'satu', 123, '2018-04-10', 'absen'),
('peg1', 'jodid nugraha', 'boston', 'tukang bubur', 'pria', 89765424216128, '2018-04-09', 'peg1'),
('peg10', 'Ichan', 'Jakarta', 'kasir', 'Laki-Laki', 82342312312, '1997-04-09', 'peg10'),
('peg2', 'marsmilo', 'mars', 'tukang susu', 'pria', 89876542441, '2018-04-27', 'peg2'),
('peg3', 'tahri juwita', 'majalengka', 'pegawai', 'pria', 89776252415, '2018-04-30', 'peg3'),
('peg4', 'sugi daiku desu', 'jepang', 'hokage', 'pria', 88917, '2018-06-07', 'peg4'),
('peg5', 'slash', 'inggris', 'tukang gitar', 'pria', 9.089898982982982e16, '2018-04-16', 'peg5'),
('peg6', 'wanwan', 'sukabirus', 'tukang kosan', 'wanita ', 898272772367236, '2018-04-27', 'peg6'),
('peg7', 'iqbal alifudin', 'jl telkom', 'tukang ngoding', 'wanita', 8977771111, '1867-04-09', 'peg7'),
('peg8', 'aduino ubai pali\'', 'bandung', 'tukang laptop', 'wanita', 8776626262626, '0001-04-02', 'peg8'),
('peg9', 'alan walking life', 'everest', 'tukang cuci piring', 'pria', 8.917171717171717e15, '9999-04-18', 'peg9');

-- --------------------------------------------------------

--
-- Table structure for table `pelatihan`
--

CREATE TABLE `pelatihan` (
  `no_pelatihan` varchar(30) NOT NULL,
  `nama_instuktur` varchar(30) NOT NULL,
  `tanggal_pelatihan` date NOT NULL,
  `tempat_pelatihan` varchar(30) NOT NULL,
  `waktu_pelatihan` varchar(30) NOT NULL,
  `durasi_pelatihan` varchar(30) NOT NULL,
  `topik_pelatihan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelatihan`
--

INSERT INTO `pelatihan` (`no_pelatihan`, `nama_instuktur`, `tanggal_pelatihan`, `tempat_pelatihan`, `waktu_pelatihan`, `durasi_pelatihan`, `topik_pelatihan`) VALUES
('np001', 'Jidod S.T', '2018-04-30', 'TUCH', '13:00 - 15:00', '2 Jam', 'Q-Learning'),
('np002', 'R. Shinju', '2018-05-05', 'GOR Citra', '09:00 - 10:00', '1 Jam', 'Market Process'),
('np003', 'Tahri S.Ak.', '2018-05-01', 'VillaZone', '18:00 - 21:00', '3 jam', 'Pengaturan Kasir');

-- --------------------------------------------------------

--
-- Table structure for table `pemasaran`
--

CREATE TABLE `pemasaran` (
  `id_iklan` varchar(30) NOT NULL,
  `jenis_iklan` varchar(30) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `harga_iklan` int(30) NOT NULL,
  `status_iklan` varchar(30) NOT NULL,
  `pelunasan` tinyint(1) NOT NULL,
  `Keterangan_iklan` varchar(256) NOT NULL,
  `id_pegawai` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemasaran`
--

INSERT INTO `pemasaran` (`id_iklan`, `jenis_iklan`, `tgl_mulai`, `tgl_akhir`, `harga_iklan`, `status_iklan`, `pelunasan`, `Keterangan_iklan`, `id_pegawai`) VALUES
('', '', '0000-00-00', '0000-00-00', 0, '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` varchar(30) NOT NULL,
  `id_pemesanan` varchar(30) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `status_bayar` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan barang`
--

CREATE TABLE `pemesanan barang` (
  `id_pemesanan` varchar(30) NOT NULL,
  `id_supplier` varchar(30) NOT NULL,
  `id_pegawai` varchar(30) NOT NULL,
  `id_produk` varchar(30) NOT NULL,
  `jumlah` int(30) NOT NULL,
  `total_harga` int(30) NOT NULL,
  `tanggal_pesan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan barang`
--

INSERT INTO `pemesanan barang` (`id_pemesanan`, `id_supplier`, `id_pegawai`, `id_produk`, `jumlah`, `total_harga`, `tanggal_pesan`) VALUES
('pem1', 'sup1', 'peg1', 'spt01', 5, 50000, '2018-04-26'),
('pem2', 'sup1', 'peg10', 'spt02', 10, 90000, '2018-04-30'),
('pem3', 'sup1', 'peg9', 'spt01', 1, 10000, '2018-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` varchar(30) NOT NULL,
  `pj_total` int(30) NOT NULL,
  `pj_bayar` int(30) NOT NULL,
  `pj_kembalian` int(30) NOT NULL,
  `id_pegawai` varchar(30) NOT NULL,
  `pj_tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `pj_total`, `pj_bayar`, `pj_kembalian`, `id_pegawai`, `pj_tgl`) VALUES
('Penj0001', 1000, 100, 900, 'peg10', '2018-04-27'),
('Penj0002', 4400, 0, 0, 'peg10', '2018-05-07'),
('Penj0003', 5500, 10000, 4500, 'peg10', '2018-05-07'),
('Penj0004', 1100, 2000, 900, 'peg10', '2018-05-07'),
('Penj0005', 13200, 20000, 6800, 'peg10', '2018-11-19');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` varchar(30) NOT NULL,
  `nama_produk` varchar(30) NOT NULL,
  `jenis_produk` varchar(30) NOT NULL,
  `merk_produk` varchar(30) NOT NULL,
  `harga_beli` int(30) NOT NULL,
  `harga_jual` int(30) NOT NULL,
  `status_produk` tinyint(1) NOT NULL,
  `jml_produk` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `jenis_produk`, `merk_produk`, `harga_beli`, `harga_jual`, `status_produk`, `jml_produk`) VALUES
('spt01', 'Swallow X', 'Sepatu', 'Swallow', 10000, 12500, 1, 5),
('spt02', 'Swallow Pro M1', 'Sepatu', 'Swallow', 9000, 1100, 1, -7);

-- --------------------------------------------------------

--
-- Table structure for table `produk return`
--

CREATE TABLE `produk return` (
  `id_return` varchar(30) NOT NULL,
  `id_cek` varchar(30) NOT NULL,
  `id_produk` varchar(30) NOT NULL,
  `nama_produk` varchar(30) NOT NULL,
  `jenis_produk` varchar(30) NOT NULL,
  `merk_produk` varchar(30) NOT NULL,
  `jml_produk_return` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quality control`
--

CREATE TABLE `quality control` (
  `id_cek` varchar(30) NOT NULL,
  `id_produk` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE `shift` (
  `id_pegawai` varchar(30) NOT NULL,
  `jam_masuk` int(30) NOT NULL,
  `jam_keluar` int(30) NOT NULL,
  `jumlah_jam_hari` int(30) NOT NULL,
  `jumlah_jam_bulan` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` varchar(30) NOT NULL,
  `nama_supplier` varchar(30) NOT NULL,
  `alamat_supplier` varchar(30) NOT NULL,
  `tlp_supplier` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat_supplier`, `tlp_supplier`) VALUES
('sup1', 'usup', 'bdg', '08121212122');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detil pelatihan`
--
ALTER TABLE `detil pelatihan`
  ADD KEY `no_pelatihan` (`no_pelatihan`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `detil_penjualan`
--
ALTER TABLE `detil_penjualan`
  ADD PRIMARY KEY (`id_detil_penjualan`),
  ADD KEY `id_penjualan` (`id_penjualan`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `detil_produk`
--
ALTER TABLE `detil_produk`
  ADD PRIMARY KEY (`id_detil_produk`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `evaluasi`
--
ALTER TABLE `evaluasi`
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`id_gaji`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `pelatihan`
--
ALTER TABLE `pelatihan`
  ADD PRIMARY KEY (`no_pelatihan`);

--
-- Indexes for table `pemasaran`
--
ALTER TABLE `pemasaran`
  ADD PRIMARY KEY (`id_iklan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_pemesanan` (`id_pemesanan`);

--
-- Indexes for table `pemesanan barang`
--
ALTER TABLE `pemesanan barang`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `id_supplier` (`id_supplier`),
  ADD KEY `id_pegawai` (`id_pegawai`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `produk return`
--
ALTER TABLE `produk return`
  ADD PRIMARY KEY (`id_return`);

--
-- Indexes for table `quality control`
--
ALTER TABLE `quality control`
  ADD PRIMARY KEY (`id_cek`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detil_penjualan`
--
ALTER TABLE `detil_penjualan`
  ADD CONSTRAINT `detil_penjualan_ibfk_1` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualan` (`id_penjualan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detil_penjualan_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detil_produk`
--
ALTER TABLE `detil_produk`
  ADD CONSTRAINT `detil_produk_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `evaluasi`
--
ALTER TABLE `evaluasi`
  ADD CONSTRAINT `evaluasi_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payroll`
--
ALTER TABLE `payroll`
  ADD CONSTRAINT `payroll_ibfk_1` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
