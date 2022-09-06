-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2018 at 04:08 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schooldb`
--
CREATE DATABASE IF NOT EXISTS `schooldb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `schooldb`;

-- --------------------------------------------------------

--
-- Table structure for table `attendtable`
--

CREATE TABLE `attendtable` (
  `admno` int(100) NOT NULL,
  `attendfrom` date NOT NULL,
  `attendto` date NOT NULL,
  `present` int(100) NOT NULL,
  `absent` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendtable`
--

INSERT INTO `attendtable` (`admno`, `attendfrom`, `attendto`, `present`, `absent`) VALUES
(1, '2018-07-21', '2018-07-21', 25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `classtable`
--

CREATE TABLE `classtable` (
  `class` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classtable`
--

INSERT INTO `classtable` (`class`) VALUES
(' 1st'),
(' 3');

-- --------------------------------------------------------

--
-- Table structure for table `examtable`
--

CREATE TABLE `examtable` (
  `admno` int(100) NOT NULL,
  `marks` int(100) NOT NULL,
  `totalmarks` int(100) NOT NULL,
  `percentage` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examtable`
--

INSERT INTO `examtable` (`admno`, `marks`, `totalmarks`, `percentage`) VALUES
(1, 75, 100, 75),
(2, 89, 100, 89);

-- --------------------------------------------------------

--
-- Table structure for table `feetable`
--

CREATE TABLE `feetable` (
  `admno` int(100) NOT NULL,
  `totalfee` int(100) NOT NULL,
  `paid` int(100) NOT NULL,
  `term` varchar(100) NOT NULL,
  `paiddate` date NOT NULL,
  `mode` varchar(100) NOT NULL,
  `due` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feetable`
--

INSERT INTO `feetable` (`admno`, `totalfee`, `paid`, `term`, `paiddate`, `mode`, `due`) VALUES
(1, 10000, 6000, '1st Term', '2018-07-21', 'cash', 4000),
(2, 1000, 100, '2nd Term', '2018-07-23', 'cash', 900);

-- --------------------------------------------------------

--
-- Table structure for table `sectiontable`
--

CREATE TABLE `sectiontable` (
  `section` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sectiontable`
--

INSERT INTO `sectiontable` (`section`) VALUES
(' A');

-- --------------------------------------------------------

--
-- Table structure for table `stafftable`
--

CREATE TABLE `stafftable` (
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `qualf` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `salary` int(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `staffimage` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stafftable`
--

INSERT INTO `stafftable` (`fname`, `lname`, `qualf`, `email`, `subject`, `salary`, `dob`, `gender`, `class`, `phone`, `address`, `staffimage`) VALUES
('ab', 'b', 'njj', 'g', 'Choose Subject', 88, '2018-07-19', 'male', ' 1st', '8899', 'zxcc', 'default.jpg'),
('a', 'b', 'c', 'd', 'Choose Subject', 78, '2018-07-13', 'male', 'Choose Class', '8993', 'z', ''),
('abc', 'd', 'hk', 'jh', 'Choose Subject', 78, '2018-07-06', 'male', 'Choose Class', '999', 'z', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `studenttable`
--

CREATE TABLE `studenttable` (
  `admno` int(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `fathername` varchar(100) NOT NULL,
  `mothername` varchar(100) NOT NULL,
  `foccu` varchar(100) NOT NULL,
  `moccu` varchar(100) NOT NULL,
  `admdate` date NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `bloodgroup` varchar(100) NOT NULL,
  `landline` int(100) NOT NULL,
  `religion` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `studentimage` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studenttable`
--

INSERT INTO `studenttable` (`admno`, `fname`, `lname`, `fathername`, `mothername`, `foccu`, `moccu`, `admdate`, `dob`, `gender`, `class`, `section`, `phone`, `bloodgroup`, `landline`, `religion`, `address`, `studentimage`) VALUES
(2, 'anisha', 'puri', 'npuri', 'hpuri', 'Service', 'Service', '2018-07-22', '1995-07-11', 'female', ' 1st', ' A', '7508600629', 'B+', 1812457981, 'Hindu', '686', '');

-- --------------------------------------------------------

--
-- Table structure for table `subjecttable`
--

CREATE TABLE `subjecttable` (
  `subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjecttable`
--

INSERT INTO `subjecttable` (`subject`) VALUES
(' Maths');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `uname` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`uname`, `pass`) VALUES
('akie', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendtable`
--
ALTER TABLE `attendtable`
  ADD PRIMARY KEY (`admno`),
  ADD UNIQUE KEY `present` (`present`);

--
-- Indexes for table `classtable`
--
ALTER TABLE `classtable`
  ADD UNIQUE KEY `class` (`class`);

--
-- Indexes for table `examtable`
--
ALTER TABLE `examtable`
  ADD PRIMARY KEY (`admno`);

--
-- Indexes for table `feetable`
--
ALTER TABLE `feetable`
  ADD PRIMARY KEY (`admno`);

--
-- Indexes for table `sectiontable`
--
ALTER TABLE `sectiontable`
  ADD UNIQUE KEY `section` (`section`);

--
-- Indexes for table `stafftable`
--
ALTER TABLE `stafftable`
  ADD PRIMARY KEY (`phone`);

--
-- Indexes for table `studenttable`
--
ALTER TABLE `studenttable`
  ADD PRIMARY KEY (`admno`);

--
-- Indexes for table `subjecttable`
--
ALTER TABLE `subjecttable`
  ADD UNIQUE KEY `subject` (`subject`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`uname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
