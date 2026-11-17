-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2026 at 03:27 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bilamall`
--

-- --------------------------------------------------------

--
-- Table structure for table `bilamart`
--

CREATE TABLE `bilamart` (
  `no` int(11) NOT NULL,
  `id_toko` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `varian_rasa` varchar(255) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bilamart`
--

INSERT INTO `bilamart` (`no`, `id_toko`, `nama_produk`, `kategori`, `varian_rasa`, `harga`, `stok`, `gambar`) VALUES
(2, 1, 'Dubai Chocolate Donuts', 'Dissert', 'Dubai Chocolate', 13000, 20, '1794876540_coklat dubai.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `chat_pesanan`
--

CREATE TABLE `chat_pesanan` (
  `id_chat` int(11) NOT NULL,
  `id_pesanan` int(11) NOT NULL,
  `pengirim` varchar(20) NOT NULL,
  `pesan` text NOT NULL,
  `waktu_pesan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `id_toko` int(11) NOT NULL,
  `nama_pembeli` varchar(100) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `daftar_produk` text NOT NULL,
  `total_harga` bigint(20) NOT NULL,
  `tanggal_pesan` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto_toko` varchar(255) NOT NULL,
  `tema_warna` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `deskripsi`, `foto_toko`, `tema_warna`) VALUES
(1, 'bilayayey', 'Toko yang sangat amanah, mengutamakan kualitas kebersihan dan rasa itentik.', '1794875176_tokodonat.jpg', '#cf8fe0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bilamart`
--
ALTER TABLE `bilamart`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `chat_pesanan`
--
ALTER TABLE `chat_pesanan`
  ADD PRIMARY KEY (`id_chat`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bilamart`
--
ALTER TABLE `bilamart`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chat_pesanan`
--
ALTER TABLE `chat_pesanan`
  MODIFY `id_chat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
