-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2023 at 04:39 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpusweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` varchar(40) NOT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `notelp` varchar(13) DEFAULT NULL,
  `jk` varchar(30) DEFAULT NULL,
  `tempat` varchar(50) DEFAULT NULL,
  `tgllahir` varchar(50) DEFAULT NULL,
  `umur` varchar(50) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `foto` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_lengkap`, `notelp`, `jk`, `tempat`, `tgllahir`, `umur`, `alamat`, `foto`) VALUES
('A0001', 'Andika Dwi P', '087754224567', 'Laki-laki', 'Gresik', '05/14/2000', '22', 'Menganti, Gresik, Jawa Timur', 'FOTO_ANDIKA1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(20) DEFAULT NULL,
  `id_kategori` varchar(20) DEFAULT NULL,
  `id_penerbit` varchar(20) DEFAULT NULL,
  `id_rak` varchar(20) DEFAULT NULL,
  `judul` varchar(60) DEFAULT NULL,
  `pengarang` varchar(60) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL,
  `jmlhal` int(4) DEFAULT NULL,
  `jmlbuku` int(4) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `sinopsis` text DEFAULT NULL,
  `foto` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_kategori`, `id_penerbit`, `id_rak`, `judul`, `pengarang`, `isbn`, `jmlhal`, `jmlbuku`, `tahun`, `sinopsis`, `foto`) VALUES
('B0001', 'K0001', 'P0002', 'Rak-01', 'Lancar JavaScript', 'Jubile Enterprice', '12345678', 140, 56, 2019, '-', 'lancar_javascript.jpg'),
('B0002', 'K0001', 'P0002', 'Rak-01', 'Belajar Otodidak CodeIgniter', 'Budi Raharjo', '12345679', 130, 61, 2020, '-', 'belajar_codeigniter.jpg'),
('B0003', 'K0001', 'P0001', 'Rak-01', 'Pro PHP & Jquery 7 Hari', 'WARDANA', '12345681', 100, 14, 2020, '-', 'web_profesional_dengan_php_jquery.jpg'),
('B0004', 'K0006', 'P0004', 'Rak-04', 'Otodidak Web Programming', 'Muhammad Ibnu Sa\'ad', '123523453424', 100, 22, 2019, '-', 'ID_OWP2020MTH01WP.jpg'),
('B0005', 'K0005', 'P0005', 'Rak-01', 'Tutorial Design Grafis', 'adwputra', '1231234', 100, 20, 2022, 'buku tentang tutotial desain grafis\r\n', 'FLYER_MABIM.jpg'),
('B0006', 'K0007', 'P0002', 'Rak-03', 'Bahasa Indonesia', 'Sri Hapsari', '978-979-068-508-6', 134, 20, 2009, 'Bahasa adalah alat penghubung atau jembatan komunikasi yang sangat\r\npenting. Bagi bangsa Indonesia yang terdiri dari berbagai macam suku, adat,\r\ndan latar budaya serta bahasa, bahasa Indonesia menjadi bahasa nasional\r\ndan bahasa pemersatu. Tanpa bahasa Indonesia, identitas kita sebagai bangsa\r\nbelumlah lengkap.', 'Screenshot_(354).png'),
('B0007', 'K0007', 'P0001', 'Rak-02', 'Matematika', 'Nur Fajariyah', '989-009-787-089-1', 150, 10, 2010, '-', 'page_1.jpg'),
('B0008', 'K0007', 'P0001', 'Rak-01', 'IPA', 'Choiril Azmiyawati', '989-998-065-2', 125, 15, 2010, '-', 'ipa.jpg'),
('B0009', 'K0007', 'P0005', 'Rak-02', 'IPS', 'Arif A.', '989-009-787-089-3', 143, 15, 2009, '-', 'OIP.jpg'),
('B0010', 'K0005', 'P0001', 'Rak-02', 'Seni Budaya', 'Didin Supriadi', '989-231-787-445-1', 115, 20, 2011, '-', 'download_(3).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(20) DEFAULT NULL,
  `kategori` varchar(40) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`, `keterangan`) VALUES
