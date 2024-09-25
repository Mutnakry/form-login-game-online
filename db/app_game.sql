-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2024 at 06:47 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_game`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `names` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `userNote` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `userUpdate` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `names`, `image`, `userNote`, `created_at`, `updated_at`, `deleted_at`, `userUpdate`) VALUES
(1, 'Football', '1725597393346_bool2.jpg', 'sale', '2024-09-05 02:09:25', '2024-09-06 04:36:33', NULL, 'admin'),
(2, 'firshs', '1725597101905_firsh2.jpg', 'sale', '2024-09-05 02:11:07', '2024-09-06 04:31:41', NULL, 'admin'),
(3, 'slote', '1725597132772_image.jpg', 'sale', '2024-09-05 02:13:39', '2024-09-06 04:32:12', NULL, 'admin'),
(4, 'Loto', '1725595306350_slot.jpg', 'sale', '2024-09-05 02:14:01', '2024-09-06 04:01:46', NULL, 'admin'),
(5, 'Game', '1725597174809_image3.jpg', 'admin', '2024-09-05 02:19:09', '2024-09-06 04:32:54', NULL, 'admin'),
(7, 'Six', '1725595364306_bool3.jpg', 'admin', '2024-09-05 03:47:13', '2024-09-06 04:02:44', NULL, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `names` varchar(255) NOT NULL,
  `expice` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `original_price` decimal(10,2) DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `profit` decimal(10,2) DEFAULT NULL,
  `discount` decimal(5,2) DEFAULT 0.00,
  `status` tinyint(1) DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `userNote` text DEFAULT NULL,
  `userUpdate` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `discription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `names`, `expice`, `category_id`, `qty`, `original_price`, `sale_price`, `profit`, `discount`, `status`, `image`, `userNote`, `userUpdate`, `created_at`, `updated_at`, `discription`) VALUES
