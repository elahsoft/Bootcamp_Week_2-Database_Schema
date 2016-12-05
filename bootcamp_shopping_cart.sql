-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2016 at 04:33 PM
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
  `cost` decimal(10,0) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bootcamp_shopping_cart_products`
--

INSERT INTO `bootcamp_shopping_cart_products` (`id`, `category_id`, `product_name`, `product_description`, `cost`, `created_at`, `status`) VALUES
(1, 1, 'GoPro HERO4 Black Edition +64GB SanDisk +2 Battery +30pcs ALL you need Pro Kit!', 'Condition:	\r\nNew: A brand-new, unused, unopened, undamaged item in its original packaging (where packaging is ... Read more\r\nBrand:	\r\nGoPro\r\nSeries:	GoPro HERO	Model:	\r\nHERO4\r\nAlternate UPCs:	818279013085, 818279013078	MPN:	\r\nCHDHX-401\r\nBundled Items:	Case or Bag, Data Cable, Extra Battery Charger, Extra Battery, Extra Memory, Tripod	Type:	Helmet/Action\r\nFeatures:	Wi-Fi Ready	Storage Type:	Removable (Card/Disc/Tape) Media Format:	microSD', '0', '2016-12-05 04:04:00', 1),
(2, 1, 'Men''s Akribos XXIV AK716 Multifunction Day Date Stainless Steel Mesh Watch', '\r\nCondition:	\r\nNew with tags: A brand-new, unused, and unworn item (including handmade items) in the original packaging (such as ... Read more\r\nBrand:	\r\nAkribos XXIV AK716\r\nFace Color:	Black	MPN:	\r\nAK716\r\nBand Type:	Stainless Steel Mesh	Movement:	Swiss Quartz\r\nYear of Manufacture:	2010-Now	Display:	Analog\r\nModel:	\r\nAK716\r\nCase Finish:	Polished Finish Stainless Steel Case\r\nCase Size:	42mm	Watch Shape:	Round\r\nStyle:	Sport	Water Resistance Rating:	30 m (3 ATM)\r\nGender:	Men''s	Case Color:	Black\r\nBand', '0', '2016-12-05 04:04:00', 1),
(3, 2, 'Skirt', 'Fashion Carribean flowing skirts', '0', '2016-12-05 04:20:00', 1),
(4, 2, 'Handbag', 'Dolce and Gabbana', '0', '2016-12-05 04:20:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bootcamp_shopping_cart_product_category`
--

CREATE TABLE `bootcamp_shopping_cart_product_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bootcamp_shopping_cart_product_category`
--

INSERT INTO `bootcamp_shopping_cart_product_category` (`id`, `category_name`, `created_at`, `status`) VALUES
(1, 'Electronics', '2016-12-05 03:54:00', 1),
(2, 'Fashion', '2016-12-05 03:54:00', 1),
(3, 'Motors', '2016-12-05 03:56:00', 1),
(4, 'Cell Phones and Accessories', '2016-12-05 03:56:00', 1),
(5, 'Baby Items', '2016-12-05 03:56:00', 1),
(6, 'Sporting Goods', '2016-12-05 03:56:00', 1),
(7, 'Home & Garden', '2016-12-05 03:56:00', 1),
(8, 'Collectibles & Art', '2016-12-05 03:56:00', 1);

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
  ADD KEY `status` (`status`),
  ADD KEY `cost` (`cost`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bootcamp_shopping_cart_product_category`
--
ALTER TABLE `bootcamp_shopping_cart_product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
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
