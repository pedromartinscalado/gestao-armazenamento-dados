-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql308.infinityfree.com
-- Generation Time: Feb 13, 2025 at 01:12 PM
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
-- Table structure for table `PedroCaladoFuncionario`
--

CREATE TABLE `PedroCaladoFuncionario` (
  `IdFuncionario` int(11) NOT NULL,
  `Nome` varchar(30) NOT NULL,
  `DataAdmissao` date NOT NULL DEFAULT current_timestamp(),
  `Vencimento` decimal(12,2) NOT NULL,
  `Departamento` int(11) DEFAULT NULL,
  `Dependentes` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PedroCaladoFuncionario`
--

INSERT INTO `PedroCaladoFuncionario` (`IdFuncionario`, `Nome`, `DataAdmissao`, `Vencimento`, `Departamento`, `Dependentes`) VALUES
(1, 'João Silva', '2024-01-10', '2500.00', 1, 2),
(2, 'Ana Costa', '2023-06-15', '3200.00', 2, 1),
(3, 'Carlos Mendes', '2022-09-20', '2800.00', 3, 0),
(4, 'Mariana Lopes', '2021-03-05', '4000.00', 4, 3),
(5, 'Pedro Nunes', '2020-07-22', '3500.00', 5, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `PedroCaladoFuncionario`
--
ALTER TABLE `PedroCaladoFuncionario`
  ADD PRIMARY KEY (`IdFuncionario`),
  ADD KEY `FK_Departamento` (`Departamento`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `PedroCaladoFuncionario`
--
ALTER TABLE `PedroCaladoFuncionario`
  MODIFY `IdFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `PedroCaladoFuncionario`
--
ALTER TABLE `PedroCaladoFuncionario`
  ADD CONSTRAINT `FK_Departamento` FOREIGN KEY (`Departamento`) REFERENCES `PedroCaladoDepartamento` (`IdDepartamento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
