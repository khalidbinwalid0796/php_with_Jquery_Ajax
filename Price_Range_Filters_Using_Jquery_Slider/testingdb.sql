-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2021 at 06:54 AM
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
-- Database: `testingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `name` varchar(70) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `category` varchar(70) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `name`, `image`, `category`, `price`) VALUES
(1, 'Samsung Galaxy A10S', 'image-1.jpeg', 'Mobile', 520),
(2, 'HP Laptop - 17z-ca100 ', 'image-2.jpeg', 'Laptop', 1600),
(3, '3 IN 1 CAR VOLTMETER', 'image-3.jpeg', 'Car', 2020),
(4, 'Gucci G-Timeless', 'image-4.jpeg', 'Watch', 320),
(5, 'Infinix Hot S3', 'image-5.jpg', 'Mobile', 150),
(6, 'VIVO V9 Youth', 'image-6.jpeg', 'Laptop', 3500),
(7, 'Moto E4 Plus', 'image-7.jpeg', 'Car', 250),
(8, 'Lenovo K8 Plus', 'image-8.jpeg', 'Watch', 4500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
