-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2021 at 12:11 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cse-482`
--

-- --------------------------------------------------------

--
-- Table structure for table `cardinfo`
--

CREATE TABLE `cardinfo` (
  `code` varchar(22) NOT NULL,
  `Price` int(22) NOT NULL,
  `Type` varchar(22) NOT NULL,
  `Card_ID` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customerdetails`
--

CREATE TABLE `customerdetails` (
  `First Name` varchar(22) NOT NULL,
  `Last Name` varchar(22) NOT NULL,
  `Password` varchar(22) NOT NULL,
  `Email` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerdetails`
--

INSERT INTO `customerdetails` (`First Name`, `Last Name`, `Password`, `Email`) VALUES
('FinePix Pro2 3D Camera', '1', '3DcAM01', '1500.00'),
('Luxury Ultra thin Wris', '1', 'wristWear03', '300.00'),
('AAAAAAAA', '2591997Aaa', 'sssssss', 'AAAAAA@gmail.com'),
('wwwwww', 'eeeeeeee', 'dcdc', 'ee@gmail.com'),
('fhjfyh', 'Ricd', 'dcdc', 'eeLLL@gmail.com'),
('IIIIII', '2591997Sss', 'ooooooo', 'gg@gmail.com'),
('BHBJ', 'LLLLLL', 'FFFFFFFF', 'KKJJJJH'),
('Farhat', 'Lamisa', 'Lamisa123', 'lamisa777@gmail.com'),
('Light', 'Ricd', 'dcdc', 'rown@yahoo.com'),
('Light', 'Ricd4747', 'thsth', 'rownak3434ggislamdip@yahoo.com'),
('Light', 'nhbgvfv', 'Ricd', 'rownak3434islamdip@yahoo.com'),
('Light', 'nhbgvfv', 'thsth', 'rownaki@yahoo.com'),
('Light', 'Ricd', 'nhbgvfv', 'rownakisjjjjjjjjlamdip@yahoo.com'),
('Light', 'Ricd', 'nhbgvfv', 'rownakislamdip@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `orderinfo`
--

CREATE TABLE `orderinfo` (
  `Email` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Code` varchar(22) NOT NULL,
  `Quantity` varchar(10) NOT NULL,
  `Price` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderinfo`
--

INSERT INTO `orderinfo` (`Email`, `Name`, `Code`, `Quantity`, `Price`) VALUES
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', '', '', '', ''),
('', 'Steam 5$', '123456jhg', '3', '777.00'),
('', 'steam 100.jpg', '121aw12', '1', '5.00'),
('', '', '', '', ''),
('', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `id` int(8) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `price` double(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, 'PUBG', 'pubgggpubg', 'product-images/pubg.jpg', 10.00),
(2, 'STEAM $20', '987rty5tyu76', 'product-images/steam 5.jpg', 19.00),
(5, 'CyberPunk', '123456jhg', 'product-images/cyberpunk.jpg', 77.00),
(6, 'steam 100.jpg', '121aw12', 'product-images/steam 100.jpg', 95.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cardinfo`
--
ALTER TABLE `cardinfo`
  ADD PRIMARY KEY (`Card_ID`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `customerdetails`
--
ALTER TABLE `customerdetails`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
