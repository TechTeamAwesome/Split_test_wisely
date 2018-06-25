-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2018 at 01:13 PM
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
-- Database: `split`
--

-- --------------------------------------------------------

--
-- Table structure for table `group1`
--

CREATE TABLE `group1` (
  `groupId` varchar(10) NOT NULL,
  `groupName` varchar(50) NOT NULL,
  `groupTotal` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group1`
--

INSERT INTO `group1` (`groupId`, `groupName`, `groupTotal`) VALUES
('123', 'Food6', '1'),
('1234', 'Food', '1'),
('12345', 'FunFun', '1000');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `userId` varchar(10) NOT NULL,
  `friendId` varchar(10) NOT NULL,
  `groupId` varchar(10) NOT NULL,
  `ownes` varchar(10) NOT NULL,
  `debt` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`userId`, `friendId`, `groupId`, `ownes`, `debt`) VALUES
('9873641180', '9999999999', '123', '0.0', '0.0'),
('9873641181', '9999999999', '123', '90000.0', '90000.0');

-- --------------------------------------------------------

--
-- Table structure for table `subgroup`
--

CREATE TABLE `subgroup` (
  `groupId` varchar(10) NOT NULL,
  `memberId` varchar(10) NOT NULL,
  `totalOfEachMemberinGroup` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subgroup`
--

INSERT INTO `subgroup` (`groupId`, `memberId`, `totalOfEachMemberinGroup`) VALUES
('123', '9873641181', '0'),
('1234', '987364111', '900000');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transactionId` varchar(10) NOT NULL,
  `groupId` varchar(10) NOT NULL,
  `memberId` varchar(10) NOT NULL,
  `description` varchar(200) NOT NULL,
  `amount` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transactionId`, `groupId`, `memberId`, `description`, `amount`) VALUES
('1', '0', '0', '0', '0.0'),
('10', '10', '10', '10', '10.0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `phoneNumber` varchar(10) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `userId` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`phoneNumber`, `userName`, `password`, `userId`) VALUES
('9873641111', 'Anubhav Gupta', 'password', 'anubhav94.aice@gmail.com'),
('9873641161', 'Anubhav', 'pd', 'anubhv94.aice@gmail.com'),
('9873641181', 'Anubhav Gupta', 'pass', 'anubhavgupta94.aice@gmail.com'),
('9873681161', 'Anubhav', 'dnandnm', 'anubh94.aice@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `group1`
--
ALTER TABLE `group1`
  ADD PRIMARY KEY (`groupId`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`userId`,`friendId`,`groupId`);

--
-- Indexes for table `subgroup`
--
ALTER TABLE `subgroup`
  ADD PRIMARY KEY (`groupId`,`memberId`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transactionId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`phoneNumber`),
  ADD UNIQUE KEY `userId` (`userId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
