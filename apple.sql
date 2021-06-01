-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2021 at 07:29 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apple`
--

-- --------------------------------------------------------

--
-- Table structure for table `kontaktforma`
--

CREATE TABLE `kontaktforma` (
  `id` int(11) NOT NULL,
  `emri` tinytext NOT NULL,
  `mbiemri` varchar(255) NOT NULL,
  `gjinia` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `country_id` int(11) NOT NULL,
  `mesazhi` varchar(1024) NOT NULL,
  `datamodified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kontaktforma`
--

INSERT INTO `kontaktforma` (`id`, `emri`, `mbiemri`, `gjinia`, `email`, `country_id`, `mesazhi`, `datamodified`) VALUES
(1, 'egzon', 'thaqi', 'M', 'egzonthaqi@gmail.com', 0, 'asdsadasdasdasdasdasdasdasdasd', '2021-05-06 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `news_category`
--

CREATE TABLE `news_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(244) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_category`
--

INSERT INTO `news_category` (`category_id`, `category_name`) VALUES
(1, 'SmartPhones'),
(2, 'Watches'),
(3, 'MacBook'),
(4, 'Tablet'),
(5, 'Airpods');

-- --------------------------------------------------------

--
-- Table structure for table `news_country`
--

CREATE TABLE `news_country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(244) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news_country`
--

INSERT INTO `news_country` (`country_id`, `country_name`) VALUES
(1, 'Kosove'),
(2, 'Shqiperi'),
(3, 'Londer');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `posts_id` int(11) NOT NULL,
  `posts_title` varchar(255) NOT NULL,
  `posts_body` varchar(1055) NOT NULL,
  `image` varchar(1055) NOT NULL,
  `category_id` int(11) NOT NULL,
  `posts_author` tinytext NOT NULL,
  `datamodified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`posts_id`, `posts_title`, `posts_body`, `image`, `category_id`, `posts_author`, `datamodified`) VALUES
