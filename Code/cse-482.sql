-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2021 at 01:06 PM
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
('AAAAAAAA', '2591997Aaa', 'sssssss', 'AAAAAA@gmail.com'),
('wwwwww', 'eeeeeeee', 'dcdc', 'ee@gmail.com'),
('fhjfyh', 'Ricd', 'dcdc', 'eeLLL@gmail.com'),
('IIIIII', '2591997Sss', 'ooooooo', 'gg@gmail.com'),
('BHBJ', 'LLLLLL', 'FFFFFFFF', 'KKJJJJH'),
('Light', 'Ricd', 'dcdc', 'rown@yahoo.com'),
('Light', 'Ricd4747', 'thsth', 'rownak3434ggislamdip@yahoo.com'),
('Light', 'nhbgvfv', 'Ricd', 'rownak3434islamdip@yahoo.com'),
('Light', 'nhbgvfv', 'thsth', 'rownaki@yahoo.com'),
('Light', 'Ricd', 'nhbgvfv', 'rownakisjjjjjjjjlamdip@yahoo.com'),
('Light', 'Ricd', 'nhbgvfv', 'rownakislamdip@yahoo.com');

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
(1, 'FinePix Pro2 3D Camera', '3DcAM01', 'product-images/camera.jpg', 1500.00),
(2, 'EXP Portable Hard Drive', 'USB02', 'product-images/external-hard-drive.jpg', 800.00),
(3, 'Luxury Ultra thin Wrist Watch', 'wristWear03', 'product-images/watch.jpg', 300.00),
(4, 'XP 1155 Intel Core Laptop', 'LPN45', 'product-images/laptop.jpg', 800.00),
(5, 'Steam 5$', '123456jhg', 'product-images/cyberpunk.jpg', 777.00);

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
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
