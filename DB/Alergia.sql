-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 01, 2021 at 11:29 PM
-- Server version: 10.4.15-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u682953550_BestHost`
--

-- --------------------------------------------------------

--
-- Table structure for table `Alergia`
--

CREATE TABLE `Alergia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Alergia`
--

INSERT INTO `Alergia` (`id`, `nombre`, `active`) VALUES
(1, 'alergia a penicilina', 1),
(2, 'alergia a gatos', 1),
(3, 'alergia al sol', 1),
(4, 'alergia al polvo', 1),
(5, 'alergia a lacteos', 1),
(6, 'alergia a carne', 1),
(7, 'alergia al aire', 1),
(8, 'alergia al cafe', 1),
(9, 'alergia a abejas', 1),
(10, 'alergia a nuez', 1),
(11, 'alergia a la fresa', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Alergia`
--
ALTER TABLE `Alergia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Alergia`
--
ALTER TABLE `Alergia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
