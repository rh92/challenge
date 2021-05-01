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
-- Table structure for table `Usuario`
--

CREATE TABLE `Usuario` (
  `id` int(11) NOT NULL,
  `expediente` int(11) NOT NULL,
  `fechaUltimaConsulta` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoSangre` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Usuario`
--

INSERT INTO `Usuario` (`id`, `expediente`, `fechaUltimaConsulta`, `tipoSangre`, `nombre`, `active`) VALUES
(1, 2, '05/07/2020', 'O+', 'Sebastian', 1),
(2, 1, '11/11/2021', 'A-', 'Raulito', 1),
(3, 22, '10/02/2010', 'A+', 'Rosario', 1),
(4, 125, '03/03/2017', 'B+', 'Felipe', 1),
(5, 77, '11/12/2012', 'A-', 'Agustin', 1),
(6, 123, '01/12/2010', 'A+', 'Joaquin', 1),
(7, 153, '11/01/2015', 'AB+', 'Roberto', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
