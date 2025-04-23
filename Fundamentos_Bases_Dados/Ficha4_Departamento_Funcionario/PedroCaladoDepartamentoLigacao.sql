-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql308.infinityfree.com
-- Generation Time: Feb 13, 2025 at 01:13 PM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_38286496_pjd_ad02`
--

-- --------------------------------------------------------

--
-- Table structure for table `PedroCaladoDepartamento`
--

CREATE TABLE `PedroCaladoDepartamento` (
  `IdDepartamento` int(11) NOT NULL,
  `Descricao` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PedroCaladoDepartamento`
--

INSERT INTO `PedroCaladoDepartamento` (`IdDepartamento`, `Descricao`) VALUES
(1, 'Produção'),
(2, 'Contabilidade'),
(3, 'Marketing'),
(4, 'Financeiro'),
(5, 'Recursos Humanos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `PedroCaladoDepartamento`
--
ALTER TABLE `PedroCaladoDepartamento`
  ADD PRIMARY KEY (`IdDepartamento`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `PedroCaladoDepartamento`
--
ALTER TABLE `PedroCaladoDepartamento`
  MODIFY `IdDepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
