-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: bstaaxredphdizbd8zrh-mysql.services.clever-cloud.com:3306
-- Generation Time: Mar 03, 2023 at 05:55 AM
-- Server version: 8.0.22-13
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
-- Database: `bstaaxredphdizbd8zrh`
--

-- --------------------------------------------------------

--
-- Table structure for table `Checker`
--

CREATE TABLE `Checker` (
  `idcheck` int NOT NULL,
  `idEmpleado` varchar(25) DEFAULT NULL,
  `hora` varchar(5) DEFAULT NULL,
  `tipocheck` varchar(10) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `latitud` varchar(50) DEFAULT NULL,
  `log` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Checker`
--

INSERT INTO `Checker` (`idcheck`, `idEmpleado`, `hora`, `tipocheck`, `fecha`, `latitud`, `log`) VALUES
(18, '2525', '23:34', 'Entrada', '2023-02-22', ' 24.1066294', ' -110.3170122'),
(19, '2525', '23:35', 'Salida', '2023-02-22', ' 24.1066294', ' -110.3170122'),
(20, '2525', '21:25', 'Entrada', '2023-02-25', ' 24.1066294', ' -110.3170122'),
(21, '2525', '21:25', 'Salida', '2023-02-25', ' 24.1066294', ' -110.3170122'),
(22, '2525', '21:43', 'Entrada', '2023-02-25', ' 24.1066294', ' -110.3170122'),
(23, '20166', '01:41', 'Entrada', '2023-02-27', ' 24.1066294', ' -110.3170122'),
(24, '20166', '01:41', 'Entrada', '2023-02-27', ' 24.1066294', ' -110.3170122'),
(25, '20166', '01:42', 'Salida', '2023-02-27', ' 24.1066294', ' -110.3170122'),
(26, '20166', '09:13', 'Entrada', '2023-02-27', ' 24.1552293', ' -110.3144144'),
(27, '20166', '12:49', 'Salida', '2023-02-27', ' 24.1608123', ' -110.3154522'),
(28, '20166', '17:12', 'Salida', '2023-02-27', ' 24.1027614', ' -110.31604329999999'),
(29, '20166', '11:17', 'Entrada', '2023-03-01', ' 24.1579278', ' -110.3163245');

-- --------------------------------------------------------

--
-- Table structure for table `Trabajadores`
--

CREATE TABLE `Trabajadores` (
  `idTrabajador` int NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellidoP` varchar(20) DEFAULT NULL,
  `apellidoM` varchar(20) DEFAULT NULL,
  `CLABE` varchar(20) DEFAULT NULL,
  `bank` varchar(20) DEFAULT NULL,
  `rfc` varchar(20) DEFAULT NULL,
  `macCel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Trabajadores`
--

INSERT INTO `Trabajadores` (`idTrabajador`, `nombre`, `apellidoP`, `apellidoM`, `CLABE`, `bank`, `rfc`, `macCel`) VALUES
(20161, 'Micaela Vianet', 'Lopez', 'Molina', NULL, NULL, NULL, NULL),
(20162, 'Andres Sebastian', 'Monteverde', 'Barajas', NULL, NULL, NULL, NULL),
(20163, 'Patricia G', 'Partida', 'Contreras', NULL, NULL, NULL, NULL),
(20164, 'Maria Concepcion', 'Moran', 'Carballo', NULL, NULL, NULL, NULL),
(20165, 'Bianey GPE', 'Cota', 'Zapata', NULL, NULL, NULL, NULL),
(20166, 'Osmar Samir', 'Lucero', 'Saiza', NULL, NULL, NULL, '44:55:C4:76:0A:C9:');

-- --------------------------------------------------------

--
-- Table structure for table `Ventas`
--

CREATE TABLE `Ventas` (
  `idVenta` int NOT NULL,
  `idVendedor` varchar(20) DEFAULT NULL,
  `noTicket` varchar(12) DEFAULT NULL,
  `imei` varchar(20) DEFAULT NULL,
  `iccid` varchar(20) DEFAULT NULL,
  `noCelular` varchar(12) DEFAULT NULL,
  `marca` varchar(20) DEFAULT NULL,
  `modelo` varchar(20) DEFAULT NULL,
  `anotaciones` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Ventas`
--

INSERT INTO `Ventas` (`idVenta`, `idVendedor`, `noTicket`, `imei`, `iccid`, `noCelular`, `marca`, `modelo`, `anotaciones`) VALUES
(14, '2525', '565869', '8555888', '89588888', '8688588', 'vvhff', 'bbhf', 'vbhjj'),
(15, '3636', '113090', '357181981774356', '895202002214629143', '6122295646', 'Motorola ', 'E22I', 'coito'),
(16, '20166', '42496', '863020060450453', '8952020022215365655', '6122007269', 'Oppo', 'A17', 'con recarga y accesorios '),
(17, '20166', '113090', '357181981774356', '8952020022214629143', '6122295646', 'Motorola ', 'E22i', 'prueba'),
(18, '20166', '6969', '861508050885508', '8952020920510631376', '6121072936', 'Xiaomi ', 'note 11', 'no se');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Checker`
--
ALTER TABLE `Checker`
  ADD PRIMARY KEY (`idcheck`);

--
-- Indexes for table `Trabajadores`
--
ALTER TABLE `Trabajadores`
  ADD PRIMARY KEY (`idTrabajador`);

--
-- Indexes for table `Ventas`
--
ALTER TABLE `Ventas`
  ADD PRIMARY KEY (`idVenta`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Checker`
--
ALTER TABLE `Checker`
  MODIFY `idcheck` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `Ventas`
--
ALTER TABLE `Ventas`
  MODIFY `idVenta` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
