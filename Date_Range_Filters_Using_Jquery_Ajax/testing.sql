-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2021 at 03:39 PM
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
-- Database: `testing`
--

-- --------------------------------------------------------

--
-- Table structure for table `demo_post`
--

CREATE TABLE `demo_post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `demo_post`
--

INSERT INTO `demo_post` (`id`, `title`) VALUES
(1, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(2, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(3, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(4, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(5, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(6, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(7, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(8, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(9, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(10, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(11, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(12, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(13, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(14, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(15, 'Live Data Search with Pagination in PHP Mysql using Ajax');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`) VALUES
(1, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(2, 'Live Data Search with Pagination in php mysqli using Ajax'),
(3, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(4, 'Live Data Search with Pagination in php mysqli using Ajax'),
(5, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(6, 'Live Data Search with Pagination in php mysqli using Ajax'),
(7, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(8, 'Live Data Search with Pagination in php mysqli using Ajax'),
(9, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(10, 'Live Data Search with Pagination in php mysqli using Ajax'),
(11, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(12, 'Live Data Search with Pagination in php_mysqli using Ajax'),
(13, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(14, 'Live Data Search with Pagination in php_mysqli using Ajax'),
(15, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(16, 'Live Data Search with Pagination in php_mysqli using Ajax'),
(17, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(18, 'Live Data Search with Pagination in php & mysqli using Ajax'),
(19, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(20, 'Live Data Search with Pagination in php_mysqli using Ajax'),
(21, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(22, 'Live Data Search with Pagination in php & mysqli using Ajax'),
(23, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(24, 'Live Data Search with Pagination in php & mysqli using Ajax'),
(25, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(26, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(27, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(28, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(29, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(30, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(31, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(32, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(33, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(34, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(35, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(36, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(37, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(38, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(39, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(40, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(41, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(42, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(43, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(44, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(45, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(46, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(47, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(48, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(49, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(50, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(51, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(52, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(53, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(54, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(55, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(56, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(57, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(58, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(59, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(60, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(61, 'Live Data Search with Pagination in PHP Mysql using Ajax'),
(62, 'Live Data Search with Pagination in PHP Mysql using Ajax');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(20) NOT NULL,
  `product_name` varchar(120) NOT NULL,
  `product_brand` varchar(100) NOT NULL,
  `product_price` decimal(8,2) NOT NULL,
  `product_ram` char(5) NOT NULL,
  `product_storage` varchar(50) NOT NULL,
  `product_camera` varchar(20) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_quantity` mediumint(5) NOT NULL,
  `product_status` enum('0','1') NOT NULL COMMENT '0-active,1-inactive'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_brand`, `product_price`, `product_ram`, `product_storage`, `product_camera`, `product_image`, `product_quantity`, `product_status`) VALUES
(1, 'Honor 9 Lite (Sapphire Blue, 64 GB)  (4 GB RAM)', 'Honor', '14499.00', '4', '64', '13', 'image-1.jpeg', 10, '1'),
(2, '\r\nInfinix Hot S3 (Sandstone Black, 32 GB)  (3 GB RAM)', 'Infinix', '8999.00', '3', '32', '13', 'image-2.jpeg', 10, '1'),
(3, 'VIVO V9 Youth (Gold, 32 GB)  (4 GB RAM)', 'VIVO', '16990.00', '4', '32', '16', 'image-3.jpeg', 10, '1'),
(4, 'Moto E4 Plus (Fine Gold, 32 GB)  (3 GB RAM)', 'Moto', '11499.00', '3', '32', '8', 'image-4.jpeg', 10, '1'),
(5, 'Lenovo K8 Plus (Venom Black, 32 GB)  (3 GB RAM)', 'Lenevo', '9999.00', '3', '32', '13', 'image-5.jpg', 10, '1'),
(6, 'Samsung Galaxy On Nxt (Gold, 16 GB)  (3 GB RAM)', 'Samsung', '10990.00', '3', '16', '13', 'image-6.jpeg', 10, '1'),
(7, 'Moto C Plus (Pearl White, 16 GB)  (2 GB RAM)', 'Moto', '7799.00', '2', '16', '8', 'image-7.jpeg', 10, '1'),
(8, 'Panasonic P77 (White, 16 GB)  (1 GB RAM)', 'Panasonic', '5999.00', '1', '16', '8', 'image-8.jpeg', 10, '1'),
(9, 'OPPO F5 (Black, 64 GB)  (6 GB RAM)', 'OPPO', '19990.00', '6', '64', '16', 'image-9.jpeg', 10, '1'),
(10, 'Honor 7A (Gold, 32 GB)  (3 GB RAM)', 'Honor', '8999.00', '3', '32', '13', 'image-10.jpeg', 10, '1'),
(11, 'Asus ZenFone 5Z (Midnight Blue, 64 GB)  (6 GB RAM)', 'Asus', '29999.00', '6', '128', '12', 'image-12.jpeg', 10, '1'),
(12, 'Redmi 5A (Gold, 32 GB)  (3 GB RAM)', 'MI', '5999.00', '3', '32', '13', 'image-12.jpeg', 10, '1'),
(13, 'Intex Indie 5 (Black, 16 GB)  (2 GB RAM)', 'Intex', '4999.00', '2', '16', '8', 'image-13.jpeg', 10, '1'),
(14, 'Google Pixel 2 XL (18:9 Display, 64 GB) White', 'Google', '61990.00', '4', '64', '12', 'image-14.jpeg', 10, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `order_customer_name` varchar(255) NOT NULL,
  `order_item` varchar(255) NOT NULL,
  `order_value` double(12,2) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `order_customer_name`, `order_item`, `order_value`, `order_date`) VALUES
(1, 'David E. Gary', 'Shuttering Plywood', 1500.00, '2017-01-14'),
(2, 'Eddie M. Douglas', 'Aluminium Heavy Windows', 2000.00, '2017-01-08'),
(3, 'Oscar D. Scoggins', 'Plaster Of Paris', 150.00, '2016-12-29'),
(4, 'Clara C. Kulik', 'Spin Driller Machine', 350.00, '2016-12-30'),
(5, 'Christopher M. Victory', 'Shopping Trolley', 100.00, '2017-01-01'),
(6, 'Jessica G. Fischer', 'CCTV Camera', 800.00, '2017-01-02'),
(7, 'Roger R. White', 'Truck Tires', 2000.00, '2016-12-28'),
(8, 'Susan C. Richardson', 'Glass Block', 200.00, '2017-01-04'),
(9, 'David C. Jury', 'Casing Pipes', 500.00, '2016-12-27'),
(10, 'Lori C. Skinner', 'Glass PVC Rubber', 1800.00, '2016-12-30'),
(11, 'Shawn S. Derosa', 'Sony HTXT1 2.1-Channel TV', 180.00, '2017-01-03'),
(12, 'Karen A. McGee', 'Over-the-Ear Stereo Headphones ', 25.00, '2017-01-01'),
(13, 'Kristine B. McGraw', 'Tristar 10\" Round Copper Chef Pan with Glass Lid', 20.00, '2016-12-30'),
(14, 'Gary M. Porter', 'ROBO 3D R1 Plus 3D Printer', 600.00, '2017-01-02'),
(15, 'Sarah D. Hunter', 'Westinghouse Select Kitchen Appliances', 35.00, '2016-12-29'),
(16, 'Diane J. Thomas', 'SanDisk Ultra 32GB microSDHC', 12.00, '2017-01-05'),
(17, 'Helena J. Quillen', 'TaoTronics Dimmable Outdoor String Lights', 16.00, '2017-01-04'),
(18, 'Arlette G. Nathan', 'TaoTronics Bluetooth in-Ear Headphones', 25.00, '2017-01-03'),
(19, 'Ronald S. Vallejo', 'Scotchgard Fabric Protector, 10-Ounce, 2-Pack', 20.00, '2017-01-03'),
(20, 'Felicia L. Sorensen', 'Anker 24W Dual USB Wall Charger with Foldable Plug', 12.00, '2017-01-04'),
(21, 'David E. Gary', 'Shuttering Plywood', 1500.00, '2017-01-14'),
(22, 'Eddie M. Douglas', 'Aluminium Heavy Windows', 2000.00, '2017-01-08'),
(23, 'Oscar D. Scoggins', 'Plaster Of Paris', 150.00, '2016-12-29'),
(24, 'Clara C. Kulik', 'Spin Driller Machine', 350.00, '2016-12-30'),
(25, 'Christopher M. Victory', 'Shopping Trolley', 100.00, '2017-01-01'),
(26, 'Jessica G. Fischer', 'CCTV Camera', 800.00, '2017-01-02'),
(27, 'Roger R. White', 'Truck Tires', 2000.00, '2016-12-28'),
(28, 'Susan C. Richardson', 'Glass Block', 200.00, '2017-01-04'),
(29, 'David C. Jury', 'Casing Pipes', 500.00, '2016-12-27'),
(30, 'Lori C. Skinner', 'Glass PVC Rubber', 1800.00, '2016-12-30'),
(31, 'Shawn S. Derosa', 'Sony HTXT1 2.1-Channel TV', 180.00, '2017-01-03'),
(32, 'Karen A. McGee', 'Over-the-Ear Stereo Headphones ', 25.00, '2017-01-01'),
(33, 'Kristine B. McGraw', 'Tristar 10\" Round Copper Chef Pan with Glass Lid', 20.00, '2016-12-30'),
(34, 'Gary M. Porter', 'ROBO 3D R1 Plus 3D Printer', 600.00, '2017-01-02'),
(35, 'Sarah D. Hunter', 'Westinghouse Select Kitchen Appliances', 35.00, '2016-12-29'),
(36, 'Diane J. Thomas', 'SanDisk Ultra 32GB microSDHC', 12.00, '2017-01-05'),
(37, 'Helena J. Quillen', 'TaoTronics Dimmable Outdoor String Lights', 16.00, '2017-01-04'),
(38, 'Arlette G. Nathan', 'TaoTronics Bluetooth in-Ear Headphones', 25.00, '2017-01-03'),
(39, 'Ronald S. Vallejo', 'Scotchgard Fabric Protector, 10-Ounce, 2-Pack', 20.00, '2017-01-03'),
(40, 'Felicia L. Sorensen', 'Anker 24W Dual USB Wall Charger with Foldable Plug', 12.00, '2017-01-04'),
(41, 'David E. Gary', 'Shuttering Plywood', 1500.00, '2017-01-14'),
(42, 'Eddie M. Douglas', 'Aluminium Heavy Windows', 2000.00, '2017-01-08'),
(43, 'Oscar D. Scoggins', 'Plaster Of Paris', 150.00, '2016-12-29'),
(44, 'Clara C. Kulik', 'Spin Driller Machine', 350.00, '2016-12-30'),
(45, 'Christopher M. Victory', 'Shopping Trolley', 100.00, '2017-01-01'),
(46, 'Jessica G. Fischer', 'CCTV Camera', 800.00, '2017-01-02'),
(47, 'Roger R. White', 'Truck Tires', 2000.00, '2016-12-28'),
(48, 'Susan C. Richardson', 'Glass Block', 200.00, '2017-01-04'),
(49, 'David C. Jury', 'Casing Pipes', 500.00, '2016-12-27'),
(50, 'Lori C. Skinner', 'Glass PVC Rubber', 1800.00, '2016-12-30'),
(51, 'Shawn S. Derosa', 'Sony HTXT1 2.1-Channel TV', 180.00, '2017-01-03'),
(52, 'Karen A. McGee', 'Over-the-Ear Stereo Headphones ', 25.00, '2017-01-01'),
(53, 'Kristine B. McGraw', 'Tristar 10\" Round Copper Chef Pan with Glass Lid', 20.00, '2016-12-30'),
(54, 'Gary M. Porter', 'ROBO 3D R1 Plus 3D Printer', 600.00, '2017-01-02'),
(55, 'Sarah D. Hunter', 'Westinghouse Select Kitchen Appliances', 35.00, '2016-12-29'),
(56, 'Diane J. Thomas', 'SanDisk Ultra 32GB microSDHC', 12.00, '2017-01-05'),
(57, 'Helena J. Quillen', 'TaoTronics Dimmable Outdoor String Lights', 16.00, '2017-01-04'),
(58, 'Arlette G. Nathan', 'TaoTronics Bluetooth in-Ear Headphones', 25.00, '2017-01-03'),
(59, 'Ronald S. Vallejo', 'Scotchgard Fabric Protector, 10-Ounce, 2-Pack', 20.00, '2017-01-03'),
(60, 'Felicia L. Sorensen', 'Anker 24W Dual USB Wall Charger with Foldable Plug', 12.00, '2017-01-04'),
(61, 'David E. Gary', 'Shuttering Plywood', 1500.00, '2017-01-14'),
(62, 'Eddie M. Douglas', 'Aluminium Heavy Windows', 2000.00, '2017-01-08'),
(63, 'Oscar D. Scoggins', 'Plaster Of Paris', 150.00, '2016-12-29'),
(64, 'Clara C. Kulik', 'Spin Driller Machine', 350.00, '2016-12-30'),
(65, 'Christopher M. Victory', 'Shopping Trolley', 100.00, '2017-01-01'),
(66, 'Jessica G. Fischer', 'CCTV Camera', 800.00, '2017-01-02'),
(67, 'Roger R. White', 'Truck Tires', 2000.00, '2016-12-28'),
(68, 'Susan C. Richardson', 'Glass Block', 200.00, '2017-01-04'),
(69, 'David C. Jury', 'Casing Pipes', 500.00, '2016-12-27'),
(70, 'Lori C. Skinner', 'Glass PVC Rubber', 1800.00, '2016-12-30'),
(71, 'Shawn S. Derosa', 'Sony HTXT1 2.1-Channel TV', 180.00, '2017-01-03'),
(72, 'Karen A. McGee', 'Over-the-Ear Stereo Headphones ', 25.00, '2017-01-01'),
(73, 'Kristine B. McGraw', 'Tristar 10\" Round Copper Chef Pan with Glass Lid', 20.00, '2016-12-30'),
(74, 'Gary M. Porter', 'ROBO 3D R1 Plus 3D Printer', 600.00, '2017-01-02'),
(75, 'Sarah D. Hunter', 'Westinghouse Select Kitchen Appliances', 35.00, '2016-12-29'),
(76, 'Diane J. Thomas', 'SanDisk Ultra 32GB microSDHC', 12.00, '2017-01-05'),
(77, 'Helena J. Quillen', 'TaoTronics Dimmable Outdoor String Lights', 16.00, '2017-01-04'),
(78, 'Arlette G. Nathan', 'TaoTronics Bluetooth in-Ear Headphones', 25.00, '2017-01-03'),
(79, 'Ronald S. Vallejo', 'Scotchgard Fabric Protector, 10-Ounce, 2-Pack', 20.00, '2017-01-03'),
(80, 'Felicia L. Sorensen', 'Anker 24W Dual USB Wall Charger with Foldable Plug', 12.00, '2017-01-04'),
(81, 'David E. Gary', 'Shuttering Plywood', 1500.00, '2017-01-14'),
(82, 'Eddie M. Douglas', 'Aluminium Heavy Windows', 2000.00, '2017-01-08'),
(83, 'Oscar D. Scoggins', 'Plaster Of Paris', 150.00, '2016-12-29'),
(84, 'Clara C. Kulik', 'Spin Driller Machine', 350.00, '2016-12-30'),
(85, 'Christopher M. Victory', 'Shopping Trolley', 100.00, '2017-01-01'),
(86, 'Jessica G. Fischer', 'CCTV Camera', 800.00, '2017-01-02'),
(87, 'Roger R. White', 'Truck Tires', 2000.00, '2016-12-28'),
(88, 'Susan C. Richardson', 'Glass Block', 200.00, '2017-01-04'),
(89, 'David C. Jury', 'Casing Pipes', 500.00, '2016-12-27'),
(90, 'Lori C. Skinner', 'Glass PVC Rubber', 1800.00, '2016-12-30'),
(91, 'Shawn S. Derosa', 'Sony HTXT1 2.1-Channel TV', 180.00, '2017-01-03'),
(92, 'Karen A. McGee', 'Over-the-Ear Stereo Headphones ', 25.00, '2017-01-01'),
(93, 'Kristine B. McGraw', 'Tristar 10\" Round Copper Chef Pan with Glass Lid', 20.00, '2016-12-30'),
(94, 'Gary M. Porter', 'ROBO 3D R1 Plus 3D Printer', 600.00, '2017-01-02'),
(95, 'Sarah D. Hunter', 'Westinghouse Select Kitchen Appliances', 35.00, '2016-12-29'),
(96, 'Diane J. Thomas', 'SanDisk Ultra 32GB microSDHC', 12.00, '2017-01-05'),
(97, 'Helena J. Quillen', 'TaoTronics Dimmable Outdoor String Lights', 16.00, '2017-01-04'),
(98, 'Arlette G. Nathan', 'TaoTronics Bluetooth in-Ear Headphones', 25.00, '2017-01-03'),
(99, 'Ronald S. Vallejo', 'Scotchgard Fabric Protector, 10-Ounce, 2-Pack', 20.00, '2017-01-03'),
(100, 'Felicia L. Sorensen', 'Anker 24W Dual USB Wall Charger with Foldable Plug', 12.00, '2017-01-04'),
(101, 'David E. Gary', 'Shuttering Plywood', 1500.00, '2017-01-14'),
(102, 'Eddie M. Douglas', 'Aluminium Heavy Windows', 2000.00, '2017-01-08'),
(103, 'Oscar D. Scoggins', 'Plaster Of Paris', 150.00, '2016-12-29'),
(104, 'Clara C. Kulik', 'Spin Driller Machine', 350.00, '2016-12-30'),
(105, 'Christopher M. Victory', 'Shopping Trolley', 100.00, '2017-01-01'),
(106, 'Jessica G. Fischer', 'CCTV Camera', 800.00, '2017-01-02'),
(107, 'Roger R. White', 'Truck Tires', 2000.00, '2016-12-28'),
(108, 'Susan C. Richardson', 'Glass Block', 200.00, '2017-01-04'),
(109, 'David C. Jury', 'Casing Pipes', 500.00, '2016-12-27'),
(110, 'Lori C. Skinner', 'Glass PVC Rubber', 1800.00, '2016-12-30'),
(111, 'Shawn S. Derosa', 'Sony HTXT1 2.1-Channel TV', 180.00, '2017-01-03'),
(112, 'Karen A. McGee', 'Over-the-Ear Stereo Headphones ', 25.00, '2017-01-01'),
(113, 'Kristine B. McGraw', 'Tristar 10\" Round Copper Chef Pan with Glass Lid', 20.00, '2016-12-30'),
(114, 'Gary M. Porter', 'ROBO 3D R1 Plus 3D Printer', 600.00, '2017-01-02'),
(115, 'Sarah D. Hunter', 'Westinghouse Select Kitchen Appliances', 35.00, '2016-12-29'),
(116, 'Diane J. Thomas', 'SanDisk Ultra 32GB microSDHC', 12.00, '2017-01-05'),
(117, 'Helena J. Quillen', 'TaoTronics Dimmable Outdoor String Lights', 16.00, '2017-01-04'),
(118, 'Arlette G. Nathan', 'TaoTronics Bluetooth in-Ear Headphones', 25.00, '2017-01-03'),
(119, 'Ronald S. Vallejo', 'Scotchgard Fabric Protector, 10-Ounce, 2-Pack', 20.00, '2017-01-03'),
(120, 'Felicia L. Sorensen', 'Anker 24W Dual USB Wall Charger with Foldable Plug', 12.00, '2017-01-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `demo_post`
--
ALTER TABLE `demo_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `demo_post`
--
ALTER TABLE `demo_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
