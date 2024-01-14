-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 02:25 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `active`) VALUES
(6, 'minuman', 1),
(7, 'pisang goreng', 1),
(12, 'Burgers', 1),
(13, 'Pizza', 1),
(14, 'Pasta', 1),
(15, 'kentang goreng', 1),
(16, 'Mei', 1),
(17, 'kopi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `service_charge_value` varchar(255) NOT NULL,
  `vat_charge_value` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `currency` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `company_name`, `service_charge_value`, `vat_charge_value`, `address`, `phone`, `country`, `message`, `currency`) VALUES
(1, 'cafe malang', '3', '13', 'malang', '08162277326', 'Indonesia', 'Manajemen cafe codeigniter<br>', 'IDR');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Super Administrator', 'a:32:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createStore\";i:9;s:11:\"updateStore\";i:10;s:9:\"viewStore\";i:11;s:11:\"deleteStore\";i:12;s:11:\"createTable\";i:13;s:11:\"updateTable\";i:14;s:9:\"viewTable\";i:15;s:11:\"deleteTable\";i:16;s:14:\"createCategory\";i:17;s:14:\"updateCategory\";i:18;s:12:\"viewCategory\";i:19;s:14:\"deleteCategory\";i:20;s:13:\"createProduct\";i:21;s:13:\"updateProduct\";i:22;s:11:\"viewProduct\";i:23;s:13:\"deleteProduct\";i:24;s:11:\"createOrder\";i:25;s:11:\"updateOrder\";i:26;s:9:\"viewOrder\";i:27;s:11:\"deleteOrder\";i:28;s:10:\"viewReport\";i:29;s:13:\"updateCompany\";i:30;s:11:\"viewProfile\";i:31;s:13:\"updateSetting\";}'),
(4, 'Members', 'a:9:{i:0;s:9:\"viewStore\";i:1;s:11:\"deleteStore\";i:2;s:9:\"viewTable\";i:3;s:11:\"deleteTable\";i:4;s:12:\"viewCategory\";i:5;s:11:\"viewProduct\";i:6;s:11:\"createOrder\";i:7;s:11:\"updateOrder\";i:8;s:9:\"viewOrder\";}'),
(5, 'Staff', 'a:6:{i:0;s:9:\"viewTable\";i:1;s:11:\"viewProduct\";i:2;s:11:\"createOrder\";i:3;s:11:\"updateOrder\";i:4;s:9:\"viewOrder\";i:5;s:11:\"viewProfile\";}'),
(6, 'Manager', 'a:19:{i:0;s:8:\"viewUser\";i:1;s:11:\"createGroup\";i:2;s:11:\"updateGroup\";i:3;s:9:\"viewGroup\";i:4;s:11:\"deleteGroup\";i:5;s:9:\"viewStore\";i:6;s:11:\"createTable\";i:7;s:11:\"updateTable\";i:8;s:9:\"viewTable\";i:9;s:11:\"deleteTable\";i:10;s:14:\"updateCategory\";i:11;s:13:\"createProduct\";i:12;s:13:\"updateProduct\";i:13;s:11:\"viewProduct\";i:14;s:13:\"deleteProduct\";i:15;s:9:\"viewOrder\";i:16;s:11:\"deleteOrder\";i:17;s:10:\"viewReport\";i:18;s:11:\"viewProfile\";}'),
(7, 'Cashier', 'a:8:{i:0;s:8:\"viewUser\";i:1;s:11:\"createOrder\";i:2;s:11:\"updateOrder\";i:3;s:9:\"viewOrder\";i:4;s:11:\"deleteOrder\";i:5;s:10:\"viewReport\";i:6;s:11:\"viewProfile\";i:7;s:13:\"updateSetting\";}');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge_amount` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `table_id` int(11) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge_amount`, `vat_charge_rate`, `vat_charge_amount`, `discount`, `net_amount`, `user_id`, `table_id`, `paid_status`, `store_id`) VALUES
(1, 'CDSTRO-17AD', '1621937009', '14.00', '', '0', '13', '1.82', '0', '15.82', 1, 3, 1, 0),
(2, 'CDSTRO-E230', '1621941718', '6.00', '', '0', '13', '0.78', '0', '6.78', 1, 6, 1, 0),
(3, 'CDSTRO-32CD', '1621951601', '9.00', '3', '0.27', '13', '1.17', '0', '10.44', 1, 30, 2, 0),
(4, 'CDSTRO-D1E6', '1621954896', '29.79', '3', '0.89', '13', '3.87', '0', '34.55', 1, 23, 2, 0),
(5, 'CDSTRO-8C4D', '1621958450', '36.44', '3', '1.09', '13', '4.74', '1', '41.27', 1, 12, 1, 0),
(6, 'CDSTRO-9507', '1621960539', '18.99', '3', '0.57', '13', '2.47', '0', '22.03', 1, 24, 1, 0),
(7, 'CDSTRO-8B2C', '1621962871', '44.34', '3', '1.33', '13', '5.76', '1', '50.43', 1, 37, 1, 0),
(8, 'CDSTRO-0E73', '1621963107', '9.85', '3', '0.30', '13', '1.28', '0', '11.43', 5, 33, 1, 16),
(9, 'CDSTRO-E2A5', '1689226132', '5004.00', '3', '150.12', '13', '650.52', '', '5804.64', 1, 1, 2, 0),
(10, 'CDSTRO-53F5', '1689226278', '5000.00', '3', '150.00', '13', '650.00', '', '5800.00', 1, 8, 2, 0),
(11, 'CDSTRO-9ACE', '1689226292', '5000.00', '3', '150.00', '13', '650.00', '', '5800.00', 1, 9, 2, 0),
(12, 'CDSTRO-B9A0', '1689226400', '5000.00', '3', '150.00', '13', '650.00', '', '5800.00', 1, 3, 2, 0),
(13, 'CDSTRO-CD7A', '1689229218', '5000.00', '3', '150.00', '13', '650.00', '', '5800.00', 1, 5, 2, 0),
(14, 'CDSTRO-F3A1', '1689229385', '5000.00', '3', '150.00', '13', '650.00', '', '5800.00', 1, 18, 2, 0),
(15, 'CDSTRO-A2EE', '1689230433', '15000.00', '3', '450.00', '13', '1950.00', '', '17400.00', 1, 2, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `qty`, `rate`, `amount`) VALUES
(6, 1, 2, '2', '5', '10.00'),
(7, 1, 1, '3', '4', '4.00'),
(8, 2, 3, '2', '3', '6.00'),
(9, 3, 5, '1', '6', '6.00'),
(10, 3, 3, '2', '3', '3.00'),
(11, 4, 19, '2', '7.95', '15.90'),
(12, 4, 16, '2', '1.89', '1.89'),
(13, 4, 9, '1', '12', '12.00'),
(18, 5, 23, '2', '10.30', '20.60'),
(19, 5, 19, '1', '7.95', '7.95'),
(20, 5, 16, '2', '1.89', '1.89'),
(21, 5, 5, '1', '6', '6.00'),
(24, 6, 12, '1', '9', '9.00'),
(25, 6, 15, '1', '9.99', '9.99'),
(33, 7, 24, '2', '9.85', '19.70'),
(34, 7, 25, '1', '5.10', '5.10'),
(35, 7, 18, '1', '8.95', '8.95'),
(36, 7, 16, '3', '1.89', '1.89'),
(37, 7, 8, '2', '1.70', '1.70'),
(38, 7, 2, '1', '5', '5.00'),
(39, 7, 4, '2', '2', '2.00'),
(41, 8, 24, '1', '9.85', '9.85'),
(42, 9, 26, '1', '5000', '5000.00'),
(43, 9, 1, '1', '4', '4.00'),
(44, 10, 26, '1', '5000', '5000.00'),
(45, 11, 26, '1', '5000', '5000.00'),
(46, 12, 26, '1', '5000', '5000.00'),
(47, 13, 26, '1', '5000', '5000.00'),
(48, 14, 26, '1', '5000', '5000.00'),
(49, 15, 1, '1', '15000', '15000.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` text NOT NULL,
  `store_id` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `store_id`, `name`, `price`, `description`, `image`, `active`) VALUES
