-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2021 at 05:47 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '18-10-2016 04:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `college` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`, `college`) VALUES
(1, 'Sports', NULL, '2021-04-05 09:54:29', NULL, 'Vignan\'s Foundation for Science, Technology & Research (Deemed to be University)'),
(2, 'Academics', '', '2017-03-28 07:10:55', '2021-04-05 09:48:00', 'Vignan\'s Institute Of Information Technology \r\n'),
(3, 'Cultural Activities', NULL, '2021-04-05 09:56:49', NULL, 'Vignan\'s Institute of Technology and Science'),
(4, NULL, NULL, '2021-04-05 09:59:27', NULL, 'Vignan\'s Institute of Engineering for Women'),
(5, 'Maintenance', NULL, '2021-04-15 17:11:17', NULL, ''),
(6, 'Hostel', NULL, '2021-04-15 17:13:09', NULL, ''),
(7, 'canteen', NULL, '2021-04-15 17:16:13', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(9, 24, 'closed', 'Closed for now', '2021-03-01 07:23:34'),
(10, 26, 'closed', 'closed for now', '2021-03-01 07:37:58'),
(11, 28, 'closed', 'jhfjerhfehrfrjf', '2021-04-06 07:16:49'),
(12, 29, 'closed', 'Done', '2021-04-16 07:09:21');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(3, 'Visakhapatnam', '', '2016-10-18 11:35:02', '2021-03-01 07:11:21'),
(4, 'Guntur', 'pbPB', '2016-10-18 11:35:58', '2021-03-01 07:11:30'),
(5, 'Hyderabad', 'Haryana', '2017-03-28 07:20:36', '2021-03-01 07:11:35');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'ECE', '2017-03-28 07:11:07', '2021-03-01 07:12:47'),
(2, 1, 'CSE', '2017-03-28 07:11:20', '2021-03-01 07:14:36'),
(3, 1, 'IT', '2019-06-24 07:06:44', '2021-03-01 07:14:39'),
(4, 0, '\0', '2021-04-05 08:14:18', NULL),
(5, NULL, 'CSE\r\nIT\r\nECE', '2021-04-05 09:33:30', NULL),
(6, 6, 'ME', '2021-04-05 10:03:07', NULL),
(7, NULL, 'Dean of Academics', '2021-04-05 10:09:56', NULL),
(8, 6, 'CE', '2021-04-15 17:24:15', NULL),
(9, 5, 'EEE', '2021-04-15 17:22:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `college` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`, `college`) VALUES
(27, 4, 1, 'CSE', ' Complaint', 'Visakhapatnam', NULL, 'invalid complaint', '', '2021-04-05 13:37:45', NULL, NULL, ''),
(28, 8, 1, 'CSE', ' Complaint', 'Visakhapatnam', NULL, 'first complaint', '', '2021-04-05 14:55:22', 'closed', '2021-04-06 07:16:49', ''),
(29, 8, 1, 'Select Department', ' Complaint', 'Visakhapatnam', NULL, 'test complaint', '', '2021-04-06 06:27:13', 'closed', '2021-04-16 07:09:21', ''),
(30, 8, 1, 'CSE', ' Complaint', 'Visakhapatnam', NULL, 'bhargav', '', '2021-04-06 07:15:36', NULL, NULL, ''),
(31, NULL, 3, NULL, 'College Level', NULL, NULL, NULL, NULL, '2021-04-15 17:32:37', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(38, 8, '12345', 0x3a3a3100000000000000000000000000, '2021-04-05 14:46:51', '05-04-2021 08:18:14 PM', 1),
(39, 8, '12345', 0x3a3a3100000000000000000000000000, '2021-04-05 14:51:53', '05-04-2021 08:25:38 PM', 1),
(40, 8, '12345', 0x3a3a3100000000000000000000000000, '2021-04-06 06:26:32', '06-04-2021 11:57:38 AM', 1),
(41, 0, '12345', 0x3a3a3100000000000000000000000000, '2021-04-06 07:14:39', '', 0),
(42, 8, '12345', 0x3a3a3100000000000000000000000000, '2021-04-06 07:14:51', '06-04-2021 12:45:52 PM', 1),
(43, 0, '123', 0x3a3a3100000000000000000000000000, '2021-04-07 14:14:39', '', 0),
(44, 8, '12345', 0x3a3a3100000000000000000000000000, '2021-04-07 14:16:14', '07-04-2021 07:49:13 PM', 1),
(45, 8, '12345', 0x3a3a3100000000000000000000000000, '2021-04-15 17:06:31', '', 1),
(46, 0, '123', 0x3a3a3100000000000000000000000000, '2021-04-16 07:03:54', '', 0),
(47, 0, '12345', 0x3a3a3100000000000000000000000000, '2021-04-16 07:04:23', '', 0),
(48, 8, '12345', 0x3a3a3100000000000000000000000000, '2021-04-16 07:04:38', '16-04-2021 12:34:59 PM', 1),
(49, 8, '12345', 0x3a3a3100000000000000000000000000, '2021-04-16 07:06:32', '16-04-2021 12:38:38 PM', 1),
(50, 8, '12345', 0x3a3a3100000000000000000000000000, '2021-04-16 07:11:19', '16-04-2021 12:42:36 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(7, '123', '583', '98c2f830c73fc431b83c6c04877289e8', 1234567890, NULL, NULL, NULL, NULL, NULL, '2021-04-05 14:20:40', '0000-00-00 00:00:00', 1),
(8, '123', '12345', '98c2f830c73fc431b83c6c04877289e8', 1234567890, NULL, NULL, NULL, NULL, NULL, '2021-04-05 14:46:30', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
