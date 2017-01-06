
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 06, 2017 at 06:21 AM
-- Server version: 10.0.28-MariaDB
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u648406406_mebel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE IF NOT EXISTS `tb_kategori` (
  `id_kat` int(2) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `tgl_input_kat` datetime NOT NULL,
  PRIMARY KEY (`id_kat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kat`, `kategori`, `tgl_input_kat`) VALUES
(4, 'Barang Jadi', '2016-11-19 04:27:10'),
(5, 'Barang Mentah', '2016-11-19 04:27:15'),
(6, 'Komponen', '2016-11-19 04:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE IF NOT EXISTS `tb_login` (
  `id_user` int(2) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `pass_user` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `level` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `status` enum('1','0') NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`id_user`, `nama_user`, `pass_user`, `nama`, `level`, `status`) VALUES
(1, 'admin', 'admin', 'Admin', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_merk`
--

CREATE TABLE IF NOT EXISTS `tb_merk` (
  `id_merk` int(2) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `tgl_input_merk` datetime NOT NULL,
  PRIMARY KEY (`id_merk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_merk`
--

INSERT INTO `tb_merk` (`id_merk`, `merk`, `tgl_input_merk`) VALUES
(3, 'Kursi', '2016-11-19 04:27:51'),
(4, 'Meja', '2016-11-19 04:27:58'),
(5, 'Lemari', '2016-11-19 04:28:03'),
(6, 'Bufet', '2016-11-19 04:28:08'),
(7, 'Tempat Tidur', '2016-11-21 18:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE IF NOT EXISTS `tb_produk` (
  `id_produk` int(2) NOT NULL,
  `judul` varchar(220) NOT NULL,
  `harga` int(20) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `kondisi` varchar(50) NOT NULL,
  `id_merk` int(2) NOT NULL,
  `id_kat` int(2) NOT NULL,
  `ket` text NOT NULL,
  `status` enum('publish','draft') NOT NULL,
  `counter` int(5) NOT NULL,
  `tgl_input_pro` datetime NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `judul`, `harga`, `jumlah`, `kondisi`, `id_merk`, `id_kat`, `ket`, `status`, `counter`, `tgl_input_pro`, `foto`) VALUES
(10, 'Kursi Tamu', 2000000, '10', 'Baru', 3, 4, 'okee', 'publish', 2, '2016-11-19 04:28:47', '3.jpg'),
(11, 'Bufet Cantik', 5000000, '20', 'Baru', 6, 4, 'Bahan dari Kayu yang barru di tebang', 'publish', 2, '2016-11-20 04:31:19', '5.png'),
(12, 'Lemari 3 Pintu', 5000000, '10', 'Baru', 5, 4, 'Cocok', 'publish', 4, '2016-11-20 04:39:47', '51.png'),
(13, 'Bufet 50%', 3000000, '20', 'Baru', 6, 5, 'Tinggal Finishing', 'publish', 6, '2016-11-21 03:03:21', '1.png'),
(14, 'Tempat Tidur', 2400000, '40', 'Baru', 7, 4, 'Buat pengaantin bbaru cocok nih', 'publish', 11, '2016-11-21 18:03:51', '3.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_visitor`
--

CREATE TABLE IF NOT EXISTS `tb_visitor` (
  `no` int(7) NOT NULL,
  `ip` varchar(40) DEFAULT NULL,
  `os` varchar(40) DEFAULT NULL,
  `browser` varchar(40) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_visitor`
--

INSERT INTO `tb_visitor` (`no`, `ip`, `os`, `browser`, `tanggal`) VALUES
(15, '::1', 'Unknown Windows OS', 'Chrome 43.0.2357.124', '2015-06-14 14:31:32'),
(16, '::1', 'Unknown Windows OS', 'Firefox 22.0', '2015-06-14 14:32:35'),
(17, '::1', 'Windows 10', 'Firefox 43.0', '2016-11-17 04:45:41'),
(18, '::1', 'Unknown Windows OS', 'Firefox 43.0', '2016-11-19 04:10:14'),
(19, '::1', 'Unknown Windows OS', 'Firefox 43.0', '2016-11-20 04:12:21'),
(20, '::1', 'Unknown Windows OS', 'Firefox 43.0', '2016-11-21 06:56:37'),
(21, '::1', 'Unknown Windows OS', 'Firefox 43.0', '2016-11-24 06:37:07'),
(22, '::1', 'Unknown Windows OS', 'Firefox 43.0', '2016-11-29 02:10:10'),
(0, '::1', 'Unknown Windows OS', 'Firefox 43.0', '2016-12-01 00:44:31'),
(0, '::1', 'Unknown Windows OS', 'Firefox 43.0', '2016-12-04 05:48:05'),
(0, '202.67.40.197', 'Unknown Windows OS', 'Firefox 50.0', '2016-12-21 08:05:22'),
(0, '173.252.124.214', 'Unknown Platform', 'Unidentified User Agent', '2016-12-21 08:06:57'),
(0, '173.252.124.231', 'Unknown Platform', 'Unidentified User Agent', '2016-12-21 08:06:59'),
(0, '66.220.145.246', 'Windows XP', 'Firefox 3.0.5', '2016-12-21 08:07:02'),
(0, '202.67.40.206', 'Linux', 'Chrome 40.0.2214.109', '2016-12-21 08:07:35'),
(0, '202.67.46.2', 'Linux', 'Chrome 37.0.0.0', '2016-12-21 08:08:04'),
(0, '202.67.40.12', 'Unknown Windows OS', 'Firefox 50.0', '2016-12-21 08:10:42'),
(0, '8.37.233.74', 'Linux', 'Safari 534.30', '2016-12-21 12:23:51'),
(0, '36.84.0.235', 'Unknown Windows OS', 'Chrome 55.0.2883.87', '2016-12-21 15:09:32');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