(1, 'SmartPhones', 'Iphone 12 Pro Max', 'https://images.macrumors.com/t/d05-TLqN6uiathc76QFR0tJ_z28=/400x0/filters:quality(90)/article-new/2019/10/iphone12-lineup-wide.jpg?lossy', 1, 'Egzon', '2021-05-07 19:39:17'),
(2, 'Watches', 'Watches', 'https://cdn.lifestyleasia.com/wp-content/uploads/sites/7/2020/09/16045531/Gear-New-Apple-Watch.jpg', 1, 'Qendrim', '2021-05-07 19:45:25'),
(3, 'MacBook', 'MacBook', 'https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/macbook-pro-13-og-202011?wid=600&hei=315&fmt=jpeg&qlt=95&.v=1604347427000', 1, 'Egzon', '2021-05-07 19:46:03'),
(4, 'Tablet', 'Tablet', 'https://freenews.live/wp-content/uploads/2020/08/ipad-8.jpg', 1, 'Qendrim', '2021-05-07 19:45:25'),
(5, 'Airpods', 'Airpods', 'https://target.scene7.com/is/image/Target/GUEST_6016b06d-e8d6-403a-9e1d-1938f45bb1f7?wid=488&hei=488&fmt=pjpeg', 1, 'Qendrim', '2021-05-07 19:46:03'),
(6, 'Iphone 12', 'Ky eshte smartphoni me i ri ne treg', 'https://cdn.shopify.com/s/files/1/0519/6143/0167/products/1_286e195e-30f1-4319-9b0c-26bcae656b4d.jpg?v=1611211505', 1, 'Egzoni', '2021-05-15 19:52:47'),
(7, 'macbook pro', 'MacBook', 'https://dohadeals.qa/wp-content/uploads/2020/12/16-1-800x800.jpg', 3, 'Qendrim', '2021-05-15 19:56:04'),
(8, 'Smartphone', 'Iphone 11 pro max', 'https://bazar360bd.com/wp-content/uploads/2016/03/iphone-11-pro-max-midnight-green.jpeg', 1, 'Qendrim', '2021-05-15 19:56:49'),
(9, 'Watches', 'watch 4', 'https://ee.co.uk/content/dam/everything-everywhere/images/SHOP/Devices/apple/Apple_Watch_Series_4/social_apple_watch_s4_800x800.jpg', 2, 'Qendrim', '2021-05-15 19:57:43'),
(10, 'tablet', 'tablet 4', 'https://ctd-thechristianpost.netdna-ssl.com/en/full/21434/ipad-air-2.png?p=40497&amp;w=760&amp;l=50&amp;t=40', 4, 'Qendrim', '2021-05-15 19:58:21'),
(11, 'airpods', 'Airpods', 'https://i.pinimg.com/originals/09/a4/db/09a4dbbbba8d10fb9373bb28ac539e9c.jpg', 5, 'Qendrim', '2021-05-15 19:58:51'),
(12, 'macbook pro', 'MacBook', 'https://switch.com.my/wp-content/uploads/2020/11/MacBook-Pro13-inch-Apple-M1-Chip-SG2.jpg', 3, 'Egzoni', '2021-05-15 20:00:40'),
(13, 'Watches', 'watch 5', 'https://www.mytrendyphone.eu/images/Apple-Watch-1-2-3-4-5-6-SE-Milanese-Loop-Strap-MYAN2ZM-A-40mm-Graphite-0190199714540-24092020-02-p.jpg', 2, 'Egzoni', '2021-05-15 20:01:08'),
(14, 'tablet', 'tablet', 'https://www.dialstar.eu/3492-thickbox_default/apple-ipad-air-2-32gb-3g-4g-grey-tablet.jpg', 4, 'Egzoni', '2021-05-15 20:02:14'),
(15, 'airpods', 'airpods', 'https://www.mytrendyphone.eu/images/3-in-1-Wireless-Charging-Station-W55-for-iPhone-AirPods-Apple-Watch-15W-2W-3W-USB-C-Black-06112020-01-p.jpg', 5, 'Egzoni', '2021-05-15 20:02:40'),
(16, 'macbook pro', 'asdasd', 'https://static.techspot.com/images/products/2016/laptops/org/2016-11-11-product-2.jpg', 3, 'Egzoni', '2021-05-15 21:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_username` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_role` int(11) NOT NULL,
  `datamodified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_username`, `user_email`, `user_password`, `user_role`, `datamodified`) VALUES
(2, 'Egzon', 'Thaqi', 'egzonthaqi@gmail.com', '$2y$10$2RQD3KVJe2CXeoKpiANwTu7bC0IuoAG1/Ul6VN/Fvjm.iIduDNXiq', 0, '2021-05-15 19:46:27'),
(3, 'Egzoni', 'Thaqi', 'egzonthaqi1@gmail.com', '$2y$10$rsUdyCrQufnOPWcSG7gneuxm4n02/XL.El6TBq.fw5jB4DiV48l56', 1, '2021-05-15 19:47:38'),
(4, 'Qendrim', 'Rexhepi', 'qendrimrexhepi@gmail.com', '$2y$10$GNwm2tJmlKnq1z7Rfc08PeXWXy/Aw/6dBDt5eX3i7uVxhkHCP2vtW', 0, '2021-05-15 19:53:53'),
(5, 'Qendrim', 'Rexhepii', 'qendrimi@gmail.com', '$2y$10$iggHw3BoeGMlyMUKdaP41O4JWj3yaOyh1E9bBGsdiFcCuMLVFWbmK', 1, '2021-05-15 19:55:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kontaktforma`
--
ALTER TABLE `kontaktforma`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_category`
--
ALTER TABLE `news_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `news_country`
--
ALTER TABLE `news_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`posts_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kontaktforma`
--
ALTER TABLE `kontaktforma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news_category`
--
ALTER TABLE `news_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news_country`
--
ALTER TABLE `news_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `posts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