('K0001', 'Programing', ''),
('K0002', 'Umum', 'umum'),
('K0004', 'Pendidikan', ''),
('K0005', 'Seni Budaya', ''),
('K0006', 'Informatika', 'Bahasa dan Sastra'),
('K0007', 'Mata Pelajaran', '');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` varchar(10) DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `id_anggota` varchar(5) DEFAULT NULL,
  `tempo` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `usr_input` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_pinjam`, `tgl_pinjam`, `id_anggota`, `tempo`, `status`, `ket`, `usr_input`) VALUES
('PJM0001', '2021-12-15', 'A0002', '2021-04-18', 'Kembali', '', 'Admin'),
('PJM0002', '2021-11-15', 'A0001', '2021-04-18', 'Kembali', '', 'Admin'),
('PJM0003', '2021-10-16', 'A0001', '2021-04-19', 'Kembali', '', 'Admin'),
('PJM0004', '2021-09-17', 'A0002', '2021-04-20', 'Kembali', '', 'Admin'),
('PJM0005', '2021-08-17', 'A0002', '2021-04-20', 'Kembali', '', 'Admin'),
('PJM0006', '2021-07-17', 'A0001', '2021-04-20', 'Kembali', '', 'Admin'),
('PJM0007', '2021-06-17', 'A0001', '2021-04-20', 'Kembali', '', 'Admin'),
('PJM0008', '2021-05-17', 'A0001', '2021-04-20', 'Kembali', '', 'Admin'),
('PJM0009', '2021-04-17', 'A0002', '2021-04-20', 'Kembali', '', 'Admin'),
('PJM0010', '2021-03-17', 'A0002', '2021-04-20', 'Kembali', '', 'Admin'),
('PJM0011', '2021-02-17', 'A0001', '2021-04-20', 'Kembali', '', 'Admin'),
('PJM0012', '2021-01-17', 'A0001', '2021-04-20', 'Kembali', '', 'Admin'),
('PJM0013', '2021-04-17', 'A0002', '2021-04-20', 'Kembali', '', 'Admin'),
('PJM0014', '2021-04-17', 'A0002', '2021-04-20', 'Kembali', '', 'Admin'),
('PJM0015', '2021-04-17', 'A0001', '2021-04-20', 'Kembali', '', 'Admin'),
('PJM0016', '2021-04-20', 'A0003', '2021-04-23', 'Kembali', 'Buat Belajar', 'Admin'),
('PJM0017', '2022-06-29', 'A0001', '2022-07-02', 'Kembali', '', 'Admin'),
('PJM0019', '2022-07-05', 'A0003', '2022-07-08', 'Kembali', '', 'Admin'),
('PJM0020', '2022-07-13', 'A0001', '2022-07-16', 'Kembali', '', 'Admin'),
('PJM0021', '2022-07-13', 'A0001', '2022-07-16', 'Kembali', '', 'Admin'),
('PJM0022', '2022-07-13', 'A0002', '2022-07-16', 'Kembali', '', 'Admin'),
('PJM0023', '2022-07-14', 'A0003', '2022-07-17', 'Kembali', '', 'Adwp'),
('PJM0024', '2022-07-14', 'A0002', '2022-07-15', 'Kembali', '', 'Adwp'),
('PJM0025', '2022-07-14', 'A0001', '2022-07-23', 'Kembali', '', 'Adwp'),
('PJM0026', '2022-07-14', 'A0003', '2022-07-16', 'Kembali', '', 'Adwp'),
('PJM0027', '2022-07-14', 'A0001', '2022-07-15', 'Kembali', '', 'Adwp'),
('PJM0028', '2022-07-16', 'A0001', '2022-07-16', 'Kembali', '', 'Dika'),
('PJM0029', '2022-07-16', 'A0003', '2022-07-17', 'Kembali', '', 'Dika'),
('PJM0031', '2022-07-21', 'A0004', '2022-07-23', 'Kembali', '', 'Andika Dwi Putra'),
('PJM0034', '2022-07-22', 'A0006', '2022-07-23', 'Kembali', '-', 'Andika Dwi Putra'),
('PJM0035', '2022-07-22', 'A0006', '2022-07-23', 'Kembali', '-', 'Dika'),
('PJM0036', '2022-07-29', 'A0005', '2022-07-30', 'Pinjam', '', 'Andika Dwi Putra'),
('PJM0037', '2022-07-29', 'A0007', '2022-07-29', 'Pinjam', '', 'Andika Dwi Putra'),
('PJM0038', '2022-07-29', 'A0005', '2022-07-31', 'Pinjam', '', 'Andika Dwi Putra'),
('PJM0039', '2022-07-29', 'A0004', '2022-07-31', 'Kembali', '', 'Andika Dwi Putra'),
('PJM0040', '2023-03-24', 'A0001', '2023-03-25', 'Pinjam', '', 'Andika Dwi Putra'),
('PJM0041', '2023-03-24', 'A0001', '2023-03-26', 'Pinjam', '', 'Andika Dwi Putra'),
('PJM0042', '2023-03-24', 'A0001', '2023-03-24', 'Kembali', '', 'Andika Dwi Putra');

