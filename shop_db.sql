-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2022 at 10:27 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `image`, `quantity`) VALUES
(50, 1, 'THE HOOD', '20', 'product2.jpg', 4),
(51, 1, 'MANILA', '18', 'product4.jpg', 1),
(52, 1, 'DRONE HUSTLE', '25', 'product5.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `limited`
--

CREATE TABLE `limited` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `limited`
--

INSERT INTO `limited` (`id`, `name`, `price`, `image`) VALUES
(2, 'UNFRIEND CO. BLACK', '39', 'product15.jpg'),
(3, 'UNDERDOG TEE - DBTK', '39', 'product14.jpg'),
(4, 'HIGHMINDS - ARMED', '39', 'product13.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(100) NOT NULL,
  `flat` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pin_code` int(10) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `total_price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `number`, `email`, `method`, `flat`, `street`, `city`, `state`, `country`, `pin_code`, `total_products`, `total_price`) VALUES
(1, 'sajhdsajdh', '217817328', 'sdhsajdahj@gmail.com', 'cash on delivery', 'sadsadsd', 'sadasdsad', 'sadsadasd', 'sadsadsad', 'sadsadad', 2134, 'The Hood Shirt (1) , Drone Hustle  (1) , Money Hustle (1) , Manila By The Hood (1) , The Champions Shirt (1) , Robot Samurai Shirt (1) ', 135),
(2, 'sajhdsajdh', '217817328', 'sdhsajdahj@gmail.com', 'cash on delivery', 'sadsadsd', 'sadasdsad', 'sadsadasd', 'sadsadsad', 'sadsadad', 2134, 'The Hood Shirt (1) , Drone Hustle  (1) , Money Hustle (1) , Manila By The Hood (1) , The Champions Shirt (1) , Robot Samurai Shirt (1) ', 135),
(3, 'charles', '09078573913', 'charles18barredo@gmail.com', 'cash on delivery', '152 macabalo st.', 'caloocan', 'Maypajo', 'Metro Manila', 'Philippines', 1400, 'The Hood Shirt (1) , Drone Hustle  (1) , Money Hustle (1) , Manila By The Hood (1) , The Champions Shirt (1) , Robot Samurai Shirt (2) ', 155),
(4, 'Charles', '09078573913', 'charles18barredo@gmail.com', 'cash on delivery', '152 ', 'Macabalo St', 'Caloocan', 'Metro Manila', 'Philippines', 1400, 'Money Hustle (1) , The Champions Shirt (4) , Robot Samurai Shirt (2) ', 188),
(5, 'cnaskdha', '984194719', 'sjxabsjasbd@gmail.com', 'cash on delivery', 'sndjandasjn', 'sajdnasjkdnasdj', 'csajdbsaj', 'asdbsakjdba', 'sajdbsjkdba', 21313, 'The Hood Shirt (1) ', 20);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(8, 'ROBOT SAMURAI', '20', 'product1.jpg'),
(9, 'THE HOOD', '20', 'product2.jpg'),
(10, 'THE CHAMPIONS', '32', 'product3.jpg'),
(11, 'MANILA', '18', 'product4.jpg'),
(12, 'DRONE HUSTLE', '25', 'product5.jpg'),
(13, 'MONEY HUSTLE', '20', 'product6.jpg'),
(14, 'DRINK BY THE HOOD', '20', 'product7.jpg'),
(15, 'SUMMER VIBES', '15', 'product8.jpg'),
(16, 'ROBOT SAMURAI (White)', '20', 'product9.jpg'),
(17, 'LSD BY THE HOOD', '23', 'product10.jpg'),
(18, 'RETRO VIBES', '20', 'product11.jpg'),
(19, 'THE HOOD VINTAGE', '25', 'product12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`) VALUES
(1, 'charles', 'charles18@gmail.com', 'a5410ee37744c574ba5790034ea08f79'),
(2, 'carla', 'carla@gmail.com', '1fa4a2211b4e290f2a066de6b84187ec'),
(3, 'alysa torres', 'alysapayat@gmail.com', '539da6c7315a75f531e7806d5657e46f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `limited`
--
ALTER TABLE `limited`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `limited`
--
ALTER TABLE `limited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
