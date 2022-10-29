-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2022 at 06:36 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cpmsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `up_time` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `up_time`) VALUES
(1, 'Zunaid', 'admin', 'admin', 'Jun, Saturday, 05:49 pm');

-- --------------------------------------------------------

--
-- Table structure for table `circle`
--

CREATE TABLE `circle` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `circle`
--

INSERT INTO `circle` (`id`, `name`, `username`, `email`, `password`, `date`) VALUES
(9, 'Zunaid', 'Xunaid', 'zonaid888@gmail.com', '12345', '2022-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `cmp_log`
--

CREATE TABLE `cmp_log` (
  `id` int(11) NOT NULL,
  `user_id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone no` varchar(10) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `complain` varchar(300) NOT NULL,
  `ref_no` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cmp_log`
--

INSERT INTO `cmp_log` (`id`, `user_id`, `name`, `username`, `email`, `phone no`, `subject`, `complain`, `ref_no`) VALUES
(6, 9, 'Zunaid', 'Xunaid', 'zonaid888@gmail.com', '0177759174', 'Pstu Health Care - Doctors Irresponsiblity', 'Mostafa Kamal Hossain, the campus doctor, will be on leave until the investigation of the complaint against him is completed, VC Chowdhury said.\r\n\r\nEarlier in the morning, the universityâ€™s students continued their demonstration for the second day today demanding immediate removal of Hossain, who a', 1721774),
(7, 9, 'Zunaid', 'Xunaid', 'zonaid888@gmail.com', '0152153904', 'Electricity problem in PSTU', '\r\nRespected Sir/Madam,\r\n\r\nI would like to draw your attention to the problem which the residents of (the locality) face, the irregular supply of Electricity. The residents are not at all comfortable here. The people can\'t are no longer able to carry out their regular day to day schedule.', 2515168);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phno` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`, `phno`) VALUES
(1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `view_cmp`
--

CREATE TABLE `view_cmp` (
  `id` int(11) NOT NULL,
  `ref_no` varchar(20) NOT NULL,
  `name` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `phone no` varchar(220) NOT NULL,
  `subject` varchar(220) NOT NULL,
  `complain` text NOT NULL,
  `dummy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `circle`
--
ALTER TABLE `circle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cmp_log`
--
ALTER TABLE `cmp_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `view_cmp`
--
ALTER TABLE `view_cmp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `circle`
--
ALTER TABLE `circle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cmp_log`
--
ALTER TABLE `cmp_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `view_cmp`
--
ALTER TABLE `view_cmp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