(1, 'Bool', '2024-08-01', 2, 3, 500.00, 1000.00, 500.00, 0.00, 1, '1725597315652_bool.jpg', 'admin', 'admin', '2024-09-05 03:56:20', '2024-09-06 08:04:59', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(2, 'Slode', '2024-08-01', 2, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725596750549_download.jpg', 'admin', 'admin', '2024-09-05 03:57:56', '2024-09-06 04:25:50', 'ទឹកដោះជូរ គ្រប់រសជាតិ១០០ក្រាម'),
(3, 'Firsh', '2024-08-01', 2, 3, 500.00, 1000.00, 500.00, 200.00, 1, '1725596819366_firsh.jpg', 'admin', 'admin', '2024-09-05 03:58:23', '2024-09-06 04:26:59', ' អង្គរមៀល'),
(5, 'Football ', '2024-08-01', 1, 3, 500.00, 1000.00, 500.00, 125.00, 1, '1725596873268_bool5.jpg', 'admin', 'admin', '2024-09-05 03:57:56', '2024-09-06 05:54:13', ' អង្គរមៀល'),
(6, 'football', '2024-08-01', 1, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725607204649_bool4.jpg', 'sale', NULL, '2024-09-06 07:20:04', '2024-09-06 07:20:04', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(7, 'Ball Will', '2024-08-01', 1, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725607304318_bool.jpg', 'sale', NULL, '2024-09-06 07:21:44', '2024-09-06 07:21:44', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(8, 'Mikasa', '2024-08-01', 1, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725607347835_bool2.jpg', 'sale', NULL, '2024-09-06 07:22:27', '2024-09-06 07:22:27', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(9, 'Mikasa', '2024-08-01', 3, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725607411632_slot.jpg', 'sale', NULL, '2024-09-06 07:23:31', '2024-09-06 07:23:31', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(10, 'Slote', '2024-08-01', 3, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725607426958_image2.jpg', 'sale', NULL, '2024-09-06 07:23:46', '2024-09-06 07:23:46', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(11, 'Slote', '2024-08-01', 3, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725607445810_image3.jpg', 'sale', NULL, '2024-09-06 07:24:05', '2024-09-06 07:24:05', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(12, 'Loto', '2024-08-01', 3, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725607802560_images.jpg', 'sale', NULL, '2024-09-06 07:30:02', '2024-09-06 07:30:02', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(13, 'Loto play', '2024-08-01', 3, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725607817320_sexy-girl-png.png', 'sale', NULL, '2024-09-06 07:30:17', '2024-09-06 07:30:17', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(14, 'Loto play', '2024-08-01', 4, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725607838890_casino-token.png', 'sale', NULL, '2024-09-06 07:30:38', '2024-09-06 07:30:38', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(15, 'girls', '2024-08-01', 4, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725607859940_loto11.png', 'sale', NULL, '2024-09-06 07:30:59', '2024-09-06 07:30:59', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(16, 'girls sixsy', '2024-08-01', 4, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725607878816_slot.jpg', 'sale', NULL, '2024-09-06 07:31:18', '2024-09-06 07:31:18', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(17, 'girls sixsy', '2024-08-01', 7, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725607919762_slot.jpg', 'sale', NULL, '2024-09-06 07:31:59', '2024-09-06 07:31:59', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(18, 'girls sixsy 2', '2024-08-01', 7, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725607930620_sexy-girl-png.png', 'sale', NULL, '2024-09-06 07:32:10', '2024-09-06 07:32:10', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(19, 'girls sixsy 3', '2024-08-01', 7, 3, 500.00, 1000.00, 500.00, 500.00, 1, '1725607940159_loto11.png', 'sale', NULL, '2024-09-06 07:32:20', '2024-09-06 07:49:15', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(20, 'girls sixsy 4', '2024-08-01', 7, 3, 500.00, 1000.00, 500.00, 500.00, 1, '1725607952729_images.jpg', 'sale', NULL, '2024-09-06 07:32:32', '2024-09-06 07:49:08', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(21, 'girls sixsy 5', '2024-08-01', 7, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725607968195_bool3.jpg', 'sale', NULL, '2024-09-06 07:32:48', '2024-09-06 07:32:48', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(22, 'girls sixsy 5', '2024-08-01', 5, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725607991952_drinks.png', 'sale', NULL, '2024-09-06 07:33:11', '2024-09-06 07:33:11', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(23, 'game', '2024-08-01', 5, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725608005890_Ball Pool.jpg', 'sale', NULL, '2024-09-06 07:33:25', '2024-09-06 07:33:25', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(24, 'game', '2024-08-01', 5, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725608022764_Candy Crush Saga.jpg', 'sale', NULL, '2024-09-06 07:33:42', '2024-09-06 07:33:42', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(25, 'game', '2024-08-01', 7, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725608150155_bool.jpg', 'sale', NULL, '2024-09-06 07:35:50', '2024-09-06 07:36:58', 'https://t.me/+Qy4EAlerLTRkMWFl'),
(26, 'girls six', '2024-08-01', 7, 3, 500.00, 1000.00, 500.00, 50.00, 1, '1725608175168_download.jpg', 'sale', NULL, '2024-09-06 07:36:15', '2024-09-06 07:37:03', 'https://t.me/+Qy4EAlerLTRkMWFl');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `names` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `rol` enum('manager','admin','sale','user') DEFAULT 'user',
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `delete_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `names`, `phone`, `pass`, `rol`, `create_at`, `update_at`, `delete_at`) VALUES
(1, 'nakry', '0965752080', '$2a$08$ohwicOPTxihrbsrB9ZSCue9Ic/Jt0aOu1tnlH2U6mwm4IWg6V/HX6', 'user', '2024-09-04 06:42:36', '2024-09-04 07:14:30', NULL),
(3, 'nakry', '0897346234', '$2a$08$.5zZkj7AI6nbGw/MTzS1f.wT5faS0RSwzbtF2oyDgWbXTfLsR3bei', 'user', '2024-09-04 08:03:01', '2024-09-04 08:03:01', NULL),
(4, 'admin', '096', '$2a$08$8DtaUog4Re/X7XshEJqYI.uY51qAGu5sv/gSXlY3gjkjyIQAFHtQi', 'user', '2024-09-04 08:20:35', '2024-09-04 08:20:35', NULL),
(5, '123', '0987654321', '$2a$08$6925t94vhmSuY2IC2UzPBOjJ7LujprFzOz8TGzYb0VWCeP88rpIja', 'user', '2024-09-04 09:13:20', '2024-09-04 09:13:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_email`, `user_password`, `created_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2a$08$el8mpG5LfI3piwbAB/kDguyfuXV.nDU2q9DvT7jXDDzeJLw97wJHm', '2024-09-23 12:28:57'),
(2, 'nakry', 'nakry@gmail.com', '$2a$08$ebwNHXmYN14UQ6AqmTmI3.7kVxc54F.nAH0hrLduqgZJvmwBXWcRS', '2024-09-23 12:58:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
