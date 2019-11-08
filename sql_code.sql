-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2019 at 01:55 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_db`
--
CREATE DATABASE IF NOT EXISTS `api_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `api_db`;
--
-- Database: `mrtechspecs`
--
CREATE DATABASE IF NOT EXISTS `mrtechspecs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mrtechspecs`;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `mname` varchar(20) NOT NULL,
  `headquarters` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` VALUES('Apple', 'Cupertino, California, United States');
INSERT INTO `manufacturer` VALUES('Google', 'Mountain View, California, United States');
INSERT INTO `manufacturer` VALUES('Huawei', 'Shenzhen, China');
INSERT INTO `manufacturer` VALUES('Samsung', 'Seoul, South Korea');
INSERT INTO `manufacturer` VALUES('Sony', 'Minato, Tokyo, Japan');

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `id` varchar(30) NOT NULL,
  `displayType` varchar(35) DEFAULT NULL,
  `displayResolution` varchar(20) DEFAULT NULL,
  `displaySize` varchar(20) DEFAULT NULL,
  `selfieCamera` varchar(45) DEFAULT NULL,
  `mainCamera` varchar(80) DEFAULT NULL,
  `mname` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `technology` varchar(30) DEFAULT NULL,
  `weight` varchar(30) DEFAULT NULL,
  `sound` varchar(30) DEFAULT NULL,
  `os` varchar(20) DEFAULT NULL,
  `battery` varchar(40) DEFAULT NULL,
  `productionYear` int(11) DEFAULT NULL,
  `imgSource` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` VALUES('galaxyA9', 'Super AMOLED, 16M colors', '1080 x 2220 pixels', '6.3 inches', '24MP, f/2.0', 'Quad Camera: 24 MP f/1.7, 8 MP f/2.4, 10 MP f/2.4 and 5 MP f/2.2', 'Samsung', 'Samsung Galaxy A9', 'GSM / HSPA / LTE', '183g (6.46 oz)', 'Single Speaker', 'Android 9 (One UI)', 'Non-removable Li-ion 3800 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78940995/fee_786_587_png/SAMSUNG-Galaxy-A9-%282018%29-128-GB-Bubblegum-Pink-Dual-SIM');
