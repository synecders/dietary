-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2020 at 03:33 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dietary`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(12) NOT NULL,
  `uId` varchar(25) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `createdAt` datetime(6) DEFAULT current_timestamp(6),
  `ward` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patientsubsistence`
--

CREATE TABLE `patientsubsistence` (
  `id` int(12) NOT NULL,
  `pId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `breakfast` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lunch` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dinner` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(12) NOT NULL,
  `pId` varchar(25) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `ward` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `day01` varchar(255) DEFAULT NULL,
  `day02` varchar(255) DEFAULT NULL,
  `day03` varchar(255) DEFAULT NULL,
  `day04` varchar(255) DEFAULT NULL,
  `day05` varchar(255) DEFAULT NULL,
  `day06` varchar(255) DEFAULT NULL,
  `day07` varchar(255) DEFAULT NULL,
  `day08` varchar(255) DEFAULT NULL,
  `day09` varchar(255) DEFAULT NULL,
  `day10` varchar(255) DEFAULT NULL,
  `day11` varchar(255) DEFAULT NULL,
  `day12` varchar(255) DEFAULT NULL,
  `day13` varchar(255) DEFAULT NULL,
  `day14` varchar(255) DEFAULT NULL,
  `day15` varchar(255) DEFAULT NULL,
  `day16` varchar(255) DEFAULT NULL,
  `day17` varchar(255) DEFAULT NULL,
  `day18` varchar(255) DEFAULT NULL,
  `day19` varchar(255) DEFAULT NULL,
  `day20` varchar(255) DEFAULT NULL,
  `day21` varchar(255) DEFAULT NULL,
  `day22` varchar(255) DEFAULT NULL,
  `day23` varchar(255) DEFAULT NULL,
  `day24` varchar(255) DEFAULT NULL,
  `day25` varchar(255) DEFAULT NULL,
  `day26` varchar(255) DEFAULT NULL,
  `day27` varchar(255) DEFAULT NULL,
  `day28` varchar(255) DEFAULT NULL,
  `day29` varchar(255) DEFAULT NULL,
  `day30` varchar(255) DEFAULT NULL,
  `day31` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patientsubsistence`
--
ALTER TABLE `patientsubsistence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patientsubsistence`
--
ALTER TABLE `patientsubsistence`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
