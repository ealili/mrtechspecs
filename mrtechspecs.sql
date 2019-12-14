-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2019 at 07:44 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mrtechspecs`
--
CREATE DATABASE IF NOT EXISTS `mrtechspecs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mrtechspecs`;

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`name`, `username`, `password`) VALUES
('Enes Alili', 'enes', 'c3cdbe10cc8ae980d3587012adc5258f'),
('Lenart Ibraimi', 'lenart', 'd1d330c79ed01e8a35f6fc51d338f076'),
('Selaudin Agolli', 'selaudin', 'a408451136bab071b0e6a690cf329884');

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

INSERT INTO `manufacturer` (`mname`, `headquarters`) VALUES
('Apple', 'Cupertino, California, United States'),
('Google', 'Mountain View, California, United States'),
('Huawei', 'Shenzhen, China'),
('Samsung', 'Seoul, South Korea'),
('Sony', 'Minato, Tokyo, Japan');

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `id` varchar(30) NOT NULL,
  `displayType` varchar(80) DEFAULT NULL,
  `displayResolution` varchar(80) DEFAULT NULL,
  `displaySize` varchar(100) DEFAULT NULL,
  `selfieCamera` varchar(100) DEFAULT NULL,
  `mainCamera` varchar(120) DEFAULT NULL,
  `mname` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `technology` varchar(30) DEFAULT NULL,
  `weight` varchar(30) DEFAULT NULL,
  `sound` varchar(30) DEFAULT NULL,
  `os` varchar(50) DEFAULT NULL,
  `battery` varchar(80) DEFAULT NULL,
  `productionYear` int(11) DEFAULT NULL,
  `imgSource` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`id`, `displayType`, `displayResolution`, `displaySize`, `selfieCamera`, `mainCamera`, `mname`, `name`, `technology`, `weight`, `sound`, `os`, `battery`, `productionYear`, `imgSource`) VALUES
('galaxyA9', 'Super AMOLED, 16M colors', '1080 x 2220 pixels', '6.3 inches', '24MP, f/2.0', 'Quad Camera: 24 MP f/1.7, 8 MP f/2.4, 10 MP f/2.4 and 5 MP f/2.2', 'Samsung', 'Samsung Galaxy A9', 'GSM / HSPA / LTE', '183g (6.46 oz)', 'Single Speaker', 'Android 9 (One UI)', 'Non-removable Li-ion 3800 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78940995/fee_786_587_png/SAMSUNG-Galaxy-A9-%282018%29-128-GB-Bubblegum-Pink-Dual-SIM'),
('galaxyNote8', 'Super AMOLED, 16M colors', '1440 x 2960 pixels', '6.3 inches', '8MP, f/1.7', 'Dual 12MP f/1.5-2.4', 'Samsung', 'Samsung Galaxy Note 8', 'GSM / HSPA / LTE', '195 g', 'Stereo Speakers', 'Android 9 (One UI)', 'Non-removable Li-ion 3300 mAh battery', 2017, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78145272/fee_786_587_png/SAMSUNG-Galaxy-Note8-64-GB-Midnight-Black-'),
('galaxyNote9', 'Super AMOLED, 16M colors', '1440 x 3040 pixels', '6.4 inches', '8MP, f/1.7', 'Dual 12MP f/1.5-2.4', 'Samsung', 'Samsung Galaxy Note 9', 'GSM / CDMA / HSPA / EVDO / LTE', '201g (7.09 oz)', 'Stereo Speakers', 'Android 9 (One UI)', 'Non-removable Li-ion 4000 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78132903/fee_786_587_png/SAMSUNG-Galaxy-Note9-128-GB-Midnight-Black-Dual-SIM'),
('galaxyS10Plus', 'Super AMOLED, 16M colors', '1440 x 3040 pixels', '6.4 inches', 'Dual Camera: 10 MP, f/1.9 and 8 MP f/2.2', 'Triple Camera: 12 MP f/1.5-2.4, 12 MP f/2.4 and 16 MP f/2.2', 'Samsung', 'Samsung Galaxy S10+', 'GSM / CDMA / HSPA / EVDO / LTE', '175 g (6.17 oz)', 'Stereo Speakers', 'Android 9 (One UI)', 'Non-removable Li-ion 4100 mAh battery', 2019, 'https://picscdn.redblue.de/doi/pixelboxx-mss-81111400/fee_786_587_png/SAMSUNG-GALAXY-S10--128-GB-Prism-Black-Dual-SIM'),
('galaxyS7', 'Super AMOLED, 16M colors ', '1440 x 2560 pixels', '5.1 inches', '5MP, f/1.7', '12MP f/1.7', 'Samsung', 'Samsung Galaxy S7', 'GSM / HSPA / LTE', '152g (5.36 oz)', 'Single Speaker', 'Android 8.0 (Oreo)', 'Non-removable Li-ion 3000 mAh battery', 2016, 'https://picscdn.redblue.de/doi/pixelboxx-mss-70009887/fee_786_587_png/SAMSUNG-Galaxy-S7--Smartphone--32-GB--White-Pearl'),
('galaxyS8', 'Super AMOLED, 16M colors', '1440 x 2960 pixels', '5.8 inches', '8MP, f/1.7', '12MP f/1.7', 'Samsung', 'Samsung Galaxy S8', 'GSM / HSPA / LTE', '155g (5.47 oz)', 'Single Speaker', 'Android 9 (One UI)', 'Non-removable Li-ion 3000 mAh battery', 2017, 'https://picscdn.redblue.de/doi/pixelboxx-mss-77778867/fee_786_587_png/SAMSUNG-Galaxy-S8--Smartphone--64-GB--Midnight-Black'),
('galaxyS8Plus', 'Super AMOLED, 16M colors', '1440 x 2960 pixels', '6.2 inches', '8MP, f/1.7', '12MP f/1.7', 'Samsung', 'Samsung Galaxy S8+', 'GSM / HSPA / LTE', '173g (6.10 oz)', 'Singe Speaker', 'Android 9 (One UI)', 'Non-removable Li-ion 3500 mAh battery', 2017, 'https://picscdn.redblue.de/doi/pixelboxx-mss-77780496/fee_786_587_png/SAMSUNG-Galaxy-S8---Smartphone--64-GB--Midnight-Black'),
('galaxyS9', 'Super AMOLED, 16M colors', '1440 x 2960 pixels', '5.8 inches', '8MP, f/1.7', '12MP f/1.5-2.4', 'Samsung', 'Samsung Galaxy S9', 'GSM / CDMA / HSPA / EVDO / LTE', '163g (5.75 oz)', 'Dual Speakers', 'Android 9 (One UI)', 'Non-removable Li-ion 3000 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-77150564/fee_786_587_png/SAMSUNG-Galaxy-S9-64-GB-Midnight-Black-Dual-SIM'),
('galaxyS9Plus', 'Super AMOLED, 16M colors', '1440 x 2960 pixels', '6.2 inches', '8MP, f/1.7', 'Dual 12MP f/1.5-2.4', 'Samsung', 'Samsung Galaxy S9+', 'GSM / CDMA / HSPA / EVDO / LTE', '189g (6.67 oz)', 'Dual Speakers', 'Android 9 (One UI)', 'Non-removable Li-ion 3500 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78145252/fee_786_587_png/SAMSUNG-Galaxy-S9--64-GB-Midnight-Black-Dual-SIM'),
('googlePixel3', 'P-OLED, 16M colors', '1080 x 2160 pixels', '5.5 inches', 'Dual 8 MP f/1.8-2.2', '12.2 f/1.8', 'Google', 'Google Pixel 3', 'GSM / CMDA / HSPA / EVDO / LTE', '148 g (5.22 oz)', 'Stereo Speakers', 'Android 9.0 (Pie)', 'Non-removable Li-ion 2915 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78908366/fee_786_587_png/GOOGLE-Pixel-3-64-GB-Clearly-White-'),
('googlePixel3Xl', 'P-OLED, 16M colors', '1440 x 2960 pixels', '6.3 inches', 'Dual 8 MP f/1.8-2.2', '12.2 f/1.8', 'Google', 'Goolge Pixel 3XL', 'GSM / CMDA / HSPA / EVDO / LTE', '184 g (6.49 oz)', 'Stereo Speakers', 'Android 9.0 (Pie)', 'Non-removable Li-ion 3430 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78911676/fee_786_587_png/GOOGLE-Pixel-3-XL-64-GB-Just-Black-'),
('googlePixel4', 'P-OLED capacitive touchscreen, 16M colors', '1080 x 2280 pixels, 19:9 ratio (~444 ppi density)', '5.7 inches, 80.7 cm2 (~79.8% screen-to-body ratio)', '8 MP, f/2.0, 22mm (wide), 1.22µm, no AF', '12.2 MP, f/1.7, 27mm (wide), 1/2.55&quot;, 1.4µm, dual pixel PDAF, OIS 16 MP, f/2.4, 50mm (telephoto), 1/3.6&quot;, 1.0µ', 'Google', 'Google Pixel 4', 'GSM / CDMA / HSPA / EVDO / LTE', '162 g (5.71 oz)', 'Stereo Speakers', 'Android 10', 'Non-removable Li-Po 2800 mAh battery', 2019, 'https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_69961858/fee_786_587_png'),
('googlePixel4XL', 'P-OLED capacitive touchscreen, 16M colors', '1440 x 3040 pixels, 19:9 ratio (~537 ppi density)', '6.3 inches, 98.0 cm2 (~81.3% screen-to-body ratio)', '8 MP, f/2.0, 22mm (wide), 1.22µm, no AF', '12.2 MP, f/1.7, 27mm (wide), 1/2.55&quot;, 1.4µm, dual pixel PDAF, OIS 16 MP, f/2.4, 50mm (telephoto), 1/3.6&quot;, 1.0µ', 'Google', 'Google Pixel 4 XL', 'GSM / CDMA / HSPA / EVDO / LTE', '193 g (6.81 oz)', 'Stereo Speakers', 'Android 10', 'Non-removable Li-Po 3700 mAh battery', 2019, 'https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_69961877/fee_786_587_png'),
('huaweiMate20Lite', 'LTPS IPS LCD, 16M colors', '1440 x 3120 pixels', '6.3 inches', 'Dual Camera: 20MP f/1.8 and 2MP depth sensor', 'Dual Camera: 12 MP f/2.0 and 2 MP depth sensor', 'Huawei', 'Huawei Mate 20 Lite', 'GSM / HSPA / LTE', '172 g (6.07 oz)', 'Single Speaker', 'Android 8.1 (Oreo)', 'Non-removable Li-ion 3750 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78310674/fee_786_587_png'),
('huaweiMate20Pro', 'AMOLED, 16M colors', '1440 x 3120 pixels', '6.39 inches', '24 MP f/2.0', 'Triple Camera: 40 MP f/1.8, 20 MP f/2.2 and 8 MP f/2.4', 'Huawei', 'Huawei Mate 20 Pro', 'GSM / HSPA / LTE', '189 g (6.67 oz)', 'Stereo Speakers', 'Android 9.0 (Pie)', 'Non-removable Li-ion 4200 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-79018095/fee_786_587_png/HUAWEI-Mate-20-Pro-128-GB-Twilight-Dual-SIM'),
('huaweiMate20X', 'AMOLED, 16M colors', '1080 x 2244 pixels', '7.2 inches', '24 MP f/2.0', 'Triple Camera: 40 MP f/1.8, 20 MP f/2.2 and 8 MP f/2.4', 'Huawei', 'Huawei Mate 20 X', 'GSM / HSPA / LTE', '232 g (8.18 oz)', 'Stereo Speakers', 'Android 9.0 (Pie)', 'Non-removable Li-ion 5000 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-79677823/fee_786_587_png'),
('huaweiP20', 'LTPS IPS LCD, 16M colors', '1080 x 2244 pixels', '5.8 inches', '24 MP f/2.0', 'Dual Camera: 12 MP f/1.8 and 20 MP f/1.6', 'Huawei', 'Huawei P20', 'GSM / HSPA / LTE', '165 g (5.82 oz)', 'Stereo Speakers', 'Android 8.1 (Oreo)', 'Non-removable Li-ion 3400 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78145286/fee_786_587_png/HUAWEI-P20-128-GB-Midnight-Black-Dual-SIM'),
('huaweiP20Lite', 'LTPS IPS LCD, 16M colors', '1080 x 2280 pixels', '5.84 inches', '24 MP f/2.0', 'Dual Camera: 16 MP f/2.2 and 2 MP depth sensor', 'Huawei', 'Huawei P20 Lite', 'GSM / HSPA / LTE', '145 g (5.11 oz)', 'Single Speaker', 'Android 8.0 (Oreo)', 'Non-removable Li-ion 3000 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-77267865/fee_786_587_png/HUAWEI-P20-Lite-64-GB-Midnight-Black-Dual-SIM'),
('huaweiP20Pro', 'AMOLED, 16M colors', '1080 x 2244 pixels', '6.1 inches', '24 MP f/2.0', 'Triple Camera: 40 MP f/1.8, 20 MP f/1.6 and 8 MP f/2.4', 'Huawei', 'Huawei P20 Pro', 'GSM / HSPA / LTE', '180 g (6.35 oz)', 'Stereo Speakers', 'Android 8.1 (Oreo)', 'Non-removable Li-ion 4000 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78145257/fee_786_587_png/HUAWEI-P20-Pro-128-GB-Schwarz-Dual-SIM'),
('huaweiP30', 'OLED capacitive touchscreen, 16M colors', '1080 x 2340 pixels, 19.5:9 ratio (~422 ppi density)', '6.1 inches, 91.3 cm2 (~85.8% screen-to-body ratio)', '32 MP, f/2.0, 26mm (wide), 1/2.8&quot;, 0.8µm', '40 MP, f/1.8, 27mm (wide), 1/1.7&quot;, PDAF, Laser AF 8 MP, f/2.4, 80mm (telephoto), 1/4&quot;, PDAF, Laser AF, OIS, 3x', 'Huawei', 'Huawei P30', 'GSM / HSPA / LTE', '165 g (5.82 oz)', 'Single speaker', 'Android 9.0 (Pie), upgradable to Android 10.0; EMU', 'Non-removable Li-Po 3650 mAh battery', 2019, 'https://assets.mmsrg.com/isr/166325/c1/-/pixelboxx-mss-81016538/fee_786_587_png'),
('huaweiP30Lite', 'LTPS IPS LCD capacitive touchscreen, 16M colors', '1080 x 2312 pixels (~415 ppi density)', '6.15 inches, 93.6 cm2 (~84.2% screen-to-body ratio)', '24 MP, f/2.0, 26mm (wide), 1/2.8&quot;, 0.9µm', '48 MP, f/1.8, (wide), 1/2&quot;, 0.8µm, PDAF 8 MP, 13mm (ultrawide) 2 MP, f/2.4, depth sensor', 'Huawei', 'Huawei P30 Lite', 'GSM / HSPA / LTE', '159 g (5.61 oz)', 'Single speaker', 'Android 9.0 (Pie), EMUI 9.1', 'Non-removable Li-Po 3340 mAh battery', 2019, 'https://assets.mmsrg.com/isr/166325/c1/-/pixelboxx-mss-81086802/fee_786_587_png'),
('huaweiP30Pro', 'OLED capacitive touchscreen, 16M colors', '1080 x 2340 pixels, 19.5:9 ratio (~398 ppi density)', '6.47 inches, 102.8 cm2 (~88.6% screen-to-body ratio)', '32 MP, f/2.0, 26mm (wide), 1/2.8&quot;, 0.8µm', '40 MP, f/1.6, 27mm (wide), 1/1.7&quot;, PDAF, OIS Periscope 8 MP, f/3.4, 125mm (telephoto), 1/4&quot;, PDAF, OIS, 5x opt', 'Huawei', 'Huawei P30 Pro', 'GSM / HSPA / LTE', '192 g (6.77 oz)', 'Single speaker', 'Android 9.0 (Pie), upgradable to Android 10.0; EMU', 'Non-removable Li-Po 4200 mAh battery', 2019, 'https://assets.mmsrg.com/isr/166325/c1/-/pixelboxx-mss-81016644/fee_786_587_png'),
('iPhone11', 'https://assets.mmsrg.com/isr/166325/c1/-/pixelboxx-mss-82228356/fee_786_587_png', '828 x 1792 pixels, 19.5:9 ratio (~326 ppi density)', '6.1 inches, 90.3 cm2 (~79.0% screen-to-body ratio)', '12 MP, f/2.2, 23mm (wide)', '12 MP, f/1.8, 26mm (wide), 1/2.55&quot;, 1.4µm, dual pixel PDAF, OIS 12 MP, f/2.4, 13mm (ultrawide)', 'Apple', 'iPhone 11', 'GSM / CDMA / HSPA / EVDO / LTE', '194 g (6.84 oz)', 'Stereo Speakers', 'iOS 13, upgradable to iOS 13.2', 'Non-removable Li-Ion 3110 mAh battery (11.91 Wh)', 2019, 'https://assets.mmsrg.com/isr/166325/c1/-/pixelboxx-mss-82228356/fee_786_587_png'),
('iPhone11Pro', 'Super Retina XDR OLED capacitive touchscreen, 16M colors', '1125 x 2436 pixels, 19.5:9 ratio (~458 ppi density)', '5.8 inches, 84.4 cm2 (~82.1% screen-to-body ratio)', '12 MP, f/2.2, 23mm (wide)', '12 MP, f/1.8, 26mm (wide), 1/2.55&quot;, 1.4µm, dual pixel PDAF, OIS 12 MP, f/2.0, 52mm (telephoto), 1/3.4&quot;, 1.0µm,', 'Apple', 'iPhone 11 Pro', 'GSM / CDMA / HSPA / EVDO / LTE', '188 g (6.63 oz)', 'Stereo Speakers', 'iOS 13, upgradable to iOS 13.2', 'Non-removable Li-Ion 3046 mAh battery (11.67 Wh)', 2019, 'https://assets.mmsrg.com/isr/166325/c1/-/pixelboxx-mss-82228345/fee_786_587_png'),
('iPhone11ProMax', 'Super Retina XDR OLED capacitive touchscreen, 16M colors', '1242 x 2688 pixels, 19.5:9 ratio (~458 ppi density)', '6.5 inches, 102.9 cm2 (~83.7% screen-to-body ratio)', '12 MP, f/2.2, 23mm (wide)', '12 MP, f/1.8, 26mm (wide), 1/2.55&quot;, 1.4µm, dual pixel PDAF, OIS 12 MP, f/2.0, 52mm (telephoto), 1/3.4&quot;, 1.0µm,', 'Apple', 'iPhone 11 Pro Max', 'GSM / CDMA / HSPA / EVDO / LTE', '226 g (7.97 oz)', 'Stereo Speakers', '	iOS 13, upgradable to iOS 13.2', 'Non-removable Li-Ion 3969 mAh battery (15.04 Wh)', 2019, 'https://assets.mmsrg.com/isr/166325/c1/-/pixelboxx-mss-82228325/fee_786_587_png'),
('iphone6s', 'LED-backlit IPS LCD, 16M colors', '750 x 1334 pixels', '4.7 inches', '5MP, f/2.2', '12MP f/2.2', 'Apple', 'iPhone 6s', 'GSM / CDMA / HSPA / EVDO / LTE', '143 g (5.04 oz)', 'Single Speaker', 'iOS 12', 'Non-removable Li-ion 1715 mAh battery', 2015, 'https://picscdn.redblue.de/doi/pixelboxx-mss-76655991/fee_786_587_png/APPLE-iPhone-6s-32-GB-Space-Grey-'),
('iphone7', 'LED-backlit IPS LCD, 16M colors', '750 x 1334 pixels', '4.7 inches', '7MP, f/2.2', '12MP f/1.8', 'Apple', 'iPhone 7', 'GSM / CDMA / HSPA / EVDO / LTE', '138 g (4.87 oz)', 'Stereo Speakers', 'iOS 12', 'Non-removable Li-ion 1960 mAh battery', 2016, 'https://picscdn.redblue.de/doi/pixelboxx-mss-77775352/fee_786_587_png/APPLE-iPhone-7-32-GB-Schwarz-'),
('iphone8', 'LED-backlit IPS LCD, 16M colors', '750 x 1334 pixels', '4.7 inches', '7MP, f/2.2', '12MP f/1.8', 'Apple', 'iPhone 8', 'GSM / HSPA / LTE', '148 g (5.22 oz)', 'Stereo Speakers', 'iOS 12', 'Non-removable Li-ion 1821 mAh battery', 2017, 'https://picscdn.redblue.de/doi/pixelboxx-mss-76201361/fee_786_587_png/APPLE-iPhone-8-64-GB-Space-Grey-'),
('iphone8Plus', 'LED-backlit IPS LCD, 16M colors', '1080 x 1920 pixels', '5.5 inches', '7MP, f/2.2', 'Dual 12MP f/1.8-2.4', 'Apple', 'iPhone 8 Plus', 'GSM / HSPA / LTE', '202 g (7.13 oz)', 'Stereo Speakers', 'iOS 12', 'Non-removable Li-ion 2691 mAh battery', 2017, 'https://picscdn.redblue.de/doi/pixelboxx-mss-76131342/fee_786_587_png/APPLE-iPhone-8-Plus-64-GB-Space-Grey-'),
('iphoneX', 'Super AMOLED, 16M colors', '1125 x 2436 pixels', '5.8 inches', '7MP, f/2.2', 'Dual 12MP f/1.8-2.4', 'Apple', 'iPhone X', 'GSM / HSPA / LTE', '174 g (6.14 oz)', 'Stereo Speakers', 'iOS 12', 'Non-removable Li-ion 2716 mAh battery', 2017, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78145226/fee_786_587_png/APPLE-iPhone-X-64-GB-Space-Grey-'),
('iphoneXR', 'IPS LCD, 16M colors', '828 x 1792 pixels', '6.1 inches', '7MP, f/2.2', '12MP f/1.8', 'Apple', 'iPhone XR', 'GSM / CDMA / HSPA / EVDO / LTE', '194 g (6.84 oz)', 'Stereo Speakers', 'iOS 12', 'Non-removable Li-ion 2942 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78449972/fee_786_587_png/APPLE-iPhone-XR-128-GB-Black-Dual-SIM'),
('iphoneXs', 'Super AMOLED, 16M colors', '1125 x 2436 pixels', '5.8 inches', '7MP, f/2.2', 'Dual 12MP f/1.8-2.4', 'Apple', 'iPhone XS', 'GSM / CDMA / HSPA / EVDO / LTE', '177 g (6.24 oz)', 'Stereo Speakers', 'iOS 12', 'Non-removable Li-ion 2658 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78450175/fee_786_587_png/APPLE-iPhone-XS-256-GB-Space-Gray-Dual-SIM'),
('iphoneXsMax', 'Super AMOLED, 16M colors', '1242 x 2688 pixels', '6.5 inches', '7MP, f/2.2', 'Dual 12MP f/1.8-2.4', 'Apple', 'iPhone XS Max', 'GSM / CDMA / HSPA / EVDO / LTE', '208 g (7.34 oz)', 'Stereo Speakers', 'iOS 12', 'Non-removable Li-ion 3174 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78449595/fee_786_587_png/APPLE-iPhone-XS-Max-64-GB-Gold-Dual-SIM'),
('samsungGalaxyFold', 'Foldable Dynamic AMOLED capacitive touchscreen, 16M colors', '1536 x 2152 pixels (~362 ppi density)', '7.3 inches, 162.6 cm2 (~85.7% screen-to-body ratio)', '10 MP, f/2.2, 26mm (wide), 1/3&quot;, 1.22µm 8 MP, f/1.9, 24mm (wide), 1.22µm, depth sensor', '12 MP, f/1.5-2.4, 27mm (wide), 1/2.55&quot;, 1.4µm, Dual Pixel PDAF, OIS 12 MP, f/2.4, 52mm (telephoto), 1/3.6&quot;, 1.', 'Samsung', 'Samsung Galaxy Fold', 'GSM / HSPA / LTE', '263 g (9.28 oz)', 'Stereo Speakers', 'Android 9.0 (Pie)', 'Non-removable Li-Po 4380 mAh battery', 2019, 'https://assets.mmsrg.com/isr/166325/c1/-/pixelboxx-mss-82206824/fee_786_587_png'),
('samsungGalaxyNote10', 'Dynamic AMOLED capacitive touchscreen, 16M colors', '1080 x 2280 pixels, 19:9 ratio (~401 ppi density)', '6.3 inches, 98.6 cm2 (~90.9% screen-to-body ratio)', '10 MP, f/2.2, 26mm (wide), 1/3&quot;, 1.22µm, Dual Pixel PDAF', '12 MP, f/1.5-2.4, 27mm (wide), 1/2.55&quot;, 1.4µm, Dual Pixel PDAF, OIS 12 MP, f/2.1, 52mm (telephoto), 1/3.6&quot;, 1.', 'Samsung', 'Samsung Galaxy Note 10', 'GSM / CDMA / HSPA / EVDO / LTE', '168 g (5.93 oz)', 'Stereo Speakers', 'Android 9.0 (Pie); One UI', 'Non-removable Li-Ion 3500 mAh battery', 2019, 'https://assets.mmsrg.com/isr/166325/c1/-/pixelboxx-mss-82027768/fee_786_587_png'),
('samsungGalaxyNote10Plus', 'Dynamic AMOLED capacitive touchscreen, 16M colors', '1440 x 3040 pixels, 19:9 ratio (~498 ppi density)', '6.8 inches, 114.0 cm2 (~91.0% screen-to-body ratio)', '10 MP, f/2.2, 26mm (wide), 1/3&quot;, 1.22µm, Dual Pixel PDAF', '12 MP, f/1.5-2.4, 27mm (wide), 1/2.55&quot;, 1.4µm, Dual Pixel PDAF, OIS 12 MP, f/2.1, 52mm (telephoto), 1/3.6&quot;, 1.', 'Samsung', 'Samsung Galaxy Note 10+', 'GSM / CDMA / HSPA / EVDO / LTE', '196 g (6.91 oz)', 'Stereo Speakers', 'Android 9.0 (Pie); One UI', 'Non-removable Li-Ion 4300 mAh battery', 2019, 'https://assets.mmsrg.com/isr/166325/c1/-/pixelboxx-mss-82027790/fee_786_587_png'),
('samsungGalaxyS10', 'Dynamic AMOLED capacitive touchscreen, 16M colors', '1440 x 3040 pixels, 19:9 ratio (~550 ppi density)', '6.1 inches, 93.2 cm2 (~88.3% screen-to-body ratio)', '10 MP, f/1.9, 26mm (wide), 1/3&quot;, 1.22µm, Dual Pixel PDAF', '12 MP, f/1.5-2.4, 26mm (wide), 1/2.55&quot;, 1.4µm, Dual Pixel PDAF, OIS 12 MP, f/2.4, 52mm (telephoto), 1/3.6&quot;, 1.', 'Samsung', 'Samsung Galaxy S10', 'GSM / CDMA / HSPA / EVDO / LTE', '157 g (5.54 oz)', 'Stereo Speakers', 'Android 9.0 (Pie); One UI', 'Non-removable Li-Ion 3400 mAh battery', 2019, 'https://assets.mmsrg.com/isr/166325/c1/-/pixelboxx-mss-80713963/fee_786_587_png'),
('sonyXA2', 'IPS LCD, 16M colors', '1080 x 1920 pixels', '5.2 inches', '8 MP f/2.4', '23 MP, f/2.0', 'Sony', 'Sony XA2', 'GSM / HSPA / LTE', '171 g (6.03 oz)', 'Single Speaker', 'Android 8.0 (Pie)', 'Non-removable Li-ion 3300 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-76862682/fee_786_587_png'),
('sonyXA2Plus', 'IPS LCD, 16M colors', '1080 x 2160 pixels', '6.0 inches', '8 MP f/2.4', '23 MP, f/2.0', 'Sony', 'Sony XA2 Plus', 'GSM / HSPA / LTE', '205 g (7.23 oz)', 'Single Speaker', 'Android 8.0 (Pie)', 'Non-removable Li-ion 3580 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78111034/fee_786_587_png/SONY-Xperia-XA2-Plus-32-GB-Gold-Dual-SIM'),
('sonyXZ2', 'IPS LCD, 16M colors', '1080 x 2160 pixels', '5.7 inches', '5 MP f/2.2', '19 MP f/2.0', 'Sony', 'Sony XZ2', 'GSM / HSPA / LTE', '198 g (6.98 oz)', 'Stereo Speakers', 'Android 8.0 (Pie)', 'Non-removable Li-ion 3180 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78111146/fee_786_587_png'),
('sonyXZ3', 'P-OLED, 16M colors', '1440 x 2880 pixels', '6.0 inches', '13 MP f/1.9', '19 MP f/2.0', 'Sony', 'Sony XZ3', 'GSM / HSPA / LTE', '193 g (6.81 oz)', 'Stereo Speakers', 'Android 9.0 (Pie)', 'Non-removable Li-ion 3300 mAh battery', 2018, 'https://picscdn.redblue.de/doi/pixelboxx-mss-78309536/fee_786_587_png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`username`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