-- --------------------------------------------------------

--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` varchar(20) DEFAULT NULL,
  `penerbit` varchar(60) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `penerbit`, `keterangan`) VALUES
('P0001', 'Erlangga', ''),
('P0002', 'Gramedia', ''),
('P0004', 'Komputindo', ''),
('P0005', 'Grafindo', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengadaan`
--

CREATE TABLE `pengadaan` (
  `id_pengadaan` varchar(10) DEFAULT NULL,
  `id_buku` varchar(60) DEFAULT NULL,
  `asal_buku` varchar(60) DEFAULT NULL,
  `jml` int(4) DEFAULT NULL,
  `ket` text DEFAULT NULL,
  `tgl` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengadaan`
--

INSERT INTO `pengadaan` (`id_pengadaan`, `id_buku`, `asal_buku`, `jml`, `ket`, `tgl`) VALUES
('PNG0002', 'B0002', 'Subang', 6, '-', '2022-07-01'),
('PNG0003', 'B0001', 'Purwakarta', 6, '-', '2022-06-17'),
('PNG0004', 'B0003', 'Jakarta', 5, '-', '2022-06-10'),
('PNG0005', 'B0005', 'Surabaya', 15, '-', '2022-07-19'),
('PNG0006', 'B0003', 'Purwakarta', 2, '-', '2022-07-21'),
('PNG0007', 'B0004', 'Purwakarta', 2, '-', '2022-07-22'),
('PNG0008', 'B0006', 'Purwakarta', 1, '-', '2022-07-22'),
('PNG0009', 'B0007', 'Purwakarta', 2, '-', '2022-07-22'),
('PNG0010', 'B0010', 'Purwakarta', 5, '-', '2022-07-28'),
('PNG0011', 'B0010', 'Purwakarta', 5, '-', '2022-07-28');

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_kembali` int(10) NOT NULL,
  `tgl_kembali` varchar(20) DEFAULT NULL,
  `id_pinjam` varchar(20) DEFAULT NULL,
  `terlambat` varchar(15) DEFAULT NULL,
  `denda` varchar(15) DEFAULT NULL,
  `id_admin` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id_kembali`, `tgl_kembali`, `id_pinjam`, `terlambat`, `denda`, `id_admin`) VALUES
(10, '2021-04-15', 'PJM0002', '-', '-', NULL),
(12, '2021-04-20', 'PJM0016', '-', '-', NULL),
(13, '2021-04-20', 'PJM0001', '2 hari', 'Rp.6000', NULL),
(14, '2022-06-29', 'PJM0012', '435 hari', 'Rp.1305000', NULL),
(15, '2022-06-29', 'PJM0013', '435 hari', 'Rp.1305000', NULL),
(16, '2022-06-29', 'PJM0010', '435 hari', 'Rp.1305000', NULL),
(17, '2022-06-29', 'PJM0017', '-', '-', NULL),
(18, '2022-06-29', 'PJM0007', '435 hari', 'Rp.1305000', NULL),
(19, '2022-06-29', 'PJM0015', '435 hari', 'Rp.1305000', NULL),
(20, '2022-06-29', 'PJM0014', '435 hari', 'Rp.1305000', NULL),
(21, '2022-06-29', 'PJM0003', '436 hari', 'Rp.1308000', NULL),
(22, '2022-06-29', 'PJM0011', '435 hari', 'Rp.1305000', NULL),
(23, '2022-07-05', 'PJM0008', '442 hari', 'Rp.1326000', NULL),
(24, '2022-07-13', 'PJM0009', '450 hari', 'Rp.1350000', NULL),
(25, '2022-07-13', 'PJM0022', '-', '-', NULL),
(26, '2022-07-13', 'PJM0021', '-', '-', NULL),
(27, '2022-07-13', 'PJM0020', '-', '-', NULL),
(28, '2022-07-13', 'PJM0019', '5 hari', 'Rp.15000', NULL),
(33, '2022-07-14', 'PJM0026', '-', '-', NULL),
(34, '2022-07-16', 'PJM0024', '1 hari', 'Rp.3000', NULL),
(35, '2022-07-18', 'PJM0028', '2 hari', 'Rp.6000', NULL),
(36, '2022-07-18', 'PJM0023', '1 hari', 'Rp.3000', NULL),
(37, '2022-07-18', 'PJM0027', '3 hari', 'Rp.9000', NULL),
(38, '2022-07-18', 'PJM0029', '1 hari', 'Rp.3000', NULL),
(42, '2022-07-22', 'PJM0034', '-', '-', NULL),
(43, '2022-07-26', 'PJM0035', '3 hari', 'Rp.1500', NULL),
(44, '2022-07-26', 'PJM0031', '3 hari', 'Rp.1500', NULL),
(45, '2022-07-28', 'PJM0025', '5 hari', 'Rp.2500', NULL),
(50, '2022-08-11', 'PJM0039', '11 hari', 'Rp.5500', NULL),
(51, '2023-03-24', 'PJM0042', '-', '-', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_user` varchar(20) NOT NULL,
  `nama` varchar(60) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `username` varchar(10) DEFAULT NULL,
  `pass` varchar(30) DEFAULT NULL,
  `notelp` varchar(13) DEFAULT NULL,
  `status` enum('Aktif','Tidak Aktif') DEFAULT NULL,
  `level` enum('Petugas','Administrasi') DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_user`, `nama`, `email`, `username`, `pass`, `notelp`, `status`, `level`, `foto`) VALUES
('U0001', 'Andika Dwi Putra', 'admin@gmail.com', 'admin', '123456', '08766439865', 'Aktif', 'Administrasi', 'FOTO_ANDIKA.jpg'),
('U0005', 'Dika', 'adwp@gmail.com', 'ptgs1', '123456', '09823', 'Aktif', 'Petugas', 'user.png'),
('U0006', 'Andika', 'adwputra@gmail.com', 'petugas2', '123456', '083293932349', 'Tidak Aktif', 'Petugas', 'user.png'),
('U0007', 'Andika DP', 'andikadwp123@gmail.com', 'admin2', '123456', '08975434567', 'Tidak Aktif', 'Administrasi', 'FOTO_ANDIKA1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `p_buku`
--

CREATE TABLE `p_buku` (
  `id_pbuku` int(5) NOT NULL,
  `id_pinjam` varchar(50) DEFAULT NULL,
  `id_buku` varchar(50) DEFAULT NULL,
  `qty` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p_buku`
--

INSERT INTO `p_buku` (`id_pbuku`, `id_pinjam`, `id_buku`, `qty`) VALUES
(28, 'PJM0001', 'B0003', '5'),
(29, 'PJM0001', 'B0002', '1'),
(30, 'PJM0001', 'B0001', '1'),
(31, 'PJM0002', 'B0003', '3'),
(32, 'PJM0002', 'B0001', '1'),
(33, 'PJM0003', 'B0003', '6'),
(34, 'PJM0003', 'B0002', '3'),
(35, 'PJM0003', 'B0001', '1'),
(36, 'PJM0004', 'B0003', '1'),
(37, 'PJM0005', 'B0003', '3'),
(38, 'PJM0006', 'B0003', '2'),
(39, 'PJM0007', 'B0002', '1'),
(40, 'PJM0008', 'B0003', '2'),
(41, 'PJM0009', 'B0003', '1'),
(42, 'PJM0010', 'B0001', '2'),
(43, 'PJM0011', 'B0003', '2'),
(44, 'PJM0012', 'B0002', '2'),
(45, 'PJM0013', 'B0001', '3'),
(46, 'PJM0014', 'B0002', '3'),
(47, 'PJM0015', 'B0003', '5'),
(50, 'PJM0016', 'B0004', '1'),
(51, 'PJM0016', 'B0003', '1'),
(52, 'PJM0016', 'B0002', '1'),
(53, 'PJM0017', 'B0002', '1'),
(56, 'PJM0019', 'B0003', '1'),
(57, 'PJM0019', 'B0004', '1'),
(58, 'PJM0019', 'B0001', '1'),
(59, 'PJM0020', 'B0004', '1'),
(60, 'PJM0021', 'B0003', '2'),
(61, 'PJM0022', 'B0004', '1'),
(62, 'PJM0023', 'B0005', '1'),
(63, 'PJM0023', 'B0004', '1'),
(64, 'PJM0023', 'B0002', '1'),
(65, 'PJM0024', 'B0005', '1'),
(66, 'PJM0025', 'B0004', '1'),
(67, 'PJM0026', 'B0001', '1'),
(68, 'PJM0027', 'B0005', '1'),
(69, 'PJM0028', 'B0004', '1'),
(70, 'PJM0029', 'B0005', '2'),
(74, 'PJM0031', 'B0004', '1'),
(80, 'PJM0034', 'B0007', '1'),
(81, 'PJM0034', 'B0006', '1'),
(82, 'PJM0034', 'B0005', '1'),
(83, 'PJM0035', 'B0007', '1'),
(84, 'PJM0035', 'B0007', '1'),
(97, 'PJM0036', 'B0010', '2'),
(98, 'PJM0037', 'B0009', '1'),
(99, 'PJM0038', 'B0007', '2'),
(100, 'PJM0039', 'B0007', '1'),
(103, 'PJM0040', 'B0010', '1'),
(104, 'PJM0041', 'B0008', '2'),
(105, 'PJM0042', 'B0010', '1');

-- --------------------------------------------------------

--
-- Table structure for table `rak`
--

CREATE TABLE `rak` (
  `id_rak` varchar(20) DEFAULT NULL,
  `rak` varchar(60) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rak`
--

INSERT INTO `rak` (`id_rak`, `rak`, `keterangan`) VALUES
('Rak-01', 'Umum', ''),
('Rak-02', 'Mata Pelajaran', ''),
('Rak-03', 'Bahasa', ''),
('Rak-04', 'Coding', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_kembali`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_user_2` (`id_user`),
  ADD KEY `id_user_3` (`id_user`);

--
-- Indexes for table `p_buku`
--
ALTER TABLE `p_buku`
  ADD PRIMARY KEY (`id_pbuku`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_kembali` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `p_buku`
--
ALTER TABLE `p_buku`
  MODIFY `id_pbuku` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
