-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 19, 2021 at 05:04 AM
-- Server version: 10.5.5-MariaDB
-- PHP Version: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muslim_life`
--

-- --------------------------------------------------------

--
-- Table structure for table `jadwalshalat`
--

CREATE TABLE `jadwalshalat` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `subuh` varchar(5) DEFAULT NULL,
  `zuhur` varchar(5) DEFAULT NULL,
  `ashar` varchar(5) DEFAULT NULL,
  `magrib` varchar(5) DEFAULT NULL,
  `isya` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwalshalat`
--

INSERT INTO `jadwalshalat` (`id`, `tanggal`, `subuh`, `zuhur`, `ashar`, `magrib`, `isya`) VALUES
(4, '2020-10-29', '04:30', '12:00', '16:00', '19:00', '20:00'),
(5, '2020-10-30', '04:30', '12:00', '16:00', '19:00', '20:10'),
(6, '2020-10-31', '04:30', '12:00', '16:00', '19:00', '20:12'),
(7, '2020-11-01', '04:30', '12:00', '16:00', '19:00', '20:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jadwalshalat`
--
ALTER TABLE `jadwalshalat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jadwalshalat`
--
ALTER TABLE `jadwalshalat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
