-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2022 at 09:51 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `edit`
--

CREATE TABLE `edit` (
  `Rank` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `Product_ID` int(11) DEFAULT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `edit`
--

INSERT INTO `edit` (`Rank`, `id`, `Product_ID`, `Time`, `Note`) VALUES
(1, 1, 4, '2022-10-10 17:18:11', 'แก้ชื่อ'),
(2, 2, 3, '2022-10-10 17:18:11', 'แก้ราคา'),
(3, 2, 2, '2022-10-10 17:18:11', NULL),
(11, 1, 1, '2022-10-10 17:22:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `Order_ID` int(10) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `total_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`Order_ID`, `Time`, `total_price`) VALUES
(1, '2022-09-10 03:20:21', 13490),
(2, '2022-09-10 11:35:24', 24090),
(3, '2022-09-11 05:45:14', 14300),
(4, '2022-09-12 01:10:41', 48390),
(5, '2022-09-18 04:41:38', 2000),
(6, '2022-09-22 06:44:15', 12000),
(7, '2022-09-29 09:40:54', 2000),
(8, '2022-10-06 01:04:57', 3160),
(9, '2022-10-12 03:45:38', 590),
(10, '2022-10-18 09:05:56', 1250),
(11, '2022-10-21 20:48:09', 2750),
(12, '2022-10-30 06:48:32', 3960),
(13, '2022-11-08 11:02:41', 13990),
(14, '2022-11-10 09:49:25', 15500),
(15, '2022-11-13 13:11:51', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_ID` int(10) NOT NULL,
  `Product_type` varchar(255) NOT NULL,
  `Product_style` varchar(255) NOT NULL,
  `Product_info` text NOT NULL,
  `Product_num` int(10) NOT NULL,
  `Product_name` varchar(255) NOT NULL,
  `Product_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Product_type`, `Product_style`, `Product_info`, `Product_num`, `Product_name`, `Product_price`) VALUES
(1, 'เตียง', 'modern', 'เตียง 3x4x2 m.', 99, 'เตียงเดี่ยว 3x4x2 m.', 12000),
(2, 'โต๊ะ', 'modern', 'โต๊ะ 1x0.40x0.60 m', 97, 'โต๊ะทำงาน 100x40 cm', 2000),
(3, 'โต๊ะ', 'classic', 'โต๊ะ 1x1x0.76 m.', 99, 'โต๊ะอาหาร สไตร์ฝรั่งเศษ', 3000),
(4, 'เก้าอี้', 'minimal', 'เก้าอี้ 0.44x0.44x0.75 m', 100, 'เก้าอี้พับ 50x50x80 cm', 450),
(5, 'ของประดับ', 'vintage', 'โคมไฟ 0.22x0.28x0.38 m', 99, 'โคมไฟหัวเตียง เซรามิก 22 cm.', 1250),
(6, 'เตียง', 'vintage', 'เตียง 1.2x2x1.2 m.', 99, 'เตียง TA 3.5 ฟุต', 4900),
(7, 'เตียง', 'vintage', 'เตียง 1.8x2x1.3 m', 99, 'เตียงเดียว 6 ฟุต', 6400),
(8, 'เตียง', 'vintage', 'เตียง 2x2.12x0.7 m.', 99, 'เตียง 6 ฟุต', 7900),
(9, 'เตียง', 'vintage', 'เตียง 2.23x2.12x1.11 m', 99, 'เตียงนอน GENEVA 6ฟุต', 11490),
(10, 'เตียง', 'modern', 'เตียง 2.42x2.23x0.91 m', 98, 'เตียงนอน คอนเทมโพลารี่', 15500),
(11, 'เตียง', 'modern', 'เตียง 1.65x2.12x1.00 m', 100, 'Hewka เตียง 5 ฟุต', 8490),
(12, 'เตียง', 'modern', 'เตียง 1.9x2x1 m.', 100, 'เตียง 6 ฟุต Retno', 8900),
(13, 'เก้าอี้', 'modern', 'เก้าอี้ 0.40x0.46x0.81 m', 100, 'เก้าอี้ ขาไม้', 999),
(14, 'เก้าอี้', 'modern', 'เก้าอี้ 0.34x0.47x0.70 m', 96, 'เก้าอี้ ขาสั้น', 790),
(15, 'เก้าอี้', 'modern', 'เก้าอี้ 0.35x0.49x0.90 m', 100, 'เก้าอี้ ขาเหล็ก', 890),
(16, 'เก้าอี้', 'modern', 'เก้าอี้ 0.55x0.53x0.80 m', 96, 'เก้าอี้ เหล็ก', 990),
(17, 'เก้าอี้', 'minimal', 'เก้าอี้ 0.44x0.52x0.60 m', 100, 'เก้าอี้ ไม้ สวย ๆ ', 1300),
(18, 'เก้าอี้', 'minimal', 'เก้าอี้ 0.35x0.45x0.55 m', 99, 'เก้าอี้ ทรงเตี้ย', 690),
(19, 'เก้าอี้', 'minimal', 'เก้าอี้ 0.48x0.48x0.67 m', 100, 'เก้าอี้ โครงเหล็ก เก๋ ๆ ', 800),
(20, 'ของประดับ', 'minimal', 'แจกัน 0.095x0.095x0.15 m.', 100, 'แจกันหลอดแก้ว ', 490),
(21, 'ของประดับ', 'minimal', 'แจกัน 0.04x0.09x0.13 m', 99, 'แจกันแก้ว', 590),
(22, 'ของประดับ', 'minimal', 'แจกัน 0.04x0.15x22 m.', 100, 'แจกัน เซรามิก', 890),
(23, 'ของประดับ', 'minimal', 'แจกัน 0.08x0.08x0.08 m.', 94, 'แจกันแก้ว เล็ก ๆ', 390),
(24, 'ของประดับ', 'minimal', 'แจกัน 0.04x0.04x0.23 m', 98, 'แจกันเซรามิคพร้อมดอกไม้', 400),
(25, 'ของประดับ', 'vintage', 'แจกัน 0.40x0.40x0.80 m', 98, 'โคมไฟ LED ทรงเหลี่ยม', 2500),
(26, 'ของประดับ', 'vintage', 'แจกัน 0.05x0.23x0.46 m', 100, 'โคมไฟ ตั้งโต๊ะโบราณ', 2500),
(27, 'โต๊ะ', 'modern', 'โต๊ะ 1.50x0.60x0.75 m.', 100, 'โต๊ะ รุ่น KU', 1800),
(28, 'โต๊ะ', 'modern', 'โต๊ะ 1.50x0.60x0.75 m.', 100, 'โต๊ะ รุ่น EX', 6500),
(29, 'โต๊ะ', 'modern', 'โต๊ะ 0.80x0.80x0.75 m', 100, 'โต๊ะ Black Glass', 5490),
(30, 'โต๊ะ', 'modern', 'โต๊ะ 1.20x0.60x0.72 m', 100, 'โต๊ะทำงาน', 1490),
(31, 'โต๊ะ', 'modern', 'โต๊ะ 2.30x0.48x0.725 m ', 100, 'โต๊ะคอมทำงานเข้ามุม', 7900),
(32, 'โต๊ะ', 'classic', 'โต๊ะ 1.20x0.60x0.45 m', 100, 'โต๊ะกลาง', 2490),
(33, 'โต๊ะ', 'classic', 'โต๊ะ 0.80x0.43x0.85 m', 100, 'โต๊ะทำงานติดผนัง', 3990),
(34, 'โต๊ะ', 'classic', 'โต๊ะ 1.20x0.70x0.60-1.25 m', 96, 'โต๊ะทำงานปรับระดับ', 12000),
(35, 'โต๊ะ', 'classic', 'โต๊ะ 1x1x0.42 cm', 99, 'โต๊ะกลาง กระจก', 13990);

-- --------------------------------------------------------

--
-- Table structure for table `shoporder`
--

CREATE TABLE `shoporder` (
  `Rank` int(10) NOT NULL,
  `ID_Order` int(10) NOT NULL,
  `Status` varchar(255) NOT NULL,
  `Product_ID` int(10) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `id_customer` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shoporder`
--

INSERT INTO `shoporder` (`Rank`, `ID_Order`, `Status`, `Product_ID`, `qty`, `id_customer`) VALUES
(1, 1, 'paid', 2, 1, 4),
(2, 1, 'paid', 9, 1, 4),
(3, 2, 'wait', 6, 1, 4),
(4, 2, 'wait', 10, 1, 4),
(5, 2, 'wait', 3, 1, 4),
(6, 2, 'wait', 18, 1, 4),
(7, 3, 'wait', 7, 1, 4),
(8, 3, 'wait', 8, 1, 4),
(9, 4, 'wait', 23, 1, 4),
(10, 4, 'wait', 34, 4, 4),
(11, 5, 'wait', 2, 1, 4),
(12, 6, 'wait', 1, 1, 3),
(13, 7, 'wait', 2, 1, 3),
(14, 8, 'wait', 14, 4, 3),
(15, 9, 'wait', 21, 1, 3),
(16, 10, 'wait', 5, 1, 3),
(17, 11, 'wait', 23, 5, 5),
(18, 11, 'wait', 24, 2, 5),
(19, 12, 'wait', 16, 4, 5),
(20, 13, 'wait', 35, 1, 5),
(21, 14, 'wait', 10, 1, 5),
(22, 15, 'wait', 25, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(2552) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `wallet` int(11) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `urole` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstname`, `lastname`, `wallet`, `phone`, `address`, `urole`) VALUES
(1, 'Admin', '$2y$10$Y1Gnr.FjBoVc4jNtQt17m.sb0RM82Ct3uttTabu/ZvOyZ1ti2dfk6', 'Nutchanon', 'Chotikawanit', NULL, '0927454436', '99/18 กรุงเทพ', 'admin'),
(2, 'Admin2', '$2y$10$4Ud/0AgCdiB5EAnre.MgAuqFPI/pT9zfe6H08wlke4bWwp/NtYM5O', 'Thanatorn', 'Thaworason', NULL, '0934567891', '990/2555 กรุงเทพ', 'admin'),
(3, 'Geronimo', '$2y$10$RyohpqTPG5bcqW9mHDhN6uJQ9LI5yxVAzPhUa6Va8bDirrvqWH2HC', 'พานุพงษ์', 'ทองเพ็ชร์', NULL, '0944546574', '31 ถนนพิบูรณ์สงคราม', 'user'),
(4, 'Sempy', '$2y$10$r7a9oNM9eHQmv11D8EecC.JbGDUFjhnFVP0oXKMWFsbKuQzkHQ5ny', 'ทินกร', 'บุญทอง', NULL, '0825699339', 'บ้านเลขที่ 461 นนทบุรี ซอยวงสว่าง 11', 'user'),
(5, 'Jirapong', '$2y$10$7XPNuK7g5iDJQsEgFwU4P.CJHz7MhO96UYYiFeidg6MXYPq2DGqL2', 'จีระพงษ์', 'แสนโพธิ์', NULL, '0859264585', '31 กรุงเทพมหานคร เขตบางรัก', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `edit`
--
ALTER TABLE `edit`
  ADD PRIMARY KEY (`Rank`),
  ADD KEY `id` (`id`),
  ADD KEY `Product_ID` (`Product_ID`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_ID`);

--
-- Indexes for table `shoporder`
--
ALTER TABLE `shoporder`
  ADD PRIMARY KEY (`Rank`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `edit`
--
ALTER TABLE `edit`
  MODIFY `Rank` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `Order_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Product_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `shoporder`
--
ALTER TABLE `shoporder`
  MODIFY `Rank` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
