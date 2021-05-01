-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 01, 2021 at 11:29 PM
-- Server version: 10.4.15-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `UsuarioAlergia`
--

CREATE TABLE `UsuarioAlergia` (
  `id` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idAlergia` int(11) NOT NULL,
  `fecha` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `medicamento` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `UsuarioAlergia`
--

INSERT INTO `UsuarioAlergia` (`id`, `idUsuario`, `idAlergia`, `fecha`, `medicamento`, `active`) VALUES
(1, 2, 1, '11/11/2021', 'rifacepalm', 1),
(2, 6, 2, '23/12/2020', 'lactocanabo', 1),
(3, 2, 3, '10/05/2018', 'metatrotato', 1),
(4, 3, 6, '12/10/2001', 'penicilina', 1),
(5, 4, 7, '12/10/2001', 'nitrato de potasio', 1),
(6, 1, 6, '12/10/2001', 'panacea', 1),
(7, 6, 2, '12/10/2001', 'hexofirina', 1),
(8, 2, 5, '12/10/2001', 'penicilina', 1),
(9, 3, 1, '12/10/2001', 'relacepal', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `UsuarioAlergia`
--
ALTER TABLE `UsuarioAlergia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idAlergia` (`idAlergia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `UsuarioAlergia`
--
ALTER TABLE `UsuarioAlergia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `UsuarioAlergia`
--
ALTER TABLE `UsuarioAlergia`
  ADD CONSTRAINT `idAlergia` FOREIGN KEY (`idAlergia`) REFERENCES `Alergia` (`id`),
  ADD CONSTRAINT `idUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `Usuario` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
