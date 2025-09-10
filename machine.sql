-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2025 at 09:34 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `machine`
--

-- --------------------------------------------------------

--
-- Table structure for table `machine_master`
--

CREATE TABLE `machine_master` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `added_on` datetime NOT NULL,
  `added_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `machine_master`
--

INSERT INTO `machine_master` (`id`, `name`, `added_on`, `added_by`) VALUES
(23, 'laravel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'new machine', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'java', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'new machine', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `machine_users`
--

CREATE TABLE `machine_users` (
  `id` int(11) NOT NULL,
  `machine_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `machine_users`
--

INSERT INTO `machine_users` (`id`, `machine_id`, `user_id`) VALUES
(76, 25, 2),
(77, 25, 37),
(79, 26, 1),
(80, 26, 36),
(85, 23, 38),
(86, 23, 36),
(87, 23, 2),
(88, 27, 2);

-- --------------------------------------------------------

--
-- Table structure for table `system_users`
--

CREATE TABLE `system_users` (
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `alternate_number` varchar(20) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_joining` date NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `aadharcard` varchar(50) NOT NULL,
  `pancard` varchar(20) NOT NULL,
  `profile_image` varchar(50) NOT NULL,
  `business_location` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `address` longtext NOT NULL,
  `fms_process` int(11) DEFAULT NULL,
  `user_status` int(11) NOT NULL,
  `added_on` datetime NOT NULL,
  `added_by` int(11) NOT NULL,
  `last_updated_on` datetime NOT NULL,
  `hide_profile` int(11) NOT NULL DEFAULT 0,
  `aadhar_number` varchar(100) NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `spouce_name` varchar(100) NOT NULL,
  `spouce_company_name` varchar(255) NOT NULL,
  `children_name` varchar(255) NOT NULL,
  `employee_code` varchar(100) NOT NULL,
  `nominee_name` varchar(100) NOT NULL,
  `date_of_leaving` date NOT NULL,
  `basic_salary` decimal(19,2) NOT NULL,
  `gross_salary` decimal(19,2) NOT NULL,
  `ctc` decimal(19,2) NOT NULL,
  `uia_no` varchar(100) NOT NULL,
  `pf_no` varchar(100) NOT NULL,
  `bank_acc_detail` longtext NOT NULL,
  `present_address` longtext NOT NULL,
  `joining_letter` varchar(200) NOT NULL,
  `relieving_letter` varchar(200) NOT NULL,
  `marketing_person` int(11) NOT NULL DEFAULT 0,
  `assign_delegation` int(11) NOT NULL,
  `salestarget` decimal(10,0) NOT NULL,
  `paymenttarget` decimal(10,0) NOT NULL,
  `assign_call_delegation` int(11) NOT NULL DEFAULT 0,
  `show_in_attendance` int(11) NOT NULL DEFAULT 0,
  `employeecode` varchar(20) NOT NULL,
  `start_training` int(11) DEFAULT NULL,
  `salesforce_code` varchar(45) DEFAULT NULL,
  `markdelegator` int(11) NOT NULL DEFAULT 0,
  `factory_unit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_users`
--

INSERT INTO `system_users` (`user_id`, `title`, `first_name`, `last_name`, `email`, `password`, `contact_number`, `alternate_number`, `father_name`, `mother_name`, `date_of_birth`, `date_of_joining`, `qualification`, `aadharcard`, `pancard`, `profile_image`, `business_location`, `department_id`, `user_role_id`, `address`, `fms_process`, `user_status`, `added_on`, `added_by`, `last_updated_on`, `hide_profile`, `aadhar_number`, `blood_group`, `spouce_name`, `spouce_company_name`, `children_name`, `employee_code`, `nominee_name`, `date_of_leaving`, `basic_salary`, `gross_salary`, `ctc`, `uia_no`, `pf_no`, `bank_acc_detail`, `present_address`, `joining_letter`, `relieving_letter`, `marketing_person`, `assign_delegation`, `salestarget`, `paymenttarget`, `assign_call_delegation`, `show_in_attendance`, `employeecode`, `start_training`, `salesforce_code`, `markdelegator`, `factory_unit`) VALUES
(1, '', 'Manik', 'Sethi', 'info@supremeglow.in', 'Supreme@123', '9910128617', '', '', '', '1992-01-22', '2021-01-21', '', '', '', '1750410211.png', 1, 1, 35, '', 0, 1, '2025-06-20 14:33:31', 36, '2025-06-20 14:33:31', 0, '', 'B +', '', '', '', '001', '', '1970-01-01', '0.00', '0.00', '0.00', '', '', '', '', '', '', 1, 1, '100000', '50000', 1, 0, 'HHEVO', 0, NULL, 1, 3),
(2, '', 'Akash', 'Sharma', 'akashajaysharma1509@gmail.com', 'qbi-30', '8588052104', '8588052104', '', '', '1998-09-15', '2024-09-16', 'NCA', '', '', '1751277765.png', 1, 3, 36, '', 0, 1, '2025-06-30 15:32:45', 36, '2025-06-30 15:32:45', 0, '', '', '', '', '', '', '', '0000-00-00', '0.00', '0.00', '0.00', '', '', '', '', '', '', 0, 0, '0', '0', 0, 0, '', NULL, NULL, 0, 3),
(36, '', 'Manglesh', 'Upadhyay', 'mangleshup@gmail.com', '121003', '9650609615', '', 'Mr. Kripa Shankar Upadhyay', 'Mrs. Savtri Devi', '1993-11-04', '2023-04-13', 'POST GRADUATE', '', '', '1750331967.png', 1, 1, 35, '', 0, 1, '2024-04-19 11:19:09', 36, '2024-04-19 11:19:09', 0, '', 'B+', 'Diksha Shukla', 'Gamavis Softech LLP', '', '002', '', '1970-01-01', '0.00', '0.00', '0.00', '', '', '', '', '', '', 1, 1, '100000', '10000', 1, 0, 'JKLAM', NULL, NULL, 0, 3),
(37, '', 'Store', '', 'store@qbi.com', 'qbi-41', '8447031736', '', '', '', '1970-01-01', '1970-01-01', '', '', '', '', 1, 38, 0, '', 0, 1, '2025-07-10 12:23:29', 36, '2025-07-10 12:23:29', 0, '', '', '', '', '', '', '', '0000-00-00', '0.00', '0.00', '0.00', '', '', '', '', '', '', 0, 0, '0', '0', 0, 0, '', NULL, NULL, 0, 2),
(38, '', 'Purchase', 'Department', 'purchase@qbi.com', 'qbi-29', '9718991797', '', '', '', '1970-01-01', '1970-01-01', '', '', '', '', 1, 39, 37, '', 0, 1, '2025-07-11 17:33:20', 36, '2025-07-11 17:33:20', 0, '', '', '', '', '', '', '', '0000-00-00', '0.00', '0.00', '0.00', '', '', '', '', '', '', 0, 0, '0', '0', 0, 0, '', NULL, NULL, 0, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `machine_master`
--
ALTER TABLE `machine_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machine_users`
--
ALTER TABLE `machine_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `machine_id` (`machine_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `system_users`
--
ALTER TABLE `system_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `machine_master`
--
ALTER TABLE `machine_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `machine_users`
--
ALTER TABLE `machine_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `system_users`
--
ALTER TABLE `system_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `machine_users`
--
ALTER TABLE `machine_users`
  ADD CONSTRAINT `machine_users_ibfk_1` FOREIGN KEY (`machine_id`) REFERENCES `machine_master` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `machine_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `system_users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
