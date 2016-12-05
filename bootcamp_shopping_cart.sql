-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2016 at 03:28 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bootcamp_shopping_cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `bootcamp_shopping_cart_products`
--

CREATE TABLE `bootcamp_shopping_cart_products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(300) NOT NULL,
  `product_description` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bootcamp_shopping_cart_product_category`
--

CREATE TABLE `bootcamp_shopping_cart_product_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `created_at` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bootcamp_shopping_cart_products`
--
ALTER TABLE `bootcamp_shopping_cart_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `product_name` (`product_name`),
  ADD KEY `product_description` (`product_description`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `bootcamp_shopping_cart_product_category`
--
ALTER TABLE `bootcamp_shopping_cart_product_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `status` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bootcamp_shopping_cart_products`
--
ALTER TABLE `bootcamp_shopping_cart_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bootcamp_shopping_cart_product_category`
--
ALTER TABLE `bootcamp_shopping_cart_product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bootcamp_shopping_cart_products`
--
ALTER TABLE `bootcamp_shopping_cart_products`
  ADD CONSTRAINT `bootcamp_shopping_cart_products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `bootcamp_shopping_cart_product_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
