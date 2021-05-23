-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2021 at 12:29 PM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Data`
--

-- --------------------------------------------------------

--
-- Table structure for table `Covid_Report`
--

CREATE TABLE `Covid_Report` (
  `Name` varchar(255) NOT NULL,
  `Test_No` int(8) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Covid_Report` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Covid_Report`
--

INSERT INTO `Covid_Report` (`Name`, `Test_No`, `Password`, `Covid_Report`) VALUES
('Aadish Jain', 10000001, '@10000001@', 'NO'),
('Anvi Sharma', 10000002, '@10000002@', 'NO'),
('Aman Singh', 10000003, '@10000003@', 'YES'),
('Ankur Shrivastav', 10000004, '@10000004@', 'YES'),
('Anshul Gupta', 10000005, '@10000005@', 'NO'),
('Ashwin Khatri', 10000006, '@10000006@', 'NO'),
('Devesh Meena', 10000007, '@10000007@', 'YES'),
('Divya Sharma', 10000008, '@10000008@', 'NO'),
('Harshita Sharma', 10000009, '@10000009@', 'NO'),
('Kunika Kabra', 10000010, '@10000010@', 'NO'),
('Mansi Hada', 10000011, '@10000011@', 'YES'),
('Misba Zamil', 10000012, '@10000012@', 'NO'),
('Modit Meena', 10000013, '@10000013@', 'YES'),
('Neeraj Rajput', 10000014, '@10000014@', 'YES'),
('Neha Meena', 10000015, '@10000015@', 'NO'),
('Nikita Suman', 10000016, '@10000016@', 'YES'),
('Payal Jagwani', 10000017, '@10000017@', 'YES'),
('Piyush Mathur', 10000018, '@10000018@', 'YES'),
('Pragya Sharma', 10000019, '@10000019@', 'NO'),
('Pratyush Jahangir', 10000020, '@10000020@', 'NO'),
('Rashi Chaudhary', 10000021, '@10000021@', 'NO'),
('Rishika Trivedi', 10000022, '@10000022@', 'YES'),
('Shruti Mishra', 10000023, '@10000023@', 'YES'),
('Sumit Nagar', 10000024, '@10000024@', 'NO'),
('Vishal Rajput', 10000025, '@10000025@', 'NO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Covid_Report`
--
ALTER TABLE `Covid_Report`
  ADD PRIMARY KEY (`Test_No`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