(1, '[\"16\"]', '[\"1\"]', 'mei', '15000', '<p>This is a demo test</p>', '<p>The upload path does not appear to be valid.</p>', 1),
(2, 'null', '[\"1\"]', 'kopi', '5000', '<p>\r\n\r\n<b></b>Kopi&nbsp;<b></b>is an Mkopi dari berbagai daerah.<br></p>', '<p>The upload path does not appear to be valid.</p>', 1),
(26, '[\"17\"]', '[\"3\"]', 'Kopi hitam', '5000', '<p>terbuat dari biji kopi hitam terbaik<br></p>', '<p>The upload path does not appear to be valid.</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(1, 'cafetaria malang', 1),
(2, 'ceria cafe', 1),
(3, 'malang cafe', 1),
(4, 'malang cafetaria', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `available` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `table_name`, `capacity`, `available`, `active`, `store_id`) VALUES
(1, 'T 10', '4', 2, 1, 1),
(2, 'T 11', '6', 2, 1, 1),
(3, 'T 12', '4', 2, 1, 1),
(4, 'P4', '2', 1, 1, 2),
(5, 'P6', '4', 2, 1, 2),
(6, 'P12', '4', 1, 1, 2),
(7, 'C1', '4', 1, 1, 3),
(8, 'C2', '4', 2, 1, 3),
(9, 'C3', '', 2, 1, 3),
(10, 'BG4', '2', 1, 1, 4),
(11, 'BG5', '4', 1, 1, 4),
(12, 'BG8', '6', 1, 1, 4),
(13, 'TK4', '4', 1, 1, 5),
(14, 'TK46', '4', 1, 1, 5),
(15, 'TK10', '6', 1, 1, 5),
(16, 'PT2', '4', 1, 1, 6),
(17, 'PT4', '4', 1, 1, 6),
(18, 'SR1', '4', 2, 1, 7),
(19, 'SR4', '6', 1, 1, 7),
(20, 'TCC5', '4', 1, 1, 8),
(21, 'TCC9', '', 1, 1, 8),
(22, 'M15', '6', 1, 1, 9),
(23, 'M20', '8', 2, 1, 9),
(24, 'CCR5', '4', 1, 1, 10),
(26, 'FG5', '6', 1, 1, 11),
(27, 'FG8', '8', 1, 1, 11),
(28, 'DP2', '4', 1, 1, 12),
(29, 'DP3', '8', 1, 1, 12),
(30, 'FR15', '4', 2, 1, 13),
(31, 'FR19', '8', 1, 1, 13),
(32, 'FR20', '2', 1, 1, 13),
(33, 'ER4', '2', 1, 1, 16),
(34, 'ER6', '4', 1, 1, 16),
(35, 'ER8', '6', 1, 1, 16),
(36, 'HK8', '4', 1, 1, 15),
(37, 'ZE9', '6', 1, 1, 14),
(38, 'TM', '10', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`, `store_id`) VALUES
(1, 'admin', '$2y$10$7HpMJOYDc7QyaRfJX5exJuQSi2U/fB7qgRLACu.1TMg7snJNf7Mim', 'admin@gmail.com', 'Will', 'Williams', '80789998', 1, 0),
(2, 'kenny', '$2y$10$QQESnj3B3Q3nb9IBuZwZE..rmAJPUzz0DWlNM8zCydju432BlyjuO', 'kennyw@gmail.com', 'Kenny', 'Waldrom', '7545554540', 1, 1),
(3, 'liamoore', '$2y$10$ug9KuKmpgY1ck0tuzjxjU.rROEkaFCloTTZGjMhRzugMZA14bZSdC', 'liam@gmail.com', 'Liam', 'Moore', '7400002140', 1, 1),
(4, 'veronica', '$2y$10$J4/hvDs/.rW8nrd8N9kfuuh0Msh4djj6LyhQvG3l8/9clc7ge7At.', 'veronica@gmail.com', 'Veronica', 'Lyle', '7850002680', 2, 2),
(5, 'donna', '$2y$10$uhWPHza2qiKtFKS3IKbIyeblUBXPoJWbwyWCuju7ukCTAcm2oncZO', 'donna@gmail.com', 'Donna', 'Edwards', '7025556960', 2, 16);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 2, 4),
(3, 3, 4),
(4, 4, 6),
(5, 5, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
