-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 10:56 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll-dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `hrm_payroll`
--

CREATE TABLE `hrm_payroll` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `retainer` decimal(10,2) NOT NULL,
  `paye` decimal(10,2) NOT NULL,
  `witholding_tax` decimal(10,2) NOT NULL,
  `nhif` decimal(10,2) NOT NULL,
  `nssf` decimal(10,2) NOT NULL,
  `net_salary` decimal(10,2) NOT NULL,
  `payslip_gen` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_roles`
--

CREATE TABLE `hrm_roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `retainer` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_staff`
--

CREATE TABLE `hrm_staff` (
  `id` int(11) NOT NULL,
  `firsname` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `id_no` int(11) NOT NULL,
  `nssf_no` int(11) NOT NULL,
  `nhif_no` int(11) NOT NULL,
  `kra_pin_no` varchar(255) NOT NULL,
  `join_date` date NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hrm_payroll`
--
ALTER TABLE `hrm_payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hrm_roles`
--
ALTER TABLE `hrm_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hrm_staff`
--
ALTER TABLE `hrm_staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_no` (`id_no`),
  ADD UNIQUE KEY `nssf_no` (`nssf_no`),
  ADD UNIQUE KEY `nhif_no` (`nhif_no`),
  ADD UNIQUE KEY `kra_pin_no` (`kra_pin_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hrm_payroll`
--
ALTER TABLE `hrm_payroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_roles`
--
ALTER TABLE `hrm_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_staff`
--
ALTER TABLE `hrm_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
