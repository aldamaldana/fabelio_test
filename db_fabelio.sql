-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2019 at 06:29 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_fabelio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar_product`
--

CREATE TABLE `tbl_komentar_product` (
  `id_komentar` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `komentar` text NOT NULL,
  `up_vote` int(5) NOT NULL,
  `down_vote` int(5) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_komentar_product`
--

INSERT INTO `tbl_komentar_product` (`id_komentar`, `id_product`, `nama`, `komentar`, `up_vote`, `down_vote`, `created_date`) VALUES
(1, 1, 'Nova Rini', 'harga bisa nego gak ?', 0, 0, '2019-08-29 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id_product` int(11) NOT NULL,
  `nama_product` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `garansi` int(1) DEFAULT NULL,
  `cod` int(1) DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `up_vote` int(5) NOT NULL,
  `down_vote` int(5) NOT NULL,
  `gambar` text NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`id_product`, `nama_product`, `description`, `garansi`, `cod`, `harga`, `up_vote`, `down_vote`, `gambar`, `created_date`) VALUES
(1, 'Kursi Klasik', 'test', 1, 1, 5000000, 1, 0, 'blue_sofa.jpg', '2019-08-29 06:06:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_komentar_product`
--
ALTER TABLE `tbl_komentar_product`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id_product`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_komentar_product`
--
ALTER TABLE `tbl_komentar_product`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
