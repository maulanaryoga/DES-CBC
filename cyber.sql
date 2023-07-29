-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2023 at 01:31 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cyber`
--

-- --------------------------------------------------------

--
-- Table structure for table `dataall`
--

CREATE TABLE `dataall` (
  `idSensor` int(11) NOT NULL,
  `tglData` date NOT NULL,
  `suhu` varchar(255) NOT NULL,
  `kelembapan` varchar(255) NOT NULL,
  `intensitas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dataall`
--

INSERT INTO `dataall` (`idSensor`, `tglData`, `suhu`, `kelembapan`, `intensitas`) VALUES
(1, '2023-06-30', 'Yi9Bemc2SU5xMUE9', 'Yi9Bemc2SU5xMUE9', 'Yi9Bemc2SU5xMUE9'),
(2, '2023-06-30', 'NE40ZmR0eWtmcmhHa1lVNW82VXlkUT09', 'a3NCd0xRczN1TU5oQlFMQmFxTnlPQT09', 'MFhLbjZsTUhoZkE9'),
(3, '2023-06-30', 'VEEyYXBOQzRRTENaeExVbHJLK24wdz09', 'a3NCd0xRczN1TU5oQlFMQmFxTnlPQT09', 'UnRVZjJoOWRhV2M9'),
(4, '2023-06-30', 'NE40ZmR0eWtmcmhHa1lVNW82VXlkUT09', 'MTViWG9QNFNFTjJsa0pEVlowQWJSZz09', 'MFhLbjZsTUhoZkE9'),
(5, '2023-06-30', 'VEEyYXBOQzRRTENaeExVbHJLK24wdz09', 'WmZISnZneE1RVE85Z2lOV3lrTjdEZz09', 'Q3JmdzdXOVBITUk9'),
(6, '2023-06-30', 'VEEyYXBOQzRRTENaeExVbHJLK24wdz09', 'cFdwTjVPMkJyakZTOG5keVRMSHVHUT09', 'MFhLbjZsTUhoZkE9'),
(7, '2023-06-30', 'WTg4OTRhN0NxZmI3ZE1JQ3VYRHdkZz09', 'VXBEM3lGeFEvY2FKRktzaDlJOHl4Zz09', 'V085K2daaWlnSWc9'),
(8, '2023-06-30', 'TzBOOEovbloralBVUFo5ankxcmQ5Zz09', 'VU9ZTE5WWWh6U3pzVjNCcEcwSUMxQT09', 'ZlczU2xJaWg3VUE9'),
(9, '2023-06-30', 'eGZxZ01sVkNad090VkpjUFZCTVdZZz09', 'SDlmak5OdkloUDdBYzZWRFdjU01EZz09', 'ZUpvTnZjTGpKd0U9'),
(10, '2023-06-30', 'azB0cFdSbThuZUtQbERGbVF1NHRHZz09', 'b1ZhR05vSFFUYjlUb1Y5OGVzY0ZtUT09', 'UEpNK1dRdVNKL1U9'),
(11, '2023-06-30', 'SWhJckF1TzlYWmZtWlhOcSsrSHp6UT09', 'Skp3RUo5YXE1ZTBXZy9qSkI1dXlQUT09', 'MWluK2VQNFRYUXM9'),
(12, '2023-06-30', 'cmZVRy9rK1MxUDJ1dTFBSStZWExtZz09', 'QkFLbW10VUJuRkNidHFZUEsrQTg2UT09', 'eFVPQTE3UG12eG89'),
(13, '2023-06-30', 'Q2NWRk0weGZZd3JwZzZtNVhRT0dHdz09', 'K0FiczJBdHp5aWlxbllzODlsWm9aZz09', 'MFhLbjZsTUhoZkE9'),
(14, '2023-06-30', 'U1hPQXBtRE0xeG9ZajdWTGtsMEhRZz09', 'cEtXMVpCbzhaUVZZSlNvVU9NU05xUT09', 'ZXEvemdWTDJjTjQ9'),
(15, '2023-06-30', 'U1hPQXBtRE0xeG9ZajdWTGtsMEhRZz09', 'VWlQa3ovbkRscTRHalBBZzEvRnp1dz09', 'UXhuYWNXTE00V3c9'),
(16, '2023-06-30', 'V3dMcjE2eDg4eEx0a0szM3JpcWorQT09', 'b1ZhR05vSFFUYjlUb1Y5OGVzY0ZtUT09', 'M0hmVk11Q2t4R289'),
(17, '2023-06-30', 'U1hPQXBtRE0xeG9ZajdWTGtsMEhRZz09', 'R0RJUEpxdGtHcm1hWitIWnJsOWoydz09', 'VUhtVUV0d0JWR0E9'),
(18, '2023-06-30', 'U1hPQXBtRE0xeG9ZajdWTGtsMEhRZz09', 'TnRmRi9QNnpYK1NnMkIybXFNRE5rUT09', 'MFhLbjZsTUhoZkE9'),
(19, '2023-06-30', 'azB0cFdSbThuZUtQbERGbVF1NHRHZz09', 'Szc0MlhDdHVTNys4V3diM0tmVmhzQT09', 'V085K2daaWlnSWc9'),
(20, '2023-06-30', 'azB0cFdSbThuZUtQbERGbVF1NHRHZz09', 'cXlNc093RFQ4ZU9hOXZFTUVwbTk3UT09', 'VVgydiszaHFRSEE9');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dataall`
--
ALTER TABLE `dataall`
  ADD PRIMARY KEY (`idSensor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dataall`
--
ALTER TABLE `dataall`
  MODIFY `idSensor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
