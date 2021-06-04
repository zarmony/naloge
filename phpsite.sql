-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 04, 2021 at 11:06 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `serial` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `phone` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`serial`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guestbook`
--

DROP TABLE IF EXISTS `guestbook`;
CREATE TABLE IF NOT EXISTS `guestbook` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Ime` varchar(50) NOT NULL,
  `eposta` varchar(50) NOT NULL,
  `sporocilo` text NOT NULL,
  `datum` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `guestbook`
--

INSERT INTO `guestbook` (`id`, `Ime`, `eposta`, `sporocilo`, `datum`) VALUES
(1, 'miki', 'mikec.matic96@gmail.com', 'rwertwrt', '2021-05-16 11:04:24'),
(2, 'qew', 'qwe', 'ewq', '2021-05-22 21:02:13'),
(3, '', '', '', '2021-05-22 21:28:22'),
(4, 'matic', 'mikec.matic96@gmail.com', 'iu', '2021-05-22 21:28:45'),
(5, 'miki', 'mikec.matic96@gmail.com', 'ui', '2021-05-22 21:28:50'),
(6, 'zarm', 'mikec.matic96@gmail.com', 'es', '2021-05-22 21:29:36'),
(7, 'miki', 'mikec.matic96@gmail.com', 'dela', '2021-05-22 21:33:55'),
(8, 'weq', 'limona.pokovc@gmail.com', 'ewqweq', '2021-06-03 17:43:30'),
(9, 'matic mikec', 'limona.pokovc@gmail.com', 'rzrzur', '2021-06-03 17:46:37');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `password`) VALUES
(8, 'matic', '0e17b3dd08b250adecf294dfa7a836f5');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `serial` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `customerid` int(11) NOT NULL,
  PRIMARY KEY (`serial`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE IF NOT EXISTS `order_detail` (
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `serial` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `description` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `price` float NOT NULL,
  `picture` varchar(80) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`serial`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`serial`, `name`, `description`, `price`, `picture`) VALUES
(1, 'View Sonic LCD', '19\" View Sonic Black LCD, with 10 months warranty', 250, 'images/lcd.jpg'),
(2, 'IBM CDROM Drive', 'IBM CDROM Drive', 80, 'images/cdrom-drive.jpg'),
(3, 'Laptop Charger', 'Dell Laptop Charger with 6 months warranty', 50, 'images/charger.jpg'),
(4, 'Seagate Hard Drive', '80 GB Seagate Hard Drive in 10 months warranty', 40, 'images/hard-drive.jpg'),
(5, 'Atech Mouse', 'Black colored laser mouse. No warranty', 5, 'images/mouse.jpg'),
(6, 'Nokia 5800', 'Nokia 5800 XpressMusic is a mobile device with 3.2\" widescreen display brings photos, video clips and web content to life', 299, 'images/mobile.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblphotos`
--

DROP TABLE IF EXISTS `tblphotos`;
CREATE TABLE IF NOT EXISTS `tblphotos` (
  `photoID` int(11) NOT NULL AUTO_INCREMENT,
  `photoName` varchar(30) NOT NULL,
  `category` varchar(20) NOT NULL,
  `active` int(1) NOT NULL,
  PRIMARY KEY (`photoID`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblphotos`
--

INSERT INTO `tblphotos` (`photoID`, `photoName`, `category`, `active`) VALUES
(10, 'Monitor HD', 'Monitor', 1),
(11, 'HiÅ¡ni telefon', 'telefoni', 1),
(12, 'TV', 'TV', 1),
(13, 'Fotoaparat', 'Fotoaparti', 1),
(14, 'PisarniÅ¡ki telefon', 'telefoni', 1),
(15, 'PisarniÅ¡ki telefon (bel)', 'telefoni', 1),
(16, 'Video kamera 2', 'Kamere', 1),
(17, 'Fotoaparat (modri)', 'Fotoaparti', 1),
(18, 'Fotoaparat (Ärni)', 'fo', 1),
(19, 'tv veÄji', 'TV', 1),
(20, 'Monitor HD 2', 'Monitorji', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