INSERT INTO `phone` VALUES('galaxyNote8', 'Super AMOLED, 16M colors', '1440 x 2960 pixels', '6.3 inches', '8MP, f/1.7', 'Dual 12MP f/1.5-2.4', 'Samsung', 'Samsung Galaxy Note 8', 'GSM / HSPA / LTE', '195 g', 'Stereo Speakers', 'Android 9 (One UI)', 'Non-removable Li-ion 3300 mAh battery', 2017, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78145272/fee_786_587_png/SAMSUNG-Galaxy-Note8-64-GB-Midnight-Black-');
INSERT INTO `phone` VALUES('galaxyNote9', 'Super AMOLED, 16M colors', '1440 x 3040 pixels', '6.4 inches', '8MP, f/1.7', 'Dual 12MP f/1.5-2.4', 'Samsung', 'Samsung Galaxy Note 9', 'GSM / CDMA / HSPA / EVDO / LTE', '201g (7.09 oz)', 'Stereo Speakers', 'Android 9 (One UI)', 'Non-removable Li-ion 4000 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78132903/fee_786_587_png/SAMSUNG-Galaxy-Note9-128-GB-Midnight-Black-Dual-SIM');
INSERT INTO `phone` VALUES('galaxyS10Plus', 'Super AMOLED, 16M colors', '1440 x 3040 pixels', '6.4 inches', 'Dual Camera: 10 MP, f/1.9 and 8 MP f/2.2', 'Triple Camera: 12 MP f/1.5-2.4, 12 MP f/2.4 and 16 MP f/2.2', 'Samsung', 'Samsung Galaxy S10+', 'GSM / CDMA / HSPA / EVDO / LTE', '175 g (6.17 oz)', 'Stereo Speakers', 'Android 9 (One UI)', 'Non-removable Li-ion 4100 mAh battery', 2019, 'https://picscdn.redblue.de/doi/pixelboxx-mss-81111400/fee_786_587_png/SAMSUNG-GALAXY-S10--128-GB-Prism-Black-Dual-SIM');
INSERT INTO `phone` VALUES('galaxyS7', 'Super AMOLED, 16M colors ', '1440 x 2560 pixels', '5.1 inches', '5MP, f/1.7', '12MP f/1.7', 'Samsung', 'Samsung Galaxy S7', 'GSM / HSPA / LTE', '152g (5.36 oz)', 'Single Speaker', 'Android 8.0 (Oreo)', 'Non-removable Li-ion 3000 mAh battery', 2016, 'https://picscdn.redblue.de/doi/pixelboxx-mss-70009887/fee_786_587_png/SAMSUNG-Galaxy-S7--Smartphone--32-GB--White-Pearl');
INSERT INTO `phone` VALUES('galaxyS8', 'Super AMOLED, 16M colors', '1440 x 2960 pixels', '5.8 inches', '8MP, f/1.7', '12MP f/1.7', 'Samsung', 'Samsung Galaxy S8', 'GSM / HSPA / LTE', '155g (5.47 oz)', 'Single Speaker', 'Android 9 (One UI)', 'Non-removable Li-ion 3000 mAh battery', 2017, 'https://picscdn.redblue.de/doi/pixelboxx-mss-77778867/fee_786_587_png/SAMSUNG-Galaxy-S8--Smartphone--64-GB--Midnight-Black');
INSERT INTO `phone` VALUES('galaxyS8Plus', 'Super AMOLED, 16M colors', '1440 x 2960 pixels', '6.2 inches', '8MP, f/1.7', '12MP f/1.7', 'Samsung', 'Samsung Galaxy S8+', 'GSM / HSPA / LTE', '173g (6.10 oz)', 'Singe Speaker', 'Android 9 (One UI)', 'Non-removable Li-ion 3500 mAh battery', 2017, 'https://picscdn.redblue.de/doi/pixelboxx-mss-77780496/fee_786_587_png/SAMSUNG-Galaxy-S8---Smartphone--64-GB--Midnight-Black');
INSERT INTO `phone` VALUES('galaxyS9', 'Super AMOLED, 16M colors', '1440 x 2960 pixels', '5.8 inches', '8MP, f/1.7', '12MP f/1.5-2.4', 'Samsung', 'Samsung Galaxy S9', 'GSM / CDMA / HSPA / EVDO / LTE', '163g (5.75 oz)', 'Dual Speakers', 'Android 9 (One UI)', 'Non-removable Li-ion 3000 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-77150564/fee_786_587_png/SAMSUNG-Galaxy-S9-64-GB-Midnight-Black-Dual-SIM');
INSERT INTO `phone` VALUES('galaxyS9Plus', 'Super AMOLED, 16M colors', '1440 x 2960 pixels', '6.2 inches', '8MP, f/1.7', 'Dual 12MP f/1.5-2.4', 'Samsung', 'Samsung Galaxy S9+', 'GSM / CDMA / HSPA / EVDO / LTE', '189g (6.67 oz)', 'Dual Speakers', 'Android 9 (One UI)', 'Non-removable Li-ion 3500 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78145252/fee_786_587_png/SAMSUNG-Galaxy-S9--64-GB-Midnight-Black-Dual-SIM');
INSERT INTO `phone` VALUES('googlePixel3', 'P-OLED, 16M colors', '1080 x 2160 pixels', '5.5 inches', 'Dual 8 MP f/1.8-2.2', '12.2 f/1.8', 'Google', 'Google Pixel 3', 'GSM / CMDA / HSPA / EVDO / LTE', '148 g (5.22 oz)', 'Stereo Speakers', 'Android 9.0 (Pie)', 'Non-removable Li-ion 2915 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78908366/fee_786_587_png/GOOGLE-Pixel-3-64-GB-Clearly-White-');
INSERT INTO `phone` VALUES('googlePixel3Xl', 'P-OLED, 16M colors', '1440 x 2960 pixels', '6.3 inches', 'Dual 8 MP f/1.8-2.2', '12.2 f/1.8', 'Google', 'Goolge Pixel 3XL', 'GSM / CMDA / HSPA / EVDO / LTE', '184 g (6.49 oz)', 'Stereo Speakers', 'Android 9.0 (Pie)', 'Non-removable Li-ion 3430 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78911676/fee_786_587_png/GOOGLE-Pixel-3-XL-64-GB-Just-Black-');
INSERT INTO `phone` VALUES('huaweiMate20Lite', 'LTPS IPS LCD, 16M colors', '1440 x 3120 pixels', '6.3 inches', 'Dual Camera: 20MP f/1.8 and 2MP depth sensor', 'Dual Camera: 12 MP f/2.0 and 2 MP depth sensor', 'Huawei', 'Huawei Mate 20 Lite', 'GSM / HSPA / LTE', '172 g (6.07 oz)', 'Single Speaker', 'Android 8.1 (Oreo)', 'Non-removable Li-ion 3750 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78310674/fee_786_587_png');
INSERT INTO `phone` VALUES('huaweiMate20Pro', 'AMOLED, 16M colors', '1440 x 3120 pixels', '6.39 inches', '24 MP f/2.0', 'Triple Camera: 40 MP f/1.8, 20 MP f/2.2 and 8 MP f/2.4', 'Huawei', 'Huawei Mate 20 Pro', 'GSM / HSPA / LTE', '189 g (6.67 oz)', 'Stereo Speakers', 'Android 9.0 (Pie)', 'Non-removable Li-ion 4200 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-79018095/fee_786_587_png/HUAWEI-Mate-20-Pro-128-GB-Twilight-Dual-SIM');
INSERT INTO `phone` VALUES('huaweiMate20X', 'AMOLED, 16M colors', '1080 x 2244 pixels', '7.2 inches', '24 MP f/2.0', 'Triple Camera: 40 MP f/1.8, 20 MP f/2.2 and 8 MP f/2.4', 'Huawei', 'Huawei Mate 20 X', 'GSM / HSPA / LTE', '232 g (8.18 oz)', 'Stereo Speakers', 'Android 9.0 (Pie)', 'Non-removable Li-ion 5000 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-79677823/fee_786_587_png');
INSERT INTO `phone` VALUES('huaweiP20', 'LTPS IPS LCD, 16M colors', '1080 x 2244 pixels', '5.8 inches', '24 MP f/2.0', 'Dual Camera: 12 MP f/1.8 and 20 MP f/1.6', 'Huawei', 'Huawei P20', 'GSM / HSPA / LTE', '165 g (5.82 oz)', 'Stereo Speakers', 'Android 8.1 (Oreo)', 'Non-removable Li-ion 3400 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78145286/fee_786_587_png/HUAWEI-P20-128-GB-Midnight-Black-Dual-SIM');
INSERT INTO `phone` VALUES('huaweiP20Lite', 'LTPS IPS LCD, 16M colors', '1080 x 2280 pixels', '5.84 inches', '24 MP f/2.0', 'Dual Camera: 16 MP f/2.2 and 2 MP depth sensor', 'Huawei', 'Huawei P20 Lite', 'GSM / HSPA / LTE', '145 g (5.11 oz)', 'Single Speaker', 'Android 8.0 (Oreo)', 'Non-removable Li-ion 3000 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-77267865/fee_786_587_png/HUAWEI-P20-Lite-64-GB-Midnight-Black-Dual-SIM');
INSERT INTO `phone` VALUES('huaweiP20Pro', 'AMOLED, 16M colors', '1080 x 2244 pixels', '6.1 inches', '24 MP f/2.0', 'Triple Camera: 40 MP f/1.8, 20 MP f/1.6 and 8 MP f/2.4', 'Huawei', 'Huawei P20 Pro', 'GSM / HSPA / LTE', '180 g (6.35 oz)', 'Stereo Speakers', 'Android 8.1 (Oreo)', 'Non-removable Li-ion 4000 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78145257/fee_786_587_png/HUAWEI-P20-Pro-128-GB-Schwarz-Dual-SIM');
INSERT INTO `phone` VALUES('iphone6s', 'LED-backlit IPS LCD, 16M colors', '750 x 1334 pixels', '4.7 inches', '5MP, f/2.2', '12MP f/2.2', 'Apple', 'iPhone 6s', 'GSM / CDMA / HSPA / EVDO / LTE', '143 g (5.04 oz)', 'Single Speaker', 'iOS 12', 'Non-removable Li-ion 1715 mAh battery', 2015, 'https://picscdn.redblue.de/doi/pixelboxx-mss-76655991/fee_786_587_png/APPLE-iPhone-6s-32-GB-Space-Grey-');
INSERT INTO `phone` VALUES('iphone7', 'LED-backlit IPS LCD, 16M colors', '750 x 1334 pixels', '4.7 inches', '7MP, f/2.2', '12MP f/1.8', 'Apple', 'iPhone 7', 'GSM / CDMA / HSPA / EVDO / LTE', '138 g (4.87 oz)', 'Stereo Speakers', 'iOS 12', 'Non-removable Li-ion 1960 mAh battery', 2016, 'https://picscdn.redblue.de/doi/pixelboxx-mss-77775352/fee_786_587_png/APPLE-iPhone-7-32-GB-Schwarz-');
INSERT INTO `phone` VALUES('iphone8', 'LED-backlit IPS LCD, 16M colors', '750 x 1334 pixels', '4.7 inches', '7MP, f/2.2', '12MP f/1.8', 'Apple', 'iPhone 8', 'GSM / HSPA / LTE', '148 g (5.22 oz)', 'Stereo Speakers', 'iOS 12', 'Non-removable Li-ion 1821 mAh battery', 2017, 'https://picscdn.redblue.de/doi/pixelboxx-mss-76201361/fee_786_587_png/APPLE-iPhone-8-64-GB-Space-Grey-');
INSERT INTO `phone` VALUES('iphone8Plus', 'LED-backlit IPS LCD, 16M colors', '1080 x 1920 pixels', '5.5 inches', '7MP, f/2.2', 'Dual 12MP f/1.8-2.4', 'Apple', 'iPhone 8 Plus', 'GSM / HSPA / LTE', '202 g (7.13 oz)', 'Stereo Speakers', 'iOS 12', 'Non-removable Li-ion 2691 mAh battery', 2017, 'https://picscdn.redblue.de/doi/pixelboxx-mss-76131342/fee_786_587_png/APPLE-iPhone-8-Plus-64-GB-Space-Grey-');
INSERT INTO `phone` VALUES('iphoneX', 'Super AMOLED, 16M colors', '1125 x 2436 pixels', '5.8 inches', '7MP, f/2.2', 'Dual 12MP f/1.8-2.4', 'Apple', 'iPhone X', 'GSM / HSPA / LTE', '174 g (6.14 oz)', 'Stereo Speakers', 'iOS 12', 'Non-removable Li-ion 2716 mAh battery', 2017, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78145226/fee_786_587_png/APPLE-iPhone-X-64-GB-Space-Grey-');
INSERT INTO `phone` VALUES('iphoneXR', 'IPS LCD, 16M colors', '828 x 1792 pixels', '6.1 inches', '7MP, f/2.2', '12MP f/1.8', 'Apple', 'iPhone XR', 'GSM / CDMA / HSPA / EVDO / LTE', '194 g (6.84 oz)', 'Stereo Speakers', 'iOS 12', 'Non-removable Li-ion 2942 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78449972/fee_786_587_png/APPLE-iPhone-XR-128-GB-Black-Dual-SIM');
INSERT INTO `phone` VALUES('iphoneXs', 'Super AMOLED, 16M colors', '1125 x 2436 pixels', '5.8 inches', '7MP, f/2.2', 'Dual 12MP f/1.8-2.4', 'Apple', 'iPhone XS', 'GSM / CDMA / HSPA / EVDO / LTE', '177 g (6.24 oz)', 'Stereo Speakers', 'iOS 12', 'Non-removable Li-ion 2658 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78450175/fee_786_587_png/APPLE-iPhone-XS-256-GB-Space-Gray-Dual-SIM');
INSERT INTO `phone` VALUES('iphoneXsMax', 'Super AMOLED, 16M colors', '1242 x 2688 pixels', '6.5 inches', '7MP, f/2.2', 'Dual 12MP f/1.8-2.4', 'Apple', 'iPhone XS Max', 'GSM / CDMA / HSPA / EVDO / LTE', '208 g (7.34 oz)', 'Stereo Speakers', 'iOS 12', 'Non-removable Li-ion 3174 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78449595/fee_786_587_png/APPLE-iPhone-XS-Max-64-GB-Gold-Dual-SIM');
INSERT INTO `phone` VALUES('samsungGalaxyNote100', 'fvecq', 'high dpi', 'jb', 'ijbn', 'jkb', 'Samsung', 'Samsung Galaxy Note 100', 'ljbl', 'jbl', 'jkb', 'lkjb', 'ljkb', 2014, 'asthyjuki');
INSERT INTO `phone` VALUES('sonyXA2', 'IPS LCD, 16M colors', '1080 x 1920 pixels', '5.2 inches', '8 MP f/2.4', '23 MP, f/2.0', 'Sony', 'Sony XA2', 'GSM / HSPA / LTE', '171 g (6.03 oz)', 'Single Speaker', 'Android 8.0 (Pie)', 'Non-removable Li-ion 3300 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-76862682/fee_786_587_png');
INSERT INTO `phone` VALUES('sonyXA2Plus', 'IPS LCD, 16M colors', '1080 x 2160 pixels', '6.0 inches', '8 MP f/2.4', '23 MP, f/2.0', 'Sony', 'Sony XA2 Plus', 'GSM / HSPA / LTE', '205 g (7.23 oz)', 'Single Speaker', 'Android 8.0 (Pie)', 'Non-removable Li-ion 3580 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78111034/fee_786_587_png/SONY-Xperia-XA2-Plus-32-GB-Gold-Dual-SIM');
INSERT INTO `phone` VALUES('sonyXZ2', 'IPS LCD, 16M colors', '1080 x 2160 pixels', '5.7 inches', '5 MP f/2.2', '19 MP f/2.0', 'Sony', 'Sony XZ2', 'GSM / HSPA / LTE', '198 g (6.98 oz)', 'Stereo Speakers', 'Android 8.0 (Pie)', 'Non-removable Li-ion 3180 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78111146/fee_786_587_png');
INSERT INTO `phone` VALUES('sonyXZ3', 'P-OLED, 16M colors', '1440 x 2880 pixels', '6.0 inches', '13 MP f/1.9', '19 MP f/2.0', 'Sony', 'Sony XZ3', 'GSM / HSPA / LTE', '193 g (6.81 oz)', 'Stereo Speakers', 'Android 9.0 (Pie)', 'Non-removable Li-ion 3300 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78309536/fee_786_587_png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`mname`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id`,`mname`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `Phone_to_Manufacturer_FK` (`mname`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `Phone_to_Manufacturer_FK` FOREIGN KEY (`mname`) REFERENCES `manufacturer` (`mname`);
--
-- Database: `phones`
--
CREATE DATABASE IF NOT EXISTS `phones` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `phones`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` VALUES(1, 'iPhone');
INSERT INTO `brands` VALUES(2, 'Samsung');
INSERT INTO `brands` VALUES(3, 'Huawei');
INSERT INTO `brands` VALUES(4, 'Xiaomi');
INSERT INTO `brands` VALUES(5, 'Oneplus');

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `phone_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `phone_name` varchar(30) NOT NULL,
  `year` year(4) NOT NULL,
  `price` int(11) NOT NULL,
  `display_size` varchar(12) NOT NULL,
  `resolution` varchar(10) NOT NULL,
  `ram` int(11) NOT NULL,
  `storage` int(11) NOT NULL,
  `camera` int(11) NOT NULL,
  `video` varchar(10) NOT NULL,
  `battery_type` varchar(30) NOT NULL,
  `battery_spec` varchar(10) NOT NULL,
  `CPU` varchar(30) NOT NULL,
  `chipset` varchar(30) NOT NULL,
  `water_resistant` tinyint(1) NOT NULL,
  `color` varchar(10) NOT NULL,
  `warranty` varchar(20) NOT NULL,
  `speakers` varchar(50) NOT NULL,
  `os` varchar(25) NOT NULL,
  `dimensions` varchar(20) NOT NULL,
  `weight` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` VALUES(0, 1, 'iPhone X', 2017, 700, '5.8\"', '1125x2436', 3, 256, 12, '2160p', 'Li-ion', '2716mAh', 'Hexa core 2.39 GHz', 'A11', 1, 'black_mate', '2 years', 'Stereo', 'iOS 13', '143.6x70.9x7.7 mm', '174g');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `phonestore`
--
CREATE DATABASE IF NOT EXISTS `phonestore` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `phonestore`;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `bid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` VALUES(1, 'Apple');
INSERT INTO `brands` VALUES(2, 'Samsung');
INSERT INTO `brands` VALUES(3, 'Huawei');
INSERT INTO `brands` VALUES(4, 'HTC');
INSERT INTO `brands` VALUES(5, 'BlackBerry');
INSERT INTO `brands` VALUES(6, 'OnePlus');
INSERT INTO `brands` VALUES(7, 'LG');
INSERT INTO `brands` VALUES(8, 'Google');
INSERT INTO `brands` VALUES(9, 'Xiaomi');
INSERT INTO `brands` VALUES(10, 'Honor');
INSERT INTO `brands` VALUES(11, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `pid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `displaysize` float NOT NULL,
  `resolution` varchar(9) NOT NULL,
  `cpu` varchar(20) NOT NULL,
  `ram` int(11) NOT NULL,
  `storage` int(11) NOT NULL,
  `camera` int(11) NOT NULL,
  `battery` int(11) NOT NULL,
  `color` varchar(20) NOT NULL,
  `price` double NOT NULL,
  `photo1` varchar(40) NOT NULL,
  `photo2` varchar(30) DEFAULT NULL,
  `photo3` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` VALUES(3, 1, 'APPLE iPhone 11', 6.1, '828x1792', 'A13 Bionic', 3, 64, 12, 3110, 'gray', 780, 'iphone11-22752.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(4, 1, 'APPLE iPhone XR', 6.1, '828x1792', 'A12 Bionic', 3, 64, 12, 2942, 'blue', 610, 'iphonexr-844564.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(5, 1, 'APPLE iPhone 8 Plus', 5.5, '1080x1920', 'A11 Bionic', 3, 64, 12, 2691, 'black', 600, 'iphone8plus-24645.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(6, 1, 'APPLE iPhone 8', 4.7, '750x1334', 'A11 Bionic', 2, 64, 12, 1821, 'black', 510, 'iphone8-212419.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(7, 2, 'SAMSUNG Galaxy A50s', 6.4, '1080x2340', 'Exynos9611', 6, 128, 48, 4000, 'black', 300, 'galaxya50s-879985.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(8, 2, 'SAMSUNG Galaxy A10s', 6.2, '720x1520', 'MT6762 Helio P2', 2, 32, 13, 4000, 'blue', 130, 'galaxya10s-101196.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(9, 2, 'SAMSUNG Galaxy Note10+', 6.8, '1440x3040', 'Exynos 9825', 12, 256, 12, 4300, 'blue', 870, 'galaxynote10-106664.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(10, 2, 'SAMSUNG Galaxy Note10', 6.3, '1080x2280', 'Exynos 9825', 8, 256, 12, 3500, 'blue', 780, 'galaxynote10-283622.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(11, 2, 'SAMSUNG Galaxy A80', 6.7, '1080x2400', 'Snapdragon 730', 8, 128, 48, 3700, 'black', 500, 'galaxya80-810861.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(12, 2, 'SAMSUNG Galaxy A60', 6.3, '1080x2340', 'Snapdragon 675', 6, 128, 32, 3500, 'blue', 300, 'galaxya60-1003735.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(13, 2, 'SAMSUNG Galaxy A70', 6.7, '1080x2400', 'Snapdragon 675', 6, 128, 32, 4500, 'orange', 320, 'galaxya70-129038.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(14, 2, 'SAMSUNG Galaxy A40', 5.9, '1080x2340', 'Exynos 7885', 4, 64, 16, 3100, 'blue', 200, 'galaxya40-773045.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(15, 2, 'SAMSUNG Galaxy S10+', 6.4, '1440x3040', 'Exynos 9820 Octa', 8, 128, 12, 4100, 'blue', 699, 'galaxys10-403031.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(16, 2, 'SAMSUNG Galaxy S9+', 6.2, '1440x2960', 'Exynos 9810 Octa', 6, 64, 12, 3500, 'gray', 460, 'samsunggalaxys9plus3-553818.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(17, 3, 'HUAWEI nova 4e', 6.15, '1080x2312', 'Hisilicon Kirin 710', 6, 128, 24, 3340, 'blue', 290, 'nova4e-564002.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(18, 3, 'HUAWEI nova 5T', 6.26, '1080x2340', 'HiSilicon Kirin 980', 8, 128, 48, 3750, 'blue-purple', 450, 'nova5t-796478.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(19, 3, 'HUAWEI nova 3i', 6.3, '1080x2340', 'Hisilicon Kirin 710', 4, 128, 16, 3340, 'blue', 220, 'nova3i-790854.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(20, 3, 'HUAWEI P30', 6.1, '1080x2340', 'HiSilicon Kirin 980', 6, 128, 40, 3650, 'blue', 520, 'p30-558561.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(21, 3, 'HUAWEI P30 lite', 6.15, '1080x2312', 'Hisilicon Kirin 710', 4, 128, 24, 3340, 'gray', 250, 'p30lite-977430.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(22, 3, 'HUAWEI Mate 20 Pro', 6.39, '1440x3120', 'HiSilicon Kirin 980', 6, 128, 40, 4200, 'green', 600, 'mate20pro-872041.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(23, 6, 'ONEPLUS 7 Pro', 6.67, '1440x3120', 'Snapdragon 855', 8, 256, 48, 4000, 'blue', 600, '7pro-521989.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(24, 6, 'ONEPLUS 6T McLaren', 6.41, '1080x2340', 'Snapdragon 845', 10, 128, 16, 3700, 'black', 600, '6tmclaren-163550.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(25, 6, 'ONEPLUS 6T', 6.41, '1080x2340', 'Snapdragon 845', 8, 128, 16, 3700, 'purple', 400, '6t-702649.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(26, 9, 'XIAOMI Redmi Note 8 Pro', 6.53, '1080x2340', 'Helio G90T', 6, 64, 12, 4500, 'white', 260, 'redminote8pro-296079.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(27, 9, 'XIAOMI Mi 9T Pro', 6.39, '1080x2340', 'Snapdragon 855', 6, 64, 48, 4000, 'black', 360, 'mi9tpro-393872.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(28, 9, 'XIAOMI Mi A3', 6.01, '720x1560', 'Snapdragon 665', 3, 64, 48, 4030, 'white', 160, 'mia3-706031.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(29, 9, 'XIAOMI Mi 9', 6.39, '1080x2340', 'Snapdragon 855', 6, 64, 48, 3300, 'blue', 390, 'mi9-503080.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(30, 9, 'XIAOMI Pocophone F1', 6.18, '1080x2246', 'Snapdragon 845', 6, 64, 12, 4000, 'red', 260, 'pocophonef1-382532.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(31, 10, 'HONOR 8S', 5.71, '720x1520', 'MT6761 Helio A22', 2, 32, 13, 3202, 'gold', 120, '8s-711902.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(32, 10, 'HONOR 8X Max', 7.12, '1080x2244', 'Snapdragon 636', 4, 128, 16, 5000, 'blue', 290, '8xmax-673581.jpg', NULL, NULL);
INSERT INTO `phones` VALUES(33, 10, 'HONOR 10 Lite', 6.21, '1080x2340', 'Hisilicon Kirin 710', 3, 64, 13, 3400, 'blue', 180, '10lite-141229.jpg', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` VALUES(1, 'root', 'database', 'new', '{\"quick_or_custom\":\"custom\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"manufacturer\",\"phone\"],\"table_structure[]\":[\"manufacturer\",\"phone\"],\"table_data[]\":[\"manufacturer\",\"phone\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');
INSERT INTO `pma__export_templates` VALUES(2, 'root', 'database', 'newsql', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"manufacturer\",\"phone\"],\"table_structure[]\":[\"manufacturer\",\"phone\"],\"table_data[]\":[\"manufacturer\",\"phone\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');
INSERT INTO `pma__export_templates` VALUES(3, 'root', 'server', 'sqlcode', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"api_db\",\"mrtechspecs\",\"phones\",\"phonestore\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');
INSERT INTO `pma__export_templates` VALUES(4, 'root', 'server', 'mrtechspecs_sql_code', '{\"quick_or_custom\":\"custom\",\"what\":\"sql\",\"db_select[]\":[\"api_db\",\"mrtechspecs\",\"phones\",\"phonestore\",\"phpmyadmin\",\"test\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"none\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` VALUES('root', '[{\"db\":\"mrtechspecs\",\"table\":\"phone\"},{\"db\":\"mrtechspecs\",\"table\":\"manufacturer\"},{\"db\":\"phonestore\",\"table\":\"phones\"},{\"db\":\"mrtech\",\"table\":\"manufacturer\"},{\"db\":\"mrtech\",\"table\":\"phone\"},{\"db\":\"phones\",\"table\":\"phones\"},{\"db\":\"mrtechspecs\",\"table\":\"Phone\"},{\"db\":\"mrtechspecs\",\"table\":\"Camera\"},{\"db\":\"mrtechspecs\",\"table\":\"camera\"},{\"db\":\"mrtechspecs\",\"table\":\"display\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` VALUES('root', 'mrtech', 'phone', '{\"sorted_col\":\"`phone`.`id` ASC\"}', '2019-11-04 20:54:53');
INSERT INTO `pma__table_uiprefs` VALUES('root', 'mrtechspecs', 'phone', '{\"sorted_col\":\"`mname`  ASC\"}', '2019-11-08 09:28:43');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` VALUES('root', '2019-11-08 12:53:46', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":372}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
