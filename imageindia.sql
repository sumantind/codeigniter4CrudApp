-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 23, 2020 at 01:50 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imageindia`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(10) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `profile_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `name`, `email`, `password`, `mobile`, `profile_pic`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', '9533334444', 'profile_img/Admin1640.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `allbrands`
--

CREATE TABLE `allbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(100) NOT NULL,
  `BrandSeo` varchar(100) NOT NULL,
  `BrandImage` varchar(100) NOT NULL,
  `insertdate` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allbrands`
--

INSERT INTO `allbrands` (`id`, `BrandName`, `BrandSeo`, `BrandImage`, `insertdate`) VALUES
(1, 'Hp', 'hp', 'brand_img/hp.png', '09-Apr-2020 17:57:01'),
(2, 'Brother', 'brother', 'brand_img/brother.png', '14-Apr-2020 12:58:53'),
(3, 'Canon', 'canon', 'brand_img/canon.png', '14-Apr-2020 13:15:45'),
(4, 'Konica Minolta', 'konica-minolta', 'brand_img/konica.png', '14-Apr-2020 13:18:16'),
(5, 'Kyocera', 'kyocera', 'brand_img/kyocera.png', '14-Apr-2020 13:19:02'),
(6, 'Epson', 'epson', 'brand_img/epson.png', '14-Apr-2020 13:23:18'),
(7, 'Xerox', 'xerox', 'brand_img/xerox.png', '14-Apr-2020 13:27:43'),
(8, 'Ricoh', 'ricoh', 'brand_img/ricoh.png', '14-Apr-2020 13:53:23'),
(9, 'Sharp', 'sharp', 'brand_img/sharp.png', '14-Apr-2020 13:53:45'),
(10, 'Toshiba', 'toshiba', 'brand_img/toshiba.png', '14-Apr-2020 13:54:13'),
(11, 'Panasonic', 'panasonic', 'brand_img/panasonic.png', '14-Apr-2020 13:54:38'),
(12, 'Entrust Datacard', 'entrust-datacard', 'brand_img/entrust.png', ''),
(13, 'Excelam', 'excelam', 'brand_img/excelam.png', ''),
(14, 'NEHA', 'neha', 'brand_img/neha.png', ''),
(15, 'KENT', 'kent', 'brand_img/kent.png', ''),
(16, 'GOBBLER', 'gobbler', 'brand_img/gobbler1.png', '18-Jul-2020 19:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `billing_address`
--

CREATE TABLE `billing_address` (
  `billing_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `billing_name` varchar(30) NOT NULL,
  `billing_email` varchar(60) NOT NULL,
  `billing_mobile` varchar(12) NOT NULL,
  `billing_country` varchar(30) NOT NULL,
  `billing_address` varchar(300) NOT NULL,
  `billing_city` varchar(30) NOT NULL,
  `billing_state` varchar(30) NOT NULL,
  `billing_zip` varchar(8) NOT NULL,
  `insert_date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing_address`
--

INSERT INTO `billing_address` (`billing_id`, `user_id`, `billing_name`, `billing_email`, `billing_mobile`, `billing_country`, `billing_address`, `billing_city`, `billing_state`, `billing_zip`, `insert_date`) VALUES
(2, 'ssnnoouu@gmail.com', 'sumant kumar', 'sumant2k10cs14@gmail.com', '8709288095', 'India', 'vill-bardih math\npo- bardih,\nps-islampur', 'islampur', 'Bihar', '801303', '08-May-2020 13:34:55'),
(3, 'hakeem@ugra.in', 'Hakeem', 'hakeem@ugra.in', '8297740909', 'India', 'hfjgjggghkangdghskggghjkb', 'Hyderabad', 'Telangana', '500034', '08-May-2020 16:06:34');

-- --------------------------------------------------------

--
-- Table structure for table `binding_brand`
--

CREATE TABLE `binding_brand` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(100) NOT NULL,
  `BrandSeo` varchar(100) NOT NULL,
  `BrandImage` varchar(100) NOT NULL,
  `insertdate` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `binding_brand`
--

INSERT INTO `binding_brand` (`id`, `BrandName`, `BrandSeo`, `BrandImage`, `insertdate`) VALUES
(1, 'Excelam', 'excelam', 'brand_img/excelam.png', '14-Apr-2020 15:00:02'),
(2, 'Neha', 'neha', 'brand_img/neha.png', '14-Apr-2020 15:00:17'),
(3, 'Vivaan', 'vivaan', 'brand_img/vivaan.png', '14-Apr-2020 15:02:18'),
(4, 'Ultimate', 'ultimate', 'brand_img/ultimate_printer.png', '14-Apr-2020 15:02:36'),
(5, 'Surya', 'surya', 'brand_img/surya_printer.png', '14-Apr-2020 15:02:42'),
(6, 'Pilot', 'pilot', '', '14-Apr-2020 15:02:52'),
(7, 'KENT', 'kent', 'brand_img/kent.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `binding_product`
--

CREATE TABLE `binding_product` (
  `id` int(11) NOT NULL,
  `pro_order` int(5) NOT NULL,
  `cat_seo` varchar(50) NOT NULL DEFAULT 'binding-machines',
  `pro_name` varchar(100) NOT NULL,
  `pro_seo` varchar(100) NOT NULL,
  `pro_id` varchar(30) NOT NULL,
  `brand_seo` varchar(100) NOT NULL,
  `stock` int(10) NOT NULL,
  `remaining_stock` int(5) NOT NULL,
  `price` float(10,2) NOT NULL,
  `offers` int(11) NOT NULL,
  `pro_img` varchar(100) NOT NULL,
  `pro_img2` varchar(100) NOT NULL,
  `pro_img3` varchar(100) NOT NULL,
  `pro_img4` varchar(100) NOT NULL,
  `pro_video` varchar(100) NOT NULL,
  `pro_pdf` varchar(100) NOT NULL,
  `product_type` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `product_range` varchar(30) NOT NULL,
  `operating` varchar(30) NOT NULL,
  `body_type` varchar(30) NOT NULL,
  `punching_holes` varchar(30) NOT NULL,
  `punching_capacity` varchar(50) NOT NULL,
  `machine_weight` varchar(50) NOT NULL,
  `made_in` varchar(20) NOT NULL,
  `warranty` varchar(100) NOT NULL,
  `desc1` text NOT NULL,
  `insert_date` varchar(40) NOT NULL,
  `modify_date` varchar(40) NOT NULL,
  `ratings` int(1) NOT NULL DEFAULT '5'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `binding_product`
--

INSERT INTO `binding_product` (`id`, `pro_order`, `cat_seo`, `pro_name`, `pro_seo`, `pro_id`, `brand_seo`, `stock`, `remaining_stock`, `price`, `offers`, `pro_img`, `pro_img2`, `pro_img3`, `pro_img4`, `pro_video`, `pro_pdf`, `product_type`, `model`, `product_range`, `operating`, `body_type`, `punching_holes`, `punching_capacity`, `machine_weight`, `made_in`, `warranty`, `desc1`, `insert_date`, `modify_date`, `ratings`) VALUES
(1, 1, 'binding-machines', 'Vivaan Spiral Binding Machine', 'vivaan-spiral-binding-machine', 'PROID16069088', 'vivaan', 25, 25, 4720.00, 25, 'pro_img/binding_machine/vivaan-spiral-binding-machine1.png', 'pro_img/binding_machine/vivaan-spiral-binding-machine2.png', '', '', '', 'pro_pdf/binding_machine/vivaan-spiral-binding-machine.png', 'Spiral-Binding', 'HSB', 'Medium', 'Manual', 'Metal', '40 Holes', '08 Papers at a time', '', 'India', 'Limited Carry-in-Warranty', '<p><span style=\"font-family: Verdana;\">Vivaan Spiral Binder HSB (Lite)</span></p><p><span style=\"font-family: Verdana;\">Hole Size: 4mm</span></p><p><span style=\"font-family: Verdana;\">Punching Capacity: 08 to 10 papers (70gsm)</span></p>', '16-Jun-2020 16:25:55', '08-Jul-2020 16:10:54', 4),
(2, 2, 'binding-machines', 'Ultimate Spiral Binding Machine', 'ultimate-spiral-binding-machine', 'PROID16064862', 'ultimate', 25, 25, 7080.00, 25, 'pro_img/binding_machine/ultimate-spiral-binding-machine1.png', 'pro_img/binding_machine/ultimate-spiral-binding-machine2.png', 'pro_img/binding_machine/ultimate-spiral-binding-machine3.png', '', '', 'pro_pdf/binding_machine/ultimate-spiral-binding-machine.png', 'Spiral-Binding', 'HSB', 'Medium', 'Manual', 'Metal', '41', '20 Papers at a time', '', 'India', 'Limited Carry-in-Warranty', '<p>ULTIMATE SPIRAL BINDER (HSB)</p><p>Hole Size: 4mm</p><p>Punching Capacity: 20 papers (70gsm)</p>', '16-Jun-2020 17:03:35', '08-Jul-2020 16:11:28', 5),
(3, 3, 'binding-machines', 'Ultimate Spiral Binding Machine', 'ultimate-spiral-binding-machine', 'PROID16065804', 'ultimate', 25, 25, 5310.00, 20, 'pro_img/binding_machine/ultimate-spiral-binding-machine11.png', 'pro_img/binding_machine/ultimate-spiral-binding-machine21.png', '', '', '', 'pro_pdf/binding_machine/ultimate-spiral-binding-machine1.png', 'Spiral-Binding', 'FS', 'Medium', 'Manual', 'Metal', '41', '15 Papers at a time', '', 'India', 'Limited Carry-in-Warranty', '<p><span style=\"font-family: Verdana;\">ULTIMATE SPIRAL BINDER (FS)</span></p><p><span style=\"font-family: Verdana;\">Hole Size: 4mm</span></p><p><span style=\"font-family: Verdana;\">Punching Capacity: 15 papers (70gsm)</span></p>', '16-Jun-2020 18:23:28', '08-Jul-2020 16:12:00', 5),
(4, 4, 'binding-machines', 'COMB BINDING MACHINE', 'comb-binding-machine', 'PROID07074429', 'kent', 10, 10, 6490.00, 10, 'pro_img/binding_machine/comb-binding-machine1.png', 'pro_img/binding_machine/comb-binding-machine2.jpg', '', '', '', 'pro_pdf/binding_machine/comb-binding-machine.jpg', 'Comb Binding Machine', 'CB-666', 'Basic', 'Manual', 'Metal-with-plastic', '21 Holes (3x8 mm)', '12 Papers at a time', '6.5 kgs', '', 'Not applicable', '<p><span style=\"font-family: Verdana;\">Comb Binding Machine</span></p><p><span style=\"font-family: Verdana;\">Make: KENT</span></p><p><span style=\"font-family: Verdana;\">Model: CB-666</span></p><p><span style=\"font-family: Verdana;\">Margin Adjustable range: 2.5/4.5/6.5 mm</span></p><p><span style=\"font-family: Verdana;\">Maximum Paper size: A4</span></p>', '07-Jul-2020 16:07:51', '08-Jul-2020 16:12:50', 4),
(5, 5, 'binding-machines', 'Wiro Binding Machine', 'wiro-binding-machine', 'PROID07075687', 'kent', 10, 10, 6500.00, 10, 'pro_img/binding_machine/wiro-binding-machine1.png', 'pro_img/binding_machine/wiro-binding-machine2.png', '', '', '', 'pro_pdf/binding_machine/wiro-binding-machine.png', 'Wiro-Binding', 'WB-555', 'Basic', 'Manual', 'Metal-with-plastic', '34 Holes (4x4 mm)', '12 Papers at a time', '7.1 kg', '', 'Not applicable', '<p style=\"line-height: 26px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;Sofia Pro Light&quot;, sans-serif; letter-spacing: -0.3499999940395355px;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana;\">Wiro Binding Machine</span></p><p style=\"line-height: 26px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;Sofia Pro Light&quot;, sans-serif; letter-spacing: -0.3499999940395355px;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana;\">Make: KENT</span></p><p style=\"line-height: 26px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;Sofia Pro Light&quot;, sans-serif; letter-spacing: -0.3499999940395355px;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana;\">Model: WB-555</span></p><p style=\"line-height: 26px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;Sofia Pro Light&quot;, sans-serif; letter-spacing: -0.3499999940395355px;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana;\">Margin Adjustable range: 2.5/4.5/6.5 mm</span></p><p style=\"line-height: 26px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;Sofia Pro Light&quot;, sans-serif; letter-spacing: -0.3499999940395355px;\"><span style=\"font-family: Verdana; font-size: 0.875rem;\">Maximum Paper size: A4</span></p><p style=\"margin-bottom: 0px; line-height: 26px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;Sofia Pro Light&quot;, sans-serif; letter-spacing: -0.3499999940395355px;\"><span style=\"font-family: Verdana; font-size: 0.875rem;\">Maximum Binding Capacity: 120 sheets</span><br></p>', '07-Jul-2020 16:13:07', '', 4),
(6, 6, 'binding-machines', 'Thermal Binding Machine', 'thermal-binding-machine', 'PROID14079381', 'vivaan', 5, 5, 7670.00, 20, 'pro_img/binding_machine/thermal-binding-machine1.jpg', 'pro_img/binding_machine/thermal-binding-machine2.jpg', 'pro_img/binding_machine/thermal-binding-machine3.jpg', '', '', '', 'Thermal-Binding', 'TBM', 'Basic', 'Electric', 'Metal', '', '', '4.5kg', 'China', 'Not applicable', '<h6><b style=\"font-size: 16px; margin: 0px; padding: 0px; caret-color: rgb(51, 51, 51); font-family: arial;\"><span style=\"font-family: Verdana; color: rgb(255, 0, 0);\">Specifications:</span></b><ul style=\"font-size: 16px; margin-bottom: 0px; caret-color: rgb(51, 51, 51); font-family: arial;\"><li style=\"margin-left: 17px; list-style-type: initial; list-style-position: outside;\"><span style=\"font-family: Verdana; color: rgb(255, 0, 255);\">40mm EASY BINDING,</span></li></ul><ul style=\"font-size: 16px; margin-bottom: 0px; caret-color: rgb(51, 51, 51); font-family: arial;\"><li style=\"margin-left: 17px; list-style-type: initial; list-style-position: outside;\"><span style=\"font-family: Verdana; color: rgb(255, 0, 255);\">Binding Type: Electric Thermal Binding,</span></li><li style=\"margin-left: 17px; list-style-type: initial; list-style-position: outside;\"><span style=\"font-family: Verdana; color: rgb(255, 0, 255);\">CPU CONTROL SYSTEM</span></li><li style=\"margin-left: 17px; list-style-type: initial; list-style-position: outside;\"><span style=\"font-family: Verdana; color: rgb(255, 0, 255);\">PTC Ceramic Heating&nbsp;</span></li></ul><ul style=\"font-size: 16px; margin-bottom: 0px; caret-color: rgb(51, 51, 51); font-family: arial;\"><li style=\"margin-left: 17px; list-style-type: initial; list-style-position: outside;\"><span style=\"font-family: Verdana; color: rgb(255, 0, 255);\">Warm Up Time: 4 Minutes, </span></li><li style=\"margin-left: 17px; list-style-type: initial; list-style-position: outside;\"><span style=\"font-family: Verdana; color: rgb(255, 0, 255);\">Duty Cycle 2hr on / 30 min off</span></li></ul><ul style=\"font-size: 16px; margin-bottom: 0px; caret-color: rgb(51, 51, 51); font-family: arial;\"><li style=\"margin-left: 17px; list-style-type: initial; list-style-position: outside;\"><span style=\"font-family: Verdana; color: rgb(255, 0, 255);\">Voltage AC: 220~240V 50Hz</span></li><li style=\"margin-left: 17px; list-style-type: initial; list-style-position: outside;\"><span style=\"font-family: Verdana; color: rgb(255, 0, 255);\">Overheating Protection,</span></li><li style=\"margin-left: 17px; list-style-type: initial; list-style-position: outside;\"><span style=\"font-family: Verdana; color: rgb(255, 0, 255);\">Power Consumption: 100W</span></li><li style=\"margin-left: 17px; list-style-type: initial; list-style-position: outside;\"><span style=\"color: rgb(255, 0, 255);\">Manually Press Tight</span></li></ul></h6>', '14-Jul-2020 18:29:40', '14-Jul-2020 18:37:12', 4),
(7, 7, 'binding-machines', 'Electric Spiral Binding Machine', 'electric-spiral-binding-machine', 'PROID14074492', 'pilot', 5, 5, 35000.00, 15, 'pro_img/binding_machine/electric-spiral-binding-machine1.jpg', 'pro_img/binding_machine/electric-spiral-binding-machine2.jpeg', '', '', '', '', 'Spiral-Binding', 'PILOT', 'Heavy', 'Electric', 'Metal', '5mm', '35 Papers at a time', '70kg', 'India', 'Not applicable', '<p>Brand: PILOT</p><p>Machine: Electric Motor (Foot Panel)</p><p>Punching Length: 18\" (A3 Size)</p><p>Page Capacity: up to 35 pages</p><p>Device: 0.5 HP 1440 RPM</p>', '14-Jul-2020 19:36:40', '', 4),
(8, 8, 'binding-machines', 'Neha Creasing Machine', 'neha-creasing-machine', 'PROID14076838', 'neha', 5, 5, 7500.00, 20, 'pro_img/binding_machine/neha-creasing-machine1.jpg', 'pro_img/binding_machine/neha-creasing-machine2.jpg', '', '', '', '', 'Creasing Machine', '', 'Basic', 'Manual', 'Metal', '', '', '', 'India', '', '<p><span style=\"font-size: 19px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; color: rgb(255, 0, 255);\"><span style=\"font-family: Helvetica;\">Neha Manual Creasing Machine for</span><br><span style=\"font-family: Helvetica;\"> </span></span><span style=\"font-size: 19px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; color: rgb(255, 0, 255);\"><span style=\"font-family: Helvetica;\">Paper Creasing, Easy to Use,</span><br><span style=\"font-family: Helvetica;\"> </span></span><span style=\"font-size: 19px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; color: rgb(255, 0, 255);\"><span style=\"font-family: Helvetica;\">Easy to View Crease Mark</span><br></span><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-size: 16px; caret-color: rgb(132, 132, 132); font-family: arial; letter-spacing: 0.20000000298023224px;\"><span style=\"font-family: Verdana;\"><span style=\"font-family: Helvetica;\">• NO SPECIAL SKILL REQUIRED</span><br></span></span></span><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-size: 16px; caret-color: rgb(132, 132, 132); font-family: arial; letter-spacing: 0.20000000298023224px;\"><span style=\"font-family: Verdana;\"><span style=\"font-family: Helvetica;\">• NO WASTAGE</span><br></span></span></span><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-size: 16px; caret-color: rgb(132, 132, 132); font-family: arial; letter-spacing: 0.20000000298023224px;\"><span style=\"font-family: Verdana;\"><span style=\"font-family: Helvetica;\">• LONG LIFE</span><br></span></span></span><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-size: 16px; caret-color: rgb(132, 132, 132); font-family: arial; letter-spacing: 0.20000000298023224px;\"><span style=\"font-family: Verdana;\"><span style=\"font-family: Helvetica;\">• HEAVY DUTY</span><br></span></span></span><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-size: 16px; caret-color: rgb(132, 132, 132); font-family: arial; letter-spacing: 0.20000000298023224px;\"><span style=\"font-family: Verdana;\"><span style=\"font-family: Helvetica;\">• CREASING BLADE</span><br></span></span></span><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-size: 16px; caret-color: rgb(132, 132, 132); font-family: arial; letter-spacing: 0.20000000298023224px;\"><span style=\"font-family: Verdana;\"><span style=\"font-family: Helvetica;\">• TIME SAVING</span><br></span></span></span><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-size: 16px; caret-color: rgb(132, 132, 132); font-family: arial; letter-spacing: 0.20000000298023224px;\"><span style=\"font-family: Verdana;\"><span style=\"font-family: Helvetica;\">• PLACE &amp; PRESS</span><br></span></span></span><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-size: 16px; caret-color: rgb(132, 132, 132); font-family: arial; letter-spacing: 0.20000000298023224px;\"><span style=\"font-family: Verdana;\"><span style=\"font-family: Helvetica;\">• CREASING WIDTH UP TO 510MM</span><br></span></span></span><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-size: 16px; caret-color: rgb(132, 132, 132); font-family: arial; letter-spacing: 0.20000000298023224px;\"><span style=\"font-family: Verdana;\"><span style=\"font-family: Helvetica;\">• CREASES TO A MAXIMUM THICKNESS OF 350 GSM</span><br></span></span></span><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-size: 16px; caret-color: rgb(132, 132, 132); font-family: Helvetica; letter-spacing: 0.20000000298023224px;\">• CREASING DEPTH 0.4MM</span></span></p>', '14-Jul-2020 20:01:19', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `catseo` varchar(60) NOT NULL,
  `brandname` varchar(100) NOT NULL,
  `brandseo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `catseo`, `brandname`, `brandseo`) VALUES
(1, 'digital-copiers', 'Kyocera', 'kyocera'),
(2, 'digital-copiers', 'Konica', 'konica'),
(3, 'digital-copiers', 'Samsung', 'samsung'),
(4, 'colour-copiers', 'Kyocera', 'kyocera'),
(5, 'colour-copiers', 'Konica', 'konica'),
(6, 'colour-copiers', 'Samsung', 'samsung'),
(8, 'digital-copiers', 'Hp', 'hp'),
(9, 'id-card-printers', 'Hp', 'hp');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(60) NOT NULL,
  `cat_seo` varchar(60) NOT NULL,
  `description` varchar(900) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `cat_seo`, `description`) VALUES
(1, 'A3 MFPs B/W', 'a3-mfps-bw', 'We are authorized Business Partner of Kyocera, HP, Canon, Brother & Epson for Andhra Pradesh and Telangana states.'),
(2, 'A3 MFPs Colour', 'a3-mfps-colour', 'We are authorized Business Partner of Kyocera, HP, Canon, Brother & Epson for Andhra Pradesh and Telangana states.'),
(3, 'A4 MFPs LaserJet', 'a4-mfps-laserjet', 'Canon, Epson, Brother & HP'),
(4, 'A3 Refurbished MFPs', 'a3-refurbished-mfps', 'We are dealing Canon RC (Re-conditioned) Digital Copiers along with service support all spare parts and Consumables and available at market most competitive prices.'),
(5, 'ID Card Printers', 'id-card-printers', 'Reliable. Flexible. Effortless. PVC card printers set new standards in this single-sided and Double sided full-color card printer loaded with user-friendly features and dynamic options, making it the most powerful and flexible printers. Clients can avail from us quality ID Card Printer. Developed using excellent quality components and other material, all our printers are highly demanded by clients. Available in market at economical rates.'),
(6, 'Fax Machines', 'fax-machines', 'Most agree that the biggest advantage of thermal fax machines is the cost. As a tried and true machine with basic components, thermal fax machines are cheaper to build, and thus cheaper to buy. The cost benefits can prove better in the long run as well, especially compared to ink-jet fax machines, which require expensive ink cartridge refills. For those machines that use the direct thermal method, the only refill they need is the paper itself. We are acclaimed distributors and suppliers of a wide range of Fax Machines. These are widely recommended by various clients as a excellent means of communication for sending various documents and papers from one place to another. Based on advance technologies, these machines are extensively used for various stationary requirements. Our machines are very easy to operate and ensure high productivity.'),
(7, 'Spares & Consumables', 'spares-and-consumables', 'We are engaged in offering our esteemed clients a very comprehensive range of Spares And Consumables. Our range is admired by the client in all over the nation and known for its excellent quality and premium range. Our products are available at market leading prices. We are engaged in offering our prestigious clients an unparalleled range of Spares & Consumables. Our range is known for its excellent quality and premium range for which these are admired by the clients in all over the nation. Our range is available at market most leading prices.'),
(8, 'Wide Format Printers', 'wide-format-printers', 'We are authorized Business Partner of Kyocera Document Solutions India Pvt. Ltd., Konica Minotal Business Solutions India Pvt. Ltd. HP and Samsung India Electronics Pvt. Ltd., for Andhra Pradesh and Telangana states.'),
(9, 'Page-wide A3 MFP\'s', 'page-wide-a3-mfps', ''),
(10, 'HP Laptops', 'hp-laptops', ''),
(11, 'Production Machines', 'production-machines', 'PRESENTING THE CANON IMAGEPRESS C165\r\nINSPIRES YOU TO DO MORE'),
(12, 'A4 MFPs InkTank', 'a4-mfps-inktank', 'Epson, Canon, Brother & HP'),
(13, 'Note Counting Machines', 'note-counting-machines', '');

-- --------------------------------------------------------

--
-- Table structure for table `client_service_support`
--

CREATE TABLE `client_service_support` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(60) NOT NULL,
  `location` varchar(150) NOT NULL,
  `machine_info` varchar(20) NOT NULL,
  `counter_reading` varchar(60) NOT NULL,
  `type_of_problem` varchar(100) NOT NULL,
  `customer_type` varchar(60) NOT NULL,
  `additional_details` varchar(300) NOT NULL,
  `document` varchar(100) NOT NULL,
  `date` varchar(40) NOT NULL,
  `message_sent` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_verification`
--

CREATE TABLE `email_verification` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_verification`
--

INSERT INTO `email_verification` (`id`, `email`, `otp`, `date`) VALUES
(2, 'ssnnoouu@gmail.com', '803380', '30-Apr-2020 13:37:35'),
(3, 'radha@gmail.com', '591545', '02-May-2020 12:20:48'),
(4, 'hakeem@ugra.in', '512983', '08-May-2020 14:37:31'),
(5, 'hakeem@ugra.in', '642912', '08-May-2020 14:39:44'),
(6, 'sumant2k10cs14@gmail.com', '262666', '08-May-2020 14:54:47'),
(7, 'sumant2k10cs14@gmail.com', '678998', '08-May-2020 15:56:12'),
(8, 'hakeem@ugra.in', '884262', '08-May-2020 16:03:30'),
(9, 'image97@gmail.com', '455305', '21-May-2020 17:38:06'),
(10, 'suman@ugra.in', '738592', '01-Jul-2020 17:43:26'),
(11, 'kakumanu.raju@gmail.com', '141166', '01-Jul-2020 18:52:08'),
(12, 'suman@ugra.in', '316175', '07-Jul-2020 12:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `filtering`
--

CREATE TABLE `filtering` (
  `id` int(11) NOT NULL,
  `categories` varchar(1000) NOT NULL,
  `perfect_for` varchar(1000) NOT NULL,
  `color_output` varchar(1000) NOT NULL,
  `paper_size` varchar(1000) NOT NULL,
  `optional_unit` varchar(1000) NOT NULL,
  `connectivity` varchar(1000) NOT NULL,
  `product_type` varchar(1000) NOT NULL,
  `functions` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filtering`
--

INSERT INTO `filtering` (`id`, `categories`, `perfect_for`, `color_output`, `paper_size`, `optional_unit`, `connectivity`, `product_type`, `functions`) VALUES
(1, 'Printer Promotions, Personal & Home Printers, Business Printers, Scanners, Color Laserjets, Samsung Print', 'Home^Students^Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company&apos;s^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Small-Medium-Business^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^Insurance-and-Banks^IT-and-Industries^Multinational-Company&apos;s^Corporate-offices^Educational-Institutions^Offset-Printing^Construction-And-Architecture', 'Color^Black-and-white', 'A6^A5^A4^LGL^B4^A3^SRA3+^12X18-in^12X36-in^12X48-in', 'Trolley^Stand-with-wheels^Platen-Cover^Additional-Trays^Document-Tray^Additional-Paper-Decks^Paper-Feeders^FAX-System^Internet-FAX-Kit^Network-Card^For-Additional-Network^Scan-Extension-Kit^HDD^Duplex-Unit^RADF^DSDF^NFC-Kit^Data-Security-Kit^Card-Authentication-KIT^Banner-Guide^Care-Packs^Finisher-Units^Sorter-units^OCR-Software^Numeric-Key-Pad^Wireless-LAN-Interface^Wi-Fi-Kit', 'USB-port^Network', 'A3-MFP^A4-MFP^Wide-Format', 'Print-Scan-and-Copy^Print-Scan-Copy-and-Optional-Fax^Print-Scan-Copy-and-Fax^Printer-Only^Copier-Only');

-- --------------------------------------------------------

--
-- Table structure for table `general_coupon`
--

CREATE TABLE `general_coupon` (
  `gen_cpn_id` int(11) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_value` float(5,2) NOT NULL,
  `create_date` varchar(30) NOT NULL,
  `end_date` varchar(30) NOT NULL,
  `no_of_use` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lamination_brand`
--

CREATE TABLE `lamination_brand` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(100) NOT NULL,
  `BrandSeo` varchar(100) NOT NULL,
  `BrandImage` varchar(100) NOT NULL,
  `insertdate` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lamination_brand`
--

INSERT INTO `lamination_brand` (`id`, `BrandName`, `BrandSeo`, `BrandImage`, `insertdate`) VALUES
(1, 'Excelam', 'excelam', 'brand_img/excelam.png', '14-Apr-2020 15:00:02'),
(2, 'Neha', 'neha', 'brand_img/neha.png', '14-Apr-2020 15:00:17'),
(3, 'JMD', 'jmd', 'brand_img/jmd.png', '14-Apr-2020 15:00:52'),
(4, 'Black Gold', 'black-gold', 'brand_img/black.png', '14-Apr-2020 15:01:18'),
(5, 'PDA3', 'pda3', 'brand_img/pda3.png', '14-Apr-2020 15:01:36'),
(6, 'KENT', 'kent', 'brand_img/kent1.png', '18-Jul-2020 14:21:46'),
(7, 'GOBBLER', 'gobbler', 'brand_img/gobbler.png', '18-Jul-2020 18:41:10');

-- --------------------------------------------------------

--
-- Table structure for table `lamination_product`
--

CREATE TABLE `lamination_product` (
  `id` int(11) NOT NULL,
  `pro_order` int(5) NOT NULL,
  `cat_seo` varchar(50) NOT NULL DEFAULT 'lamination-machines',
  `pro_name` varchar(100) NOT NULL,
  `pro_seo` varchar(100) NOT NULL,
  `pro_id` varchar(30) NOT NULL,
  `brand_seo` varchar(100) NOT NULL,
  `stock` int(10) NOT NULL,
  `remaining_stock` int(5) NOT NULL,
  `price` float(10,2) NOT NULL,
  `offers` int(11) NOT NULL,
  `pro_img` varchar(100) NOT NULL,
  `pro_img2` varchar(100) NOT NULL,
  `pro_img3` varchar(100) NOT NULL,
  `pro_img4` varchar(100) NOT NULL,
  `pro_video` varchar(100) NOT NULL,
  `pro_pdf` varchar(100) NOT NULL,
  `product_type` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `speed` varchar(30) NOT NULL,
  `operation_temprature` varchar(30) NOT NULL,
  `warmup_time` varchar(30) NOT NULL,
  `laminating_thickness` varchar(30) NOT NULL,
  `rollers` int(5) NOT NULL,
  `reverse_function` varchar(10) NOT NULL,
  `cooling_fans` varchar(20) NOT NULL,
  `machine_body` varchar(20) NOT NULL,
  `power_consumption` varchar(20) NOT NULL,
  `warranty` varchar(100) NOT NULL,
  `desc1` text NOT NULL,
  `insert_date` varchar(40) NOT NULL,
  `modify_date` varchar(40) NOT NULL,
  `ratings` int(1) NOT NULL DEFAULT '5'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lamination_product`
--

INSERT INTO `lamination_product` (`id`, `pro_order`, `cat_seo`, `pro_name`, `pro_seo`, `pro_id`, `brand_seo`, `stock`, `remaining_stock`, `price`, `offers`, `pro_img`, `pro_img2`, `pro_img3`, `pro_img4`, `pro_video`, `pro_pdf`, `product_type`, `model`, `speed`, `operation_temprature`, `warmup_time`, `laminating_thickness`, `rollers`, `reverse_function`, `cooling_fans`, `machine_body`, `power_consumption`, `warranty`, `desc1`, `insert_date`, `modify_date`, `ratings`) VALUES
(1, 1, 'lamination-machines', 'Excelam Laminator', 'excelam-laminator', 'PROID13067368', 'excelam', 10, 10, 2950.00, 10, 'pro_img/lamination_machine/excelam-laminator1.jpg', 'pro_img/lamination_machine/excelam-laminator2.jpg', 'pro_img/lamination_machine/excelam-laminator3.jpeg', '', '', 'pro_pdf/lamination_machine/excelam-laminator.jpg', 'Pouch-Laminator', 'ECO12', '0.35m/min', '', '3/5 min', 'Up to 180', 4, 'Yes', 'No', 'Metal', '620w', 'Not applicable', '<p>Excelam Eco-12 Pouch Laminator</p>', '13-Jun-2020 17:16:37', '08-Jul-2020 16:16:52', 3),
(2, 2, 'lamination-machines', 'Excelam Laminator XL-12', 'excelam-laminator-xl-12', 'PROID13068087', 'excelam', 25, 25, 4130.00, 10, 'pro_img/lamination_machine/excelam-laminator11.jpg', 'pro_img/lamination_machine/excelam-laminator21.jpg', 'pro_img/lamination_machine/excelam-laminator31.jpeg', '', '', 'pro_pdf/lamination_machine/excelam-laminator1.jpg', 'Pouch-Laminator', 'XL-12', '0.5m/min', '80-180', '3/5 min', 'Up to 250', 4, 'Yes', 'Yes', 'Metal', '620w', 'Not applicable', '<p>Excelam XL-12 Pouch Laminator</p>', '13-Jun-2020 17:28:07', '08-Jul-2020 16:17:21', 4),
(3, 3, 'lamination-machines', 'PDA3 Laminator', 'pda3-laminator', 'PROID13067629', 'pda3', 25, 25, 9440.00, 10, 'pro_img/lamination_machine/pda3-laminator1.jpeg', 'pro_img/lamination_machine/pda3-laminator2.png', 'pro_img/lamination_machine/pda3-laminator3.jpg', '', '', 'pro_pdf/lamination_machine/pda3-laminator.jpg', 'Pouch-Laminator', 'PDA3-330SL', '0.3-1.6m/min', '80-150', '3/5 min', 'Up to 300', 4, 'Yes', 'Yes', 'Metal', '650w', 'Not applicable', '<p><span style=\"font-family: Verdana;\">PDA3-330SL Pouch Laminator</span></p><p><span style=\"font-family: Verdana;\">Digital Display</span></p>', '13-Jun-2020 17:42:33', '08-Jul-2020 16:18:39', 5),
(4, 4, 'lamination-machines', 'Neha N-440 Advance Laminator', 'neha-n-440-advance-laminator', 'PROID13061905', 'neha', 25, 25, 5310.00, 20, 'pro_img/lamination_machine/neha-n-440-advance-laminator1.jpg', 'pro_img/lamination_machine/neha-n-440-advance-laminator2.jpg', 'pro_img/lamination_machine/neha-n-440-advance-laminator3.jpg', '', '', 'pro_pdf/lamination_machine/neha-n-440-advance-laminator.jpg', 'Pouch-Laminator', 'N-440', '0.35m/min', '80-180', '5min', 'Up to 250', 4, 'Yes', 'Yes', 'Metal', '620w', 'Limited Carry-in-Warranty', '<p><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">NEHA N-440 ADVANCE LAMINATOR</span></p>', '13-Jun-2020 18:01:17', '08-Jul-2020 16:19:30', 4),
(5, 5, 'lamination-machines', 'Black Gold Laminator', 'black-gold-laminator', 'PROID13069516', 'black-gold', 25, 25, 4130.00, 20, 'pro_img/lamination_machine/black-gold-laminator1.jpg', 'pro_img/lamination_machine/black-gold-laminator2.jpg', '', '', '', 'pro_pdf/lamination_machine/black-gold-laminator.jpg', 'Pouch-Laminator', 'BG-333', '0.35m/min', '80-180', '5min', 'Up to 250', 4, 'Yes', 'Yes', 'Metal', '650w', 'Not applicable', '<p><span style=\"font-family: Verdana; color: rgb(255, 0, 0);\">BLACK GOLD A3 Laminator</span></p>', '13-Jun-2020 20:04:07', '09-Jul-2020 18:19:50', 4),
(6, 6, 'lamination-machines', 'Neha N440 Laminator', 'neha-n440-laminator', 'PROID08077012', 'neha', 5, 5, 7080.00, 15, 'pro_img/lamination_machine/neha-n440-laminator1.jpg', 'pro_img/lamination_machine/neha-n440-laminator2.jpg', '', '', '', 'pro_pdf/lamination_machine/neha-n440-laminator.jpg', 'Pouch-Laminator', 'N-440', '0.35m/Min', '80-180', '3/5 min', 'Up to 300 microns', 4, 'Yes', 'Yes', 'Metal', '620w', 'One year Carry-in-warranty', '<p><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">NEHA N440 Lamination Machine</span></p><p><span style=\"caret-color: rgb(0, 0, 0); font-family: Verdana; font-size: 15px; color: rgb(0, 0, 255);\">A3 Document Laminator</span></p><p><span style=\"color: rgb(0, 0, 255);\"><font face=\"arial\"><span style=\"caret-color: rgb(0, 0, 0); font-size: 15px; font-family: Verdana;\">Pouch Sizes: ID Card size, A5, A4, LGL &amp; A3</span></font><br></span><br></p>', '08-Jul-2020 16:30:19', '', 4),
(7, 7, 'lamination-machines', 'KENT Laminator', 'kent-laminator', 'PROID18078198', 'kent', 5, 5, 4200.00, 20, 'pro_img/lamination_machine/kent-laminator1.jpg', 'pro_img/lamination_machine/kent-laminator2.jpg', 'pro_img/lamination_machine/kent-laminator3.jpg', '', '', '', 'Pouch-Laminator', 'KS-12', '', '80-180', '3/5 min', 'Up to 250', 4, 'Yes', 'Yes', 'Metal', '620w', 'Not applicable', '<h6><span style=\"color: rgb(255, 0, 0);\">KENT Laminator KS-12</span></h6>', '18-Jul-2020 16:16:27', '', 4),
(8, 8, 'lamination-machines', 'Gobbler Laminator', 'gobbler-laminator', 'PROID18075219', 'gobbler', 10, 10, 3500.00, 20, 'pro_img/lamination_machine/gobbler-laminator1.jpg', 'pro_img/lamination_machine/gobbler-laminator2.jpg', 'pro_img/lamination_machine/gobbler-laminator3.jpg', '', '', '', 'Pouch-Laminator', 'TYPE 330', '500mm/min', '', '3/5 min', 'Up to 225', 4, 'Yes', '', 'Metal', '620w', 'Not applicable', '<h6><span style=\"color: rgb(0, 0, 255);\">GOBBLER LAMINATOR</span></h6>', '18-Jul-2020 18:44:46', '', 4),
(9, 9, 'lamination-machines', 'BQ Laminator', 'bq-laminator', 'PROID18074828', 'excelam', 10, 10, 3250.00, 20, 'pro_img/lamination_machine/bq-laminator1.png', 'pro_img/lamination_machine/bq-laminator2.png', 'pro_img/lamination_machine/bq-laminator3.png', '', '', '', 'Pouch-Laminator', '8309', '', '80-180', '3/5 min', '', 4, 'Yes', '', '', '750w', 'Not applicable', '<p>BQ A3 Lamination Machine</p><p>Model No. 8309</p><p><br></p>', '18-Jul-2020 20:01:01', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `machine_filtering`
--

CREATE TABLE `machine_filtering` (
  `id` int(11) NOT NULL,
  `catseo` varchar(50) NOT NULL,
  `product_type_filter` varchar(500) NOT NULL,
  `model_filter` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `machine_filtering`
--

INSERT INTO `machine_filtering` (`id`, `catseo`, `product_type_filter`, `model_filter`) VALUES
(1, 'binding-machines', 'Spiral-Binding^Comb-Binding^Wiro-Binding^Thermal-Binding', 'FS^HSB'),
(2, 'lamination-machines', 'Pouch-Laminator^Roll-Laminator', 'ECO12^XL-12^N-220^N-440^N-550');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscriber`
--

CREATE TABLE `newsletter_subscriber` (
  `id` int(11) NOT NULL,
  `emailid` varchar(60) NOT NULL,
  `is_subscribed` int(11) NOT NULL DEFAULT '1',
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newsletter_subscriber`
--

INSERT INTO `newsletter_subscriber` (`id`, `emailid`, `is_subscribed`, `date`) VALUES
(3, 'sumantokala@gmail.com', 1, '05-Jun-2020 17:31:47'),
(4, 'suman@ugra.in', 1, '01-Jul-2020 18:08:10'),
(5, 'imageindia.net@domstat.su', 1, '06-Jul-2020 13:41:39'),
(6, 'averiwalters.sc.138217490@mojorage.life', 1, '15-Jul-2020 01:15:53'),
(7, 'averiwalters.sc.138217491@mojorage.life', 1, '15-Jul-2020 01:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `online_order_details`
--

CREATE TABLE `online_order_details` (
  `order_id` varchar(20) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `product_id` varchar(200) NOT NULL,
  `product_name` varchar(400) NOT NULL,
  `product_image` varchar(1000) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `unit_price` varchar(100) NOT NULL,
  `product_quantity` varchar(100) NOT NULL,
  `product_subtotal` float(10,2) NOT NULL,
  `shipping_charge` float(10,2) NOT NULL,
  `coupon_no` varchar(50) NOT NULL,
  `coupon_value` float(5,2) NOT NULL,
  `total_amount` float(10,2) NOT NULL,
  `billing_name` varchar(60) NOT NULL,
  `billing_email` varchar(100) NOT NULL,
  `billing_mobile` varchar(12) NOT NULL,
  `billing_country` varchar(20) NOT NULL,
  `billing_address` varchar(250) NOT NULL,
  `billing_city` varchar(30) NOT NULL,
  `billing_state` varchar(30) NOT NULL,
  `billing_zip` varchar(8) NOT NULL,
  `shipping_name` varchar(60) NOT NULL,
  `shipping_email` varchar(100) NOT NULL,
  `shipping_mobile` varchar(12) NOT NULL,
  `shipping_country` varchar(30) NOT NULL,
  `shipping_address` varchar(200) NOT NULL,
  `shipping_city` varchar(30) NOT NULL,
  `shipping_state` varchar(30) NOT NULL,
  `shipping_zip` varchar(8) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `payment_status` varchar(30) NOT NULL,
  `order_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online_order_details`
--

INSERT INTO `online_order_details` (`order_id`, `userid`, `product_id`, `product_name`, `product_image`, `currency`, `unit_price`, `product_quantity`, `product_subtotal`, `shipping_charge`, `coupon_no`, `coupon_value`, `total_amount`, `billing_name`, `billing_email`, `billing_mobile`, `billing_country`, `billing_address`, `billing_city`, `billing_state`, `billing_zip`, `shipping_name`, `shipping_email`, `shipping_mobile`, `shipping_country`, `shipping_address`, `shipping_city`, `shipping_state`, `shipping_zip`, `payment_mode`, `payment_status`, `order_date`) VALUES
('610190520115837', 'ssnnoouu@gmail.com', 'PROID25042518,PROID25045900,PROID25042255,PROID25041458,PROID25044195,PROID25046015,PROID25043189', 'Kyocera Taskalfa 5053ci,KYOCERA TASKalfa 2201,Kyocera Taskalfa 3253ci,Kyocera Taskalfa 4053ci,Kyocera Ecosys M2640idw,HP PageWide Managed Color MFP P77960,HP DesignJet T830 24-inch MFP', 'pro_img/colour_copiers/kyocera/kyocera-taskalfa-5053ci1.png,pro_img/colour_copiers/kyocera/kyocera-taskalfa-22011.jpeg,pro_img/colour_copiers/kyocera/kyocera-taskalfa-3253ci1.jpg,pro_img/colour_copiers/kyocera/kyocera-taskalfa-4053ci1.jpg,pro_img/colour_copiers/kyocera/kyocera-ecosys-m2640idw1.png,pro_img/colour_copiers/hp/hp-pagewide-managed-color-mfp-p779601.jpg,pro_img/colour_copiers/hp/hp-designjet-t830-24-inch-mfp1.png', 'INR', '425000,65000,249000,325000,49000,349000,180000', '1,1,1,1,1,1,1', 1642000.00, 255.00, '', 0.00, 1642255.00, 'sumant kumar', 'sumant2k10cs14@gmail.com', '8709288095', 'India', 'vill-bardih math\r\npo- bardih,\r\nps-islampur', 'islampur', 'Bihar', '801303', 'Sonu kumar', 'ssnnoouu@gmail.com', '7366914827', 'India', 'SVH Hostel, yella reddy guda, beside bsnl office(Ameerpet)', 'Ameerpet', 'Telangana', '500083', 'onlinepayment', '', '19-May-2020 15:29:03');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `order_id` varchar(40) NOT NULL,
  `product_id` varchar(200) NOT NULL,
  `product_name` varchar(400) NOT NULL,
  `product_image` varchar(1000) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `unit_price` varchar(100) NOT NULL,
  `product_quantity` varchar(100) NOT NULL,
  `product_subtotal` float(10,2) NOT NULL,
  `shipping_charge` float(10,2) NOT NULL,
  `coupon_no` varchar(50) NOT NULL,
  `coupon_value` float(5,2) NOT NULL,
  `total_amount` float(10,2) NOT NULL,
  `billing_name` varchar(60) NOT NULL,
  `billing_email` varchar(100) NOT NULL,
  `billing_mobile` varchar(12) NOT NULL,
  `billing_country` varchar(20) NOT NULL,
  `billing_address` varchar(250) NOT NULL,
  `billing_city` varchar(30) NOT NULL,
  `billing_state` varchar(30) NOT NULL,
  `billing_zip` varchar(8) NOT NULL,
  `shipping_name` varchar(60) NOT NULL,
  `shipping_email` varchar(100) NOT NULL,
  `shipping_mobile` varchar(12) NOT NULL,
  `shipping_country` varchar(30) NOT NULL,
  `shipping_address` varchar(200) NOT NULL,
  `shipping_city` varchar(30) NOT NULL,
  `shipping_state` varchar(30) NOT NULL,
  `shipping_zip` varchar(8) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `payment_status` varchar(30) NOT NULL,
  `order_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `userid`, `order_id`, `product_id`, `product_name`, `product_image`, `currency`, `unit_price`, `product_quantity`, `product_subtotal`, `shipping_charge`, `coupon_no`, `coupon_value`, `total_amount`, `billing_name`, `billing_email`, `billing_mobile`, `billing_country`, `billing_address`, `billing_city`, `billing_state`, `billing_zip`, `shipping_name`, `shipping_email`, `shipping_mobile`, `shipping_country`, `shipping_address`, `shipping_city`, `shipping_state`, `shipping_zip`, `payment_mode`, `payment_status`, `order_date`) VALUES
(8, 'hakeem@ugra.in', '2552080520123452', 'PROID25041862,PROID25049089,PROID25047701,PROID25043520', 'Epson Eco Tank L3101,Canon Pixma G3010 AIO,HP LaserJet Managed MFP E82560,HP PageWide Managed Color MFP P77950', 'pro_img/digital_copiers/epson/epson-eco-tank-l31011.jpg,pro_img/digital_copiers/canon/canon-pixma-g3010-aio1.jpg,pro_img/digital_copiers/hp/hp-laserjet-managed-mfp-e825601.png,pro_img/digital_copiers/hp/hp-pagewide-managed-color-mfp-p779501.jpg', '', '9500,12900,499000,249000', '1,1,1,2', 1019400.00, 255.00, '', 0.00, 1019655.00, 'Hakeem', 'hakeem@ugra.in', '8297740909', 'India', 'hfjgjggghkangdghskg', 'Hyderabad', 'Telangana', '500034', 'Hakeem', 'hakeem@ugra.in', '8297740909', 'India', 'hfjgjggghkangdghskg', 'Hyderabad', 'Telangana', '500034', 'Cash On Delivery', 'confirm', '2020-05-08'),
(10, 'hakeem@ugra.in', '2036180520080356', 'M247fdw,PROID25046110', 'HP Laser Pro A4 MFP M427fdw,Kyocera M2040DN', 'pro_img/digital_copiers/hp/hp-laser-pro-a4-mfp-m427fdw1.jpg,pro_img/multi_function_printers/kyocera/kyocera-m2040dn1.jpg', '', '49000,36935', '1,1', 85935.00, 255.00, '', 0.00, 86190.00, 'Hakeem', 'hakeem@ugra.in', '8297740909', 'India', 'hfjgjggghkangdghskggghjkb', 'Hyderabad', 'Telangana', '500034', 'Hakeem', 'hakeem@ugra.in', '8297740909', 'India', 'hfjgjggghkangdghskggghjkb', 'Hyderabad', 'Telangana', '500034', 'Cash On Delivery', 'confirm', '2020-05-18'),
(11, 'image97@gmail.com', '787210520020914', 'PROID25045635', 'Brother DCP-B7535 A4 MFP', 'pro_img/digital_copiers/brother/brother-dcp-b7535-a4-mfp1.jpg', 'INR', '18999', '1', 18999.00, 255.00, '', 0.00, 19254.00, 'prasad', 'image97@gmail.com', '9533334444', 'India', 'Ground Floor, Minerva Complex', 'Hyderabad', 'Telangana', '500003', 'prasad', 'image97@gmail.com', '9533334444', 'India', 'Ground Floor, Minerva Complex', 'Hyderabad', 'Telangana', '500003', 'Cash On Delivery', 'confirm', '2020-05-21'),
(12, 'image97@gmail.com', '742010720020614', 'M247fdw', 'HP Laser Pro A4 MFP M427fdw', 'pro_img/digital_copiers/hp/hp-laser-pro-a4-mfp-m427fdw1.jpg', 'INR', '49000', '1', 49000.00, 255.00, '', 0.00, 49255.00, 'Prasad Raju', 'image97@gmail.com', '9533334444', 'India', 'secunderabad', 'Hyderabad', 'Telangana', '500003', 'Prasad Raju', 'image97@gmail.com', '9533334444', 'India', 'secunderabad', 'Hyderabad', 'Telangana', '500003', 'Cash On Delivery', 'confirm', '2020-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `otp_verification`
--

CREATE TABLE `otp_verification` (
  `otpid` int(11) NOT NULL,
  `mobile_no` varchar(12) NOT NULL,
  `otp` int(12) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `particular_coupon`
--

CREATE TABLE `particular_coupon` (
  `cpn_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `mobile_no` varchar(12) NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `coupon_value` float(10,2) NOT NULL,
  `create_date` varchar(30) NOT NULL,
  `end_date` varchar(30) NOT NULL,
  `message_sent` int(11) NOT NULL,
  `no_of_use` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `pro_order` int(5) NOT NULL,
  `pro_id` varchar(200) NOT NULL,
  `cat_seo` varchar(1000) NOT NULL,
  `brand_seo` varchar(100) NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `pro_seo` varchar(100) NOT NULL,
  `price` float(10,2) NOT NULL,
  `pro_img` varchar(100) NOT NULL,
  `pro_img2` varchar(100) NOT NULL,
  `pro_img3` varchar(100) NOT NULL,
  `pro_img4` varchar(100) NOT NULL,
  `pro_video` varchar(200) NOT NULL,
  `offers` float(10,2) NOT NULL,
  `desc1` longtext NOT NULL,
  `pro_pdf` varchar(200) NOT NULL,
  `stock` int(5) NOT NULL,
  `remaining_stock` int(5) NOT NULL,
  `adding_date` varchar(30) NOT NULL,
  `modify_date` varchar(30) NOT NULL,
  `most_view` int(11) NOT NULL DEFAULT '0',
  `bestseller` int(11) NOT NULL DEFAULT '0',
  `ratings` int(5) NOT NULL DEFAULT '5'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `pro_order`, `pro_id`, `cat_seo`, `brand_seo`, `pro_name`, `pro_seo`, `price`, `pro_img`, `pro_img2`, `pro_img3`, `pro_img4`, `pro_video`, `offers`, `desc1`, `pro_pdf`, `stock`, `remaining_stock`, `adding_date`, `modify_date`, `most_view`, `bestseller`, `ratings`) VALUES
(1, 17, 'M247fdw', 'a4-mfps-laserjet', 'hp', 'HP Laser Pro A4 MFP M427fdw', 'hp-laser-pro-a4-mfp-m427fdw', 49000.00, 'pro_img/digital_copiers/hp/hp-laser-pro-a4-mfp-m427fdw1.jpg', 'pro_img/digital_copiers/hp/hp-laser-pro-a4-mfp-m427fdw2.jpg', '', '', '', 20.00, '<p><span style=\"font-size: 16px; caret-color: rgb(255, 255, 255); font-family: Arial; letter-spacing: 0.30000001192092896px; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">Fast print, scan, copy, and fax performance plus robust, comprehensive security built for how you work. This MFP finishes key tasks faster and guards against threats. Original HP Toner cartridges with JetIntelligence give you more pages.</span></p>', 'pro_pdf/hp-laser-pro-a4-mfp-m427fdw.pdf', 49, 48, '25-Apr-2020 13:30:21', '09-Jul-2020 17:27:24', 1, 0, 5),
(2, 10, 'PROID25045635', 'a4-mfps-laserjet', 'brother', 'Brother DCP-B7535 A4 MFP', 'brother-dcp-b7535-a4-mfp', 18999.00, 'pro_img/digital_copiers/brother/brother-dcp-b7535-a4-mfp1.jpg', 'pro_img/multi_function_printers/brother/brother-dcp-b7535-a4-mfp2.jpg', 'pro_img/multi_function_printers/brother/brother-dcp-b7535-a4-mfp3.jpg', '', '', 10.00, '<h6><span style=\"color: rgb(0, 0, 255);\">Why compromise, when you have a choice.<br></span><span style=\"color: rgb(0, 0, 255);\">Choose genuine. Say no to non-genuine.<br></span><span style=\"color: rgb(156, 0, 255);\">Get Quality, Warranty, Durability, Longevity.</span></h6>', 'pro_pdf/brother-dcp-b7535-a4-mfp.pdf', 25, 25, '25-Apr-2020 13:34:45', '13-Jul-2020 15:35:57', 1, 0, 5),
(3, 12, 'PROID25043449', 'a4-mfps-laserjet', 'brother', 'Brother DCP-L5600DN LGL MFP', 'brother-dcp-l5600dn-lgl-mfp', 35000.00, 'pro_img/digital_copiers/brother/brother-dcp-l5600dn-lgl-mfp1.jpg', 'pro_img/digital_copiers/brother/brother-dcp-l5600dn-lgl-mfp2.jpeg', '', '', '', 20.00, '<div class=\"page\" title=\"Page 2\" style=\"caret-color: rgb(0, 0, 0); font-family: -webkit-standard;\"><div class=\"section\"><div class=\"layoutArea\"><div class=\"column\"><div class=\"page\" title=\"Page 2\"><div class=\"section\"><div class=\"layoutArea\"><div class=\"column\"><h6><div class=\"page\" title=\"Page 1\"><div class=\"section\"><div class=\"layoutArea\"><div class=\"column\"><h6><span style=\"color: rgb(0, 0, 255); font-family: Verdana;\">Brother Business Laser MuLti-Function copier </span></h6><h6><span style=\"font-family: Verdana;\" helvetica=\"\" neue\";=\"\" font-size:=\"\" 12px;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" color:=\"\" rgb(156,=\"\" 0,=\"\" 255);\"=\"\">For Offices and Small Workgroups </span></h6></div></div></div></div></h6></div></div></div></div></div></div></div></div>', 'pro_pdf/brother-dcp-l5600dn-lgl-mfp.pdf', 10, 10, '25-Apr-2020 13:36:58', '02-Jul-2020 15:52:42', 1, 0, 5),
(4, 1, 'PROID25041862', 'a4-mfps-inktank', 'epson', 'Epson EcoTank L3101', 'epson-ecotank-l3101', 9900.00, 'pro_img/digital_copiers/epson/epson-eco-tank-l31011.jpg', 'pro_img/a4_mfps_inktank/epson/epson-ecotank-l31012.jpg', '', '', '', 10.00, '<div class=\"page\" title=\"Page 1\" style=\"caret-color: rgb(0, 0, 0);\"><div class=\"section\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 14pt; font-family: Verdana; color: rgb(0, 0, 255);\">The all-new EcoTank Printer from Epson</span></p></div></div></div></div>', 'pro_pdf/epson-ecotank-l3101.pdf', 10, 10, '25-Apr-2020 13:44:33', '11-Jul-2020 17:05:44', 1, 0, 4),
(5, 2, 'PROID25048920', 'a4-mfps-inktank', 'epson', 'Epson Eco Tank L3150', 'epson-eco-tank-l3150', 12500.00, 'pro_img/digital_copiers/epson/epson-eco-tank-l31501.jpg', 'pro_img/a4_mfps_laserjet/epson/epson-eco-tank-l31502.jpg', '', '', '', 5.00, '<p style=\"margin-right: 0px; margin-bottom: 2px; margin-left: 0px; font-stretch: normal; line-height: normal; font-family: \" helvetica=\"\" neue\";\"=\"\"><b style=\"color: rgb(0, 0, 255);\">Epson EcoTank L3150 Printer</b></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: \" helvetica=\"\" neue\";\"=\"\"><b style=\"color: rgb(0, 0, 0);\">Print/Scan/Copy/WiFi</b></p>', 'pro_pdf/epson-eco-tank-l3150.pdf', 10, 10, '25-Apr-2020 13:46:52', '11-Jul-2020 17:22:58', 0, 0, 4),
(6, 3, 'PROID25044234', 'a4-mfps-inktank', 'epson', 'Epson Eco Tank L5190', 'epson-eco-tank-l5190', 17900.00, 'pro_img/digital_copiers/epson/epson-eco-tank-l51901.jpg', 'pro_img/digital_copiers/epson/epson-eco-tank-l51902.jpg', '', '', '', 5.00, '<h6><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">EcoTank </span><b><span style=\"font-family: Verdana;\">L5190</span></b><span style=\"font-family: Verdana;\"> Wi-Fi Multifunction InkTank Printer with ADF</span></span></h6><h6><ul style=\"font-size: 16px; margin-bottom: 10px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Cost per print- 7 paise (Black) and 18 paise (Colour)</span></li></ul><ul style=\"font-size: 16px; margin-bottom: 10px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Compact integrated tank design</span></li></ul><ul style=\"font-size: 16px; margin-bottom: 10px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">High yield ink bottles</span></li></ul><ul style=\"font-size: 16px; margin-bottom: 10px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Spill-free, error-free refilling</span></li></ul><ul style=\"font-size: 16px; margin-bottom: 10px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Print, scan, copy, fax with ADF</span></li></ul><ul style=\"font-size: 16px; margin-bottom: 10px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Wi-Fi, Wi-Fi Direct</span></li></ul><ul style=\"font-size: 16px; margin-bottom: 10px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Epson Connect</span></li></ul><ul style=\"font-size: 16px; margin-bottom: 10px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Borderless printing up to 4R&nbsp;</span></li></ul></h6>', 'pro_pdf/epson-eco-tank-l5190.pdf', 10, 10, '25-Apr-2020 13:50:04', '11-Jul-2020 17:33:50', 0, 0, 4),
(7, 6, 'PROID25049249', 'a4-mfps-inktank', 'epson', 'Epson L805 Printer', 'epson-l805-printer', 17900.00, 'pro_img/digital_copiers/epson/epson-l805-printer1.jpg', 'pro_img/digital_copiers/epson/epson-l805-printer2.png', '', '', '', 5.00, '<h1 data-feature-name=\"title\" data-template-name=\"title\" class=\"a-size-small a-color-secondary a-text-normal\" style=\"padding: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; text-rendering: optimizeLegibility; font-family: \" amazon=\"\" ember\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 1.3rem=\"\" !important;=\"\" line-height:=\"\" 1.4=\"\" !important;\"=\"\"></h1><h6><span style=\"font-family: Verdana; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255);\">Epson L805 Single-Function Wireless Ink Tank Colour Photo Printer</span></h6><h6><span style=\"font-family: Verdana; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255);\">PRESENTING AFFORDABILITY IN HIGH-RESOLUTION</span></h6><h6><ul style=\"font-size: 16px; margin-bottom: 10px; word-break: normal; font-family: \"Helvetica LT W01 Roman\", Helvetica, \"Open Sans\", Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255);\">Lowest Printing Costs</span></li></ul><ul style=\"font-size: 16px; margin-bottom: 10px; word-break: normal; font-family: \"Helvetica LT W01 Roman\", Helvetica, \"Open Sans\", Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255);\">Wi-Fi & Epson iPrint</span></li></ul><ul style=\"font-size: 16px; margin-bottom: 10px; word-break: normal; font-family: \"Helvetica LT W01 Roman\", Helvetica, \"Open Sans\", Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255);\">CD/DVD Printing Capability</span></li></ul></h6>', 'pro_pdf/epson-l805-printer.pdf', 10, 10, '25-Apr-2020 13:51:52', '11-Jul-2020 17:51:39', 0, 0, 4),
(8, 7, 'PROID25049096', 'a4-mfps-inktank', 'canon', 'Canon Pixma G2010 AIO', 'canon-pixma-g2010-aio', 10500.00, 'pro_img/digital_copiers/canon/canon-pixma-g2010-aio1.jpg', 'pro_img/digital_copiers/canon/canon-pixma-g2010-aio2.jpg', 'pro_img/digital_copiers/canon/canon-pixma-g2010-aio3.jpg', '', '', 5.00, '<h6><span style=\"color: rgb(0, 0, 255);\">Canon Pixma G2010 All-in-one Ink Tank MFP</span></h6><h6><h5><span style=\"color: rgb(255, 0, 0);\"><span style=\"caret-color: rgb(111, 111, 111); font-family: Lato, sans-serif; font-size: 16px;\">Print, Scan & Copy<br></span><span style=\"caret-color: rgb(111, 111, 111); font-family: Lato, sans-serif; font-size: 16px;\">ISO Standard print speed (A4): 8.8ipm (mono) / 5.0ipm (colour)<br></span><span style=\"caret-color: rgb(111, 111, 111); font-family: Lato, sans-serif; font-size: 16px;\">Photo Speed (10.16 x 15.24cm): 60s (borderless)</span></span></h5></h6>', '', 10, 10, '25-Apr-2020 13:54:08', '11-Jul-2020 18:22:21', 0, 1, 4),
(9, 8, 'PROID25049089', 'a4-mfps-inktank', 'canon', 'Canon Pixma G3010 AIO', 'canon-pixma-g3010-aio', 13500.00, 'pro_img/digital_copiers/canon/canon-pixma-g3010-aio1.jpg', 'pro_img/digital_copiers/canon/canon-pixma-g3010-aio2.jpg', '', '', '', 5.00, '<h6><b style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">One-Touch Direct Wireless Connection</span></b></h6><h6><b style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\"><br></span></b><span style=\"color: rgb(206, 0, 0); font-family: Verdana;\">Connect to your smartphone easily.</span></h6><p><span style=\"font-family: Verdana;\">\r\n</span></p><div><br></div>', '', 10, 10, '25-Apr-2020 13:55:46', '11-Jul-2020 18:26:09', 1, 1, 4),
(10, 4, 'PROID25046629', 'a3-mfps-colour', 'hp', 'HP Color A3 MFP E77428', 'hp-color-a3-mfp-e77428', 299000.00, 'pro_img/digital_copiers/hp/hp-color-a3-mfp-e774281.jpg', 'pro_img/digital_copiers/hp/hp-color-a3-mfp-e774282.jpg', 'pro_img/digital_copiers/hp/hp-color-a3-mfp-e774283.png', '', '', 20.00, '<h6><span style=\"font-size: 12pt; font-family: HPSimplifiedW02; color: rgb(0, 0, 255);\"><span style=\"font-family: Impact;\">Big color. Small cost.</span><br></span><span style=\"color: rgb(0, 0, 0); font-family: \"Lucida Grande\"; font-size: 10pt;\">Print premium, professional-quality documents with vivid color images and graphics for a low cost. </span><span style=\"color: rgb(0, 0, 0); font-family: \"Lucida Grande\"; font-size: 10pt;\">Get consistent, professional quality and performance you count on with Original HP toner cartridges and drums.</span></h6>', 'pro_pdf/hp-color-a3-mfp-e77428.pdf', 10, 10, '25-Apr-2020 13:57:52', '01-Jul-2020 20:15:37', 1, 1, 5),
(11, 7, 'PROID25043900', 'page-wide-a3-mfps', 'hp', 'HP PageWide Managed Color MFP P77940', 'hp-pagewide-managed-color-mfp-p77940', 199000.00, 'pro_img/digital_copiers/hp/hp-pagewide-managed-color-mfp-p779401.jpg', 'pro_img/digital_copiers/hp/hp-pagewide-managed-color-mfp-p779402.png', 'pro_img/digital_copiers/hp/hp-pagewide-managed-color-mfp-p779403.png', '', '', 25.00, '<div class=\"page\" title=\"Page 1\" style=\"caret-color: rgb(0, 0, 0);\"><div class=\"layoutArea\"><div class=\"column\"><h6><span style=\"font-size: 12pt; font-family: HPSimplifiedBold; color: rgb(0, 0, 255);\">A new era of low-cost colour, high productivity, and strongest security</span></h6></div></div></div>', 'pro_pdf/hp-pagewide-managed-color-mfp-p77940.pdf', 50, 50, '25-Apr-2020 13:59:54', '04-Jul-2020 21:01:11', 0, 1, 5),
(12, 15, 'PROID25047376', 'a3-mfps-bw', 'hp', 'HP LaserJet Managed MFP E82540', 'hp-laserjet-managed-mfp-e82540', 299000.00, 'pro_img/digital_copiers/hp/hp-laserjet-managed-mfp-e825401.jpg', 'pro_img/digital_copiers/hp/hp-laserjet-managed-mfp-e825402.jpg', 'pro_img/digital_copiers/hp/hp-laserjet-managed-mfp-e825403.jpg', '', '', 20.00, '<h6><span lucida=\"\" grande\";\"=\"\" style=\"font-family: inherit; font-size: 0.875rem; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);\">Quality printing for a great value is a smart choice for any business. Produce premium, professional-quality documents at a competitive low cost with an </span><span lucida=\"\" grande\";\"=\"\" style=\"font-family: inherit; font-size: 0.875rem; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 255);\">HP LaserJet MFP</span><span lucida=\"\" grande\";\"=\"\" style=\"font-family: inherit; font-size: 0.875rem; caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0);\"> built to make your work—and your business—look its best.</span></h6>', 'pro_pdf/hp-laserjet-managed-mfp-e82540.pdf', 25, 25, '25-Apr-2020 14:01:47', '01-Jul-2020 18:23:48', 0, 0, 5),
(13, 16, 'PROID25046270', 'a3-mfps-bw', 'hp', 'HP LaserJet Managed MFP E82550', 'hp-laserjet-managed-mfp-e82550', 399000.00, 'pro_img/digital_copiers/hp/hp-laserjet-managed-mfp-e825501.png', 'pro_img/digital_copiers/hp/hp-laserjet-managed-mfp-e825502.png', 'pro_img/digital_copiers/hp/hp-laserjet-managed-mfp-e825503.png', '', '', 20.00, '<h6><span style=\"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\"><span style=\"font-family: \" lucida=\"\" grande\";\"=\"\">Quality printing for a great value is a smart choice for any business. </span></span><span style=\"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\"><span style=\"font-family: \" lucida=\"\" grande\";\"=\"\">Produce premium, professional-quality documents at a competitive low cost with an </span></span><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(0, 0, 255); font-family: \" lucida=\"\" grande\";\"=\"\">HP High-speed LaserJet MFP</span><span style=\"color: rgb(0, 0, 0); font-family: \" lucida=\"\" grande\";\"=\"\"> </span><span style=\"color: rgb(0, 0, 0); font-family: \" lucida=\"\" grande\";=\"\" font-size:=\"\" 0.875rem;=\"\" text-align:=\"\" inherit;\"=\"\">built to make your work—and your business—look its best.</span></span></h6>', 'pro_pdf/hp-laserjet-managed-mfp-e82550.pdf', 50, 50, '25-Apr-2020 14:03:48', '01-Jul-2020 18:32:38', 1, 0, 5),
(14, 17, 'PROID25047701', 'a3-mfps-bw', 'hp', 'HP LaserJet Managed MFP E82560', 'hp-laserjet-managed-mfp-e82560', 499000.00, 'pro_img/digital_copiers/hp/hp-laserjet-managed-mfp-e825601.png', 'pro_img/digital_copiers/hp/hp-laserjet-managed-mfp-e825602.png', 'pro_img/digital_copiers/hp/hp-laserjet-managed-mfp-e825603.png', '', '', 20.00, '<h6><span style=\"color: rgb(0, 0, 0); font-family: \" lucida=\"\" grande\";\"=\"\">Avoid interruptions with an </span><span lucida=\"\" grande\";\"=\"\" style=\"color: rgb(0, 0, 255);\">HP LaserJet Managed Hi-speed MFP</span><span style=\"color: rgb(0, 0, 0); font-family: \" lucida=\"\" grande\";\"=\"\"> designed to be streamlined for maximum productivity.</span></h6><h6></h6><h6><span style=\"color: rgb(0, 0, 0); font-family: \" lucida=\"\" grande\";\"=\"\">Only HP Enterprise printers repair themselves from attacks in real time, with built-in security to help keep your network safe. Automatically monitor threats, detect intrusions, and validate operating software with security offered only by HP</span></h6>', 'pro_pdf/hp-laserjet-managed-mfp-e82560.pdf', 50, 49, '25-Apr-2020 14:06:44', '01-Jul-2020 18:47:26', 0, 1, 5),
(15, 9, 'PROID25044210', 'a4-mfps-inktank', 'canon', 'Canon Pixma G4010', 'canon-pixma-g4010', 17000.00, 'pro_img/digital_copiers/canon/canon-pixma-g40101.jpg', 'pro_img/digital_copiers/canon/canon-pixma-g40102.jpg', 'pro_img/digital_copiers/canon/canon-pixma-g40103.jpg', '', '', 5.00, '<h6><b><span style=\"font-family: Verdana; color: rgb(255, 0, 0);\">Refillable Ink Tank Wireless All-In-One with Fax </span></b></h6><h6><span style=\"font-family: Verdana; color: rgb(255, 0, 0);\">Designed for high volume printing at low running cost</span></h6><h6><ul style=\"list-style-type: disc\"><li style=\"font-stretch: normal; font-size: 12px; line-height: normal; font-family: Avenir;\"><span style=\"font-family: Verdana; color: rgb(255, 0, 0);\">Print, Scan, Copy and Fax</span></li><li style=\"font-stretch: normal; font-size: 12px; line-height: normal; font-family: Avenir;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-family: Verdana;\"><br></span><span style=\"font-family: Verdana;\">ISO Standard print speed (A4): 8.8ipm (mono) / 5.0ipm (colour)</span></span></li><li style=\"font-stretch: normal; font-size: 12px; line-height: normal; font-family: Avenir;\"><span style=\"color: rgb(255, 0, 0);\"><span style=\"font-family: Verdana;\"><br></span><span style=\"font-family: Verdana;\">Photo Speed (10.16 x 15.24cm): 60s (borderless)</span></span></li></ul></h6><span style=\"font-family: Verdana;\">\r\n</span><span style=\"font-family: Verdana;\">\r\n</span><ul style=\"list-style-type: disc\"><span style=\"font-family: Verdana;\">\r\n</span><li style=\"font-stretch: normal; font-size: 12px; line-height: normal; font-family: Avenir; color: rgb(0, 0, 0);\"><span style=\"font-stretch: normal; font-size: 10px; line-height: normal; font-family: Menlo;\"></span></li><span style=\"font-family: Verdana;\">\r\n</span><li style=\"font-stretch: normal; font-size: 12px; line-height: normal; font-family: Avenir; color: rgb(0, 0, 0);\"><span style=\"font-stretch: normal; font-size: 10px; line-height: normal; font-family: Menlo;\"></span></li><span style=\"font-family: Verdana;\">\r\n</span><li style=\"font-stretch: normal; font-size: 12px; line-height: normal; font-family: Avenir; color: rgb(0, 0, 0);\"><span style=\"font-stretch: normal; font-size: 10px; line-height: normal; font-family: Menlo;\"></span></li><li></li>\r\n</ul>', '', 50, 50, '25-Apr-2020 14:11:21', '11-Jul-2020 18:32:45', 1, 1, 4),
(16, 5, 'PROID25045405', 'a3-mfps-bw', 'kyocera', 'Kyocera TASKalfa 4012i', 'kyocera-taskalfa-4012i', 155000.00, 'pro_img/digital_copiers/kyocera/kyocera-taskalfa-4012i1.jpeg', 'pro_img/digital_copiers/kyocera/kyocera-taskalfa-4012i2.jpg', 'pro_img/digital_copiers/kyocera/kyocera-taskalfa-4012i3.jpg', '', '', 20.00, '<ul class=\"list-mf\" style=\"margin-bottom: 27px; font-family: helvetica, arial, sans-serif;\"><li><span style=\"color: rgb(0, 0, 0);\">With a wide range of innovative solutions, it is perfectly suitable for demanding desktop users and small workgroups.</span></li><li><span style=\"color: rgb(0, 0, 0);\">Fast A4 copy/print speed up to 40 cpm.</span></li><li><span style=\"color: rgb(0, 0, 0);\">Speedy first copy time in just 3.6 seconds and warm up time 18 seconds.</span></li><li><span style=\"color: rgb(0, 0, 0);\">High image quality with 1,200 x 1,200 dpi print resolution.</span></li><li><span style=\"color: rgb(0, 0, 0);\">Superior scanning performance with dual scan speed up to 160/160 ipm A4 Mono/Color (Optional DP-7110 required)</span></li></ul>', 'pro_pdf/kyocera-taskalfa-4012i.pdf', 50, 50, '25-Apr-2020 14:13:10', '26-Jun-2020 15:47:05', 1, 0, 5),
(17, 6, 'PROID25046301', 'a3-mfps-bw', 'kyocera', 'Kyocera TASKalfa 5003i', 'kyocera-taskalfa-5003i', 199000.00, 'pro_img/digital_copiers/kyocera/kyocera-taskalfa-5003i1.jpg', 'pro_img/digital_copiers/kyocera/kyocera-taskalfa-5003i2.jpg', 'pro_img/digital_copiers/kyocera/kyocera-taskalfa-5003i3.jpg', '', '', 25.00, '<h6><span style=\"color: rgb(255, 0, 0);\">Kyocera TASKalfa 5003i High-speed A3 MFP</span></h6>', 'pro_pdf/kyocera-taskalfa-5003i.pdf', 50, 50, '25-Apr-2020 14:14:38', '26-Jun-2020 15:26:30', 1, 1, 5),
(18, 10, 'PROID25043520', 'page-wide-a3-mfps', 'hp', 'HP PageWide Managed Color MFP P77950', 'hp-pagewide-managed-color-mfp-p77950', 249000.00, 'pro_img/digital_copiers/hp/hp-pagewide-managed-color-mfp-p779501.jpg', 'pro_img/digital_copiers/hp/hp-pagewide-managed-color-mfp-p779502.png', '', '', '', 20.00, '<p><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 255); font-size: 14pt; font-family: HPSimplifiedLight;\">HP Managed MFPs and printers are optimized for managed environments.<br></span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 255); font-size: 14pt; font-family: HPSimplifiedLight;\">Offering increased monthly page volumes and fewer interventions,<br></span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 255); font-size: 14pt; font-family: HPSimplifiedLight;\">this portfolio of products can help reduce printing and copying costs.</span><br></p>', 'pro_pdf/hp-pagewide-managed-color-mfp-p77950.pdf', 5, 5, '25-Apr-2020 14:16:11', '04-Jul-2020 21:02:27', 0, 0, 5),
(19, 1, 'PRO8585', 'production-machines', 'canon', 'imageRUNNER ADVANCE 8585', 'imagerunner-advance-8585', 899000.00, 'pro_img/digital_copiers/hp/imagerunner-advance-85851.jpg', 'pro_img/digital_copiers/hp/imagerunner-advance-85852.jpeg', 'pro_img/digital_copiers/hp/imagerunner-advance-85853.jpg', '', '', 20.00, '<h6><span style=\"font-weight: normal; letter-spacing: normal; caret-color: rgb(102, 102, 102); font-size: 15px; text-align: center; color: rgb(255, 0, 0);\">The imageRUNNER ADVANCE 8585 is a solution that provides a highly efficient and dependable mono output that truly streamlines your workflows and excels in corporate and light production environments.</span></h6><h6><span style=\"font-weight: normal; letter-spacing: normal; caret-color: rgb(102, 102, 102); font-size: 15px; text-align: center; color: rgb(255, 0, 0);\"><br></span><span style=\"color: rgb(0, 0, 255); caret-color: rgb(102, 102, 102); font-size: 15px; text-align: center;\">Benefits</span></h6><ul><li><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-family: inherit; font-size: 0.875rem; font-style: inherit; font-variant-caps: inherit; font-weight: 400; text-indent: -1.4em; letter-spacing: 0.05rem;\"><span style=\"font-family: \"Lucida Grande\";\">B&W printing at 85 ppm</span></span></span></li></ul>', 'pro_pdf/imagerunner-advance-8585.pdf', 5, 5, '25-Apr-2020 14:17:38', '10-Jul-2020 17:58:57', 0, 0, 5),
(20, 9, 'PROID25048358', 'a3-mfps-bw', 'hp', 'HP LaserJet MFP M433a', 'hp-laserjet-mfp-m433a', 40000.00, 'pro_img/colour_copiers/hp/hp-laserjet-mfp-m433a1.png', 'pro_img/colour_copiers/hp/hp-laserjet-mfp-m433a2.png', 'pro_img/colour_copiers/hp/hp-laserjet-mfp-m433a3.png', '', '', 20.00, '<p><span style=\"font-family: Arial;\">﻿</span><span style=\"font-family: Arial; color: rgb(255, 0, 255);\">HP LASERJET A3 MFP M433a<br></span><span style=\"font-family: Arial; color: rgb(0, 0, 255);\">PRINT SCAN COPY</span></p>', 'pro_pdf/hp-laserjet-mfp-m433a.pdf', 50, 50, '25-Apr-2020 14:42:45', '14-Jul-2020 20:45:57', 0, 0, 3),
(21, 11, 'PROID25049092', 'a3-mfps-bw', 'hp', 'HP LaserJet MFP M436dn', 'hp-laserjet-mfp-m436dn', 75000.00, 'pro_img/colour_copiers/hp/hp-laserjet-mfp-m436dn1.png', 'pro_img/colour_copiers/hp/hp-laserjet-mfp-m436dn2.png', 'pro_img/colour_copiers/hp/hp-laserjet-mfp-m436dn3.png', '', '', 20.00, '<p class=\"dropdown-item\"><span style=\"color: rgb(0, 0, 255); background-color: rgb(255, 255, 255);\">HP LaserJet MFP M436dn<br></span><span style=\"color: rgb(255, 0, 255); font-family: inherit; font-size: 0.875rem; text-align: inherit; background-color: rgb(255, 255, 255);\">NETWORK PRINT SCAN COPY WITH DUPLEX</span></p>', 'pro_pdf/hp-laserjet-mfp-m436dn.pdf', 25, 25, '25-Apr-2020 14:44:10', '14-Jul-2020 20:48:34', 0, 0, 4),
(22, 12, 'PROID25044284', 'a3-mfps-bw', 'hp', 'HP LaserJet MFP M436nda', 'hp-laserjet-mfp-m436nda', 95000.00, 'pro_img/colour_copiers/hp/hp-laserjet-mfp-m436nda1.jpg', 'pro_img/colour_copiers/hp/hp-laserjet-mfp-m436nda2.jpg', 'pro_img/colour_copiers/hp/hp-laserjet-mfp-m436nda3.png', '', '', 10.00, '<p><span style=\"color: rgb(0, 0, 255);\">HP LaserJet MFP M436nda<br></span><span style=\"color: rgb(255, 0, 255); text-align: inherit; white-space: nowrap; background-color: rgb(248, 249, 250); font-size: 0.875rem;\">PRINT, SCAN, COPY, NETWORK, DUPLEX & RADF</span></p>', 'pro_pdf/hp-laserjet-mfp-m436nda.pdf', 50, 50, '25-Apr-2020 14:45:45', '14-Jul-2020 20:49:38', 0, 0, 4),
(23, 13, 'PROID25048478', 'a3-mfps-bw', 'hp', 'HP M72625dn', 'hp-m72625dn', 145000.00, 'pro_img/colour_copiers/hp/hp-m72625dn1.png', 'pro_img/colour_copiers/hp/hp-m72625dn2.png', 'pro_img/colour_copiers/hp/hp-m72625dn3.png', '', '', 20.00, '<h6><span style=\"-webkit-font-kerning: none; background-color: rgb(255, 255, 255); color: rgb(0, 0, 255);\">HP LASERJET A3 MFP M72625DN<br></span><span style=\"-webkit-font-kerning: none; background-color: rgb(255, 255, 255); color: rgb(255, 0, 255);\">Exceptionally LOW PRINTING COSTS IN ITS CLASS</span></h6>', 'pro_pdf/hp-m72625dn.pdf', 50, 50, '25-Apr-2020 14:47:09', '14-Jul-2020 20:53:39', 0, 0, 5),
(24, 14, 'PROID25046530', 'a3-mfps-bw', 'hp', 'HP M72630dn', 'hp-m72630dn', 155000.00, 'pro_img/colour_copiers/hp/hp-m72630dn1.png', 'pro_img/colour_copiers/hp/hp-m72630dn2.png', 'pro_img/colour_copiers/hp/hp-m72630dn3.png', 'pro_img/digital_copiers_bw/hp/hp-m72630dn4.png', '', 20.00, '<h6><span style=\"font-family: Poppins, sans-serif; font-size: 18px; font-weight: 800; -webkit-font-kerning: none; color: rgb(0, 0, 255);\"><span style=\"font-family: \"Lucida Grande\";\">HP LASERJET A3 MFP M72630DN</span><br></span><span style=\"font-family: \"Lucida Grande\"; font-size: 18px; font-weight: 800; -webkit-font-kerning: none; color: rgb(255, 0, 255);\">Exceptionally LOW PRINTING COSTS IN ITS CLASS</span></h6>', 'pro_pdf/hp-m72630dn.pdf', 25, 25, '25-Apr-2020 14:48:29', '14-Jul-2020 20:55:00', 0, 0, 5),
(25, 1, 'PROID25042990', 'a3-mfps-bw', 'kyocera', 'Kyocera TASKalfa 1800', 'kyocera-taskalfa-1800', 45000.00, 'pro_img/colour_copiers/kyocera/kyocera-taskalfa-18001.jpg', 'pro_img/digital_copiers/kyocera/kyocera-taskalfa-18002.png', 'pro_img/digital_copiers/kyocera/kyocera-taskalfa-18003.jpg', '', '', 20.00, '<h6><span style=\"background-color: rgb(255, 255, 255); color: rgb(255, 0, 0);\"><span style=\"font-family: \"Helvetica Neue\";\">Kyocera TA-1800 & TA-2200</span><br></span><h6><span style=\"color: rgb(255, 0, 255); font-family: \"Helvetica Neue\";\">PRINT/SCAN/COPY</span><span style=\"font-family: \"Helvetica Neue\";\">﻿</span></h6></h6>', 'pro_pdf/kyocera-taskalfa-1800.pdf', 50, 50, '25-Apr-2020 14:50:07', '11-Jul-2020 15:40:36', 0, 0, 4),
(26, 2, 'PROID25045900', 'a3-mfps-bw', 'kyocera', 'KYOCERA TASKalfa 2201', 'kyocera-taskalfa-2201', 78000.00, 'pro_img/colour_copiers/kyocera/kyocera-taskalfa-22011.jpeg', 'pro_img/digital_copiers/kyocera/kyocera-taskalfa-22012.png', 'pro_img/digital_copiers/kyocera/kyocera-taskalfa-22013.png', '', '', 20.00, '<h6><span style=\"color: rgb(255, 0, 0);\">KYOCERA TA2201<br></span><span style=\"color: rgb(255, 0, 255);\">Print Scan Copy with Network, Colour Scan, Duplex & RADF</span></h6>', 'pro_pdf/kyocera-taskalfa-2201.pdf', 50, 50, '25-Apr-2020 14:51:16', '11-Jul-2020 15:39:12', 1, 1, 4),
(27, 30, 'PROID25042255', 'a3-mfps-colour', 'kyocera', 'Kyocera Taskalfa 3253ci', 'kyocera-taskalfa-3253ci', 249000.00, 'pro_img/colour_copiers/kyocera/kyocera-taskalfa-3253ci1.jpg', 'pro_img/colour_copiers/kyocera/kyocera-taskalfa-3253ci2.jpg', '', '', '', 20.00, '<h6><span style=\"caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: \"GT Eesti\", MetaPro, Arial, sans-serif;\">Empowering your workforce with productivity-boosting features and functionality, the </span><b style=\"font-weight: bold; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: \"GT Eesti\", MetaPro, Arial, sans-serif;\">TASKalfa 3253ci</b><span style=\"caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: \"GT Eesti\", MetaPro, Arial, sans-serif;\"> Color Multifunctional System raises the bar on maximizing workflow. A versatile array of scanning, input and professional finishing options delivers exceptional results in vibrant, high-impact color. Eco-friendly, and expertly engineered to drive your business forward, the TASKalfa 3253ci exceeds the needs of even the most demanding offices.</span></h6>', '', 50, 50, '25-Apr-2020 15:00:34', '11-Jun-2020 01:53:56', 0, 0, 5),
(28, 34, 'PROID25041458', 'a3-mfps-colour', 'kyocera', 'Kyocera Taskalfa 4053ci', 'kyocera-taskalfa-4053ci', 325000.00, 'pro_img/colour_copiers/kyocera/kyocera-taskalfa-4053ci1.jpg', 'pro_img/colour_copiers/kyocera/kyocera-taskalfa-4053ci2.jpeg', 'pro_img/colour_copiers/kyocera/kyocera-taskalfa-4053ci3.jpg', '', '', 0.00, '<h6><p class=\"dropdown-item\"><ul class=\"list-mf\" style=\"margin-bottom: 27px; color: rgb(195, 24, 32); font-family: helvetica, arial, sans-serif;\"><li><span style=\"color: rgb(0, 0, 0);\">Sharp&nbsp;image quality with real 1,200dpi printing resolution.</span></li></ul><ul class=\"list-mf\" style=\"margin-bottom: 27px; color: rgb(195, 24, 32); font-family: helvetica, arial, sans-serif;\"><li><span style=\"color: rgb(0, 0, 0);\">Support A6 original scanning from Document Processor DP-7130 (Optional)</span></li></ul><ul class=\"list-mf\" style=\"margin-bottom: 27px; color: rgb(195, 24, 32); font-family: helvetica, arial, sans-serif;\"><li><span style=\"color: rgb(0, 0, 0);\">Support SRA3 size &nbsp;&amp; 300gsm&nbsp;paper from standard cassette.</span></li></ul><ul class=\"list-mf\" style=\"margin-bottom: 27px; color: rgb(195, 24, 32); font-family: helvetica, arial, sans-serif;\"><li><span style=\"color: rgb(0, 0, 0);\">Support different types of robust optional Finisher and business applications.</span></li>', '', 50, 50, '25-Apr-2020 15:02:06', '', 0, 1, 5),
(29, 4, 'PROID25044195', 'a4-mfps-laserjet', 'kyocera', 'Kyocera Ecosys M2640idw', 'kyocera-ecosys-m2640idw', 49000.00, 'pro_img/colour_copiers/kyocera/kyocera-ecosys-m2640idw1.png', 'pro_img/colour_copiers/kyocera/kyocera-ecosys-m2640idw2.jpg', 'pro_img/colour_copiers/kyocera/kyocera-ecosys-m2640idw3.jpg', '', '', 20.00, '<ul class=\"list-mf\" style=\"margin-bottom: 27px; color: rgb(195, 24, 32); font-family: helvetica, arial, sans-serif;\"><li><span style=\"color: rgb(0, 0, 0);\">Highly productive monochrome multifunctionals support business workgroup </span></li><li><span style=\"color: rgb(0, 0, 0);\">of all sizes by packing power and productivity in a small footprint.</span></li><li><span style=\"color: rgb(0, 0, 0);\">Speedy A4 copy/print up to 40 ppm (Mono).</span></li><li><span style=\"color: rgb(0, 0, 0);\">Standard 512MB RAM to perform heavy duty tasks without additional memory required.</span></li><li><span style=\"color: rgb(0, 0, 0);\">Support Air Print and Mopria certified.</span></li><li><span style=\"color: rgb(0, 0, 0);\">Convenient built-in wireless LAN interface.</span></li><li><span style=\"color: rgb(0, 0, 0);\">User friendly 4.3 inch color touch screen panel.</span></li><li><span style=\"color: rgb(0, 0, 0);\">Fast scanning up to 40/23 ipm Mono/Color.</span></li></ul>', 'pro_pdf/kyocera-ecosys-m2640idw.pdf', 20, 20, '25-Apr-2020 15:03:33', '02-Jul-2020 15:33:57', 1, 0, 5),
(30, 16, 'PROID25046015', 'page-wide-a3-mfps', 'hp', 'HP PageWide Managed Color MFP P77960', 'hp-pagewide-managed-color-mfp-p77960', 349000.00, 'pro_img/colour_copiers/hp/hp-pagewide-managed-color-mfp-p779601.jpg', 'pro_img/colour_copiers/hp/hp-pagewide-managed-color-mfp-p779602.png', 'pro_img/colour_copiers/hp/hp-pagewide-managed-color-mfp-p779603.png', '', '', 20.00, '<p><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 255); font-family: HPSimplifiedLight; font-size: 14pt;\">HP Managed MFPs and printers are </span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 255); font-family: HPSimplifiedLight; font-size: 18.66666603088379px;\">optimised</span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 255); font-family: HPSimplifiedLight; font-size: 14pt;\"> for managed environments. </span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 255); font-size: 14pt; font-family: HPSimplifiedLight;\">Offering increased monthly page volumes and fewer interventions,<br></span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 255); font-size: 14pt; font-family: HPSimplifiedLight;\">this portfolio of products can help reduce printing and copying costs.</span><br></p>', 'pro_pdf/hp-pagewide-managed-color-mfp-p77960.pdf', 5, 5, '25-Apr-2020 15:04:53', '04-Jul-2020 21:04:15', 0, 1, 5),
(31, 19, 'PROID25043189', 'wide-format-printers', 'hp', 'HP DesignJet T830 24-inch MFP', 'hp-designjet-t830-24-inch-mfp', 180000.00, 'pro_img/colour_copiers/hp/hp-designjet-t830-24-inch-mfp1.png', 'pro_img/colour_copiers/hp/hp-designjet-t830-24-inch-mfp2.png', '', '', '', 25.00, '<h6><span style=\"background-color: rgb(255, 255, 255); color: rgb(0, 0, 255);\">The most compact 24-in MFP—with a sleek integrated design—is ideal for the office and construction job site. Print A1/D-size in 26 seconds. Print easily with HP Click software, and print from s smartphone or tablet with HP Mobile Printing.</span></h6>', 'pro_pdf/hp-designjet-t830-24-inch-mfp.pdf', 50, 50, '25-Apr-2020 15:06:08', '26-Jun-2020 16:04:57', 1, 0, 5),
(32, 21, 'PROID25047348', 'wide-format-printers', 'hp', 'HP DesignJet T830 36-inch MFP', 'hp-designjet-t830-36-inch-mfp', 270000.00, 'pro_img/colour_copiers/hp/hp-designjet-t830-36-inch-mfp1.png', 'pro_img/colour_copiers/hp/hp-designjet-t830-36-inch-mfp2.jpg', '', '', '', 20.00, '<h6><span style=\"color: rgb(0, 0, 255);\"><span style=\"caret-color: rgb(0, 0, 0);\" hp=\"\" simplified=\"\" light\";\"=\"\">Enjoy easy installation in the office, construction job site with the most compact 36-in large-format.</span></span></h6><h6><span style=\"color: rgb(0, 0, 255);\"><span style=\"caret-color: rgb(0, 0, 0);\" hp=\"\" simplified=\"\" light\";\"=\"\"><br></span><span style=\"caret-color: rgb(0, 0, 0);\" hp=\"\" simplified=\"\" light\";\"=\"\">Get HP DesignJet quality also in small-format sizes—print half-size documents with 50-sheet A4/A3 input tray.</span></span></h6><h6><span style=\"color: rgb(0, 0, 255);\"><span style=\"caret-color: rgb(0, 0, 0);\" hp=\"\" simplified=\"\" light\";\"=\"\"><br></span><span style=\"caret-color: rgb(0, 0, 0);\" hp=\"\" simplified=\"\" light\";\"=\"\">Use built-in scanner to copy and distribute sketches and hand-annotated drawings to peers/partners right away.</span></span></h6>', 'pro_pdf/hp-designjet-t830-36-inch-mfp.pdf', 50, 50, '25-Apr-2020 15:07:46', '26-Jun-2020 16:16:25', 1, 1, 5),
(33, 2, 'PRO C165', 'production-machines', 'canon', 'imagePRESS C165 Production', 'imagepress-c165-production', 990000.00, 'pro_img/colour_copiers/canon/image-press-c1651.png', 'pro_img/production_machines/canon/imagepress-c165-production2.jpg', 'pro_img/production_machines/canon/imagepress-c165-production3.jpg', 'pro_img/production_machines/canon/imagepress-c165-production4.jpg', 'pro_img/colour_copiers/canon/imagepress-c165-productionvideo.mp4', 20.00, '<h6 class=\"dropdown-item\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-stretch: normal; line-height: normal; font-family: Avenir; color: rgb(0, 0, 255);\"><span style=\"color: #fb0207\">Canon has announced the new imagePRESS C165 </span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-stretch: normal; line-height: normal; font-family: Avenir; color: rgb(0, 0, 255);\"><span style=\"color: #fb0207\">a multifunction printer </span><span style=\"color: rgb(251, 2, 7); font-size: 0.875rem; text-align: inherit;\">Combining Canon’s </span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-stretch: normal; line-height: normal; font-family: Avenir; color: rgb(0, 0, 255);\"><span style=\"color: rgb(251, 2, 7); font-size: 0.875rem; text-align: inherit;\">imageRUNNER ADVANCE and imagePRESS technology.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-stretch: normal; line-height: normal; font-family: Avenir; color: rgb(0, 0, 255);\">Combining the best of Canon’s award-winning </p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-stretch: normal; line-height: normal; font-family: Avenir; color: rgb(0, 0, 255);\">imageRUNNER ADVANCE </p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-stretch: normal; line-height: normal; font-family: Avenir; color: rgb(0, 0, 255);\">Technology and user interface with a suite of easy-to-use </p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-stretch: normal; line-height: normal; font-family: Avenir; color: rgb(0, 0, 255);\">imagePRESS professional tools.</p>\r\n<p style=\"margin-right: 0px; margin-bottom: 2px; margin-left: 0px; font-stretch: normal; line-height: normal; font-family: Avenir; color: rgb(251, 2, 255);\">The Canon imagePRESS C165 has the perfect combination </p><p style=\"margin-right: 0px; margin-bottom: 2px; margin-left: 0px; font-stretch: normal; line-height: normal; font-family: Avenir; color: rgb(251, 2, 255);\">of user friendly interface and patented technologies </p><p style=\"margin-right: 0px; margin-bottom: 2px; margin-left: 0px; font-stretch: normal; line-height: normal; font-family: Avenir; color: rgb(251, 2, 255);\">that ensure professional quality to your colour documents.<br>\r\nSo whether it’s Print Shop, Creative agencies or a Corporate, </p><p style=\"margin-right: 0px; margin-bottom: 2px; margin-left: 0px; font-stretch: normal; line-height: normal; font-family: Avenir; color: rgb(251, 2, 255);\">The C165 Can make the difference.</p></h6>', 'pro_pdf/imagepress-c165-production.pdf', 5, 5, '25-Apr-2020 15:09:05', '16-Jul-2020 14:46:43', 0, 0, 5),
(34, 37, 'PROID25042518', 'a3-mfps-colour', 'kyocera', 'Kyocera Taskalfa 5053ci', 'kyocera-taskalfa-5053ci', 425000.00, 'pro_img/colour_copiers/kyocera/kyocera-taskalfa-5053ci1.png', 'pro_img/colour_copiers/kyocera/kyocera-taskalfa-5053ci2.jpg', 'pro_img/colour_copiers/kyocera/kyocera-taskalfa-5053ci3.jpeg', '', '', 0.00, '<ul class=\"list-mf\" style=\"margin-bottom: 27px; color: rgb(195, 24, 32); font-family: helvetica, arial, sans-serif;\"><li><span style=\"color: rgb(0, 0, 0);\">Sharp&nbsp;image quality with real 1,200dpi printing resolution.</span></li><li><span style=\"color: rgb(0, 0, 0);\">320GB hard disk capacity and 4GB RAM to meet heavy duty tasks without additional hard drive.</span></li><li><span style=\"color: rgb(0, 0, 0);\">Support A6 original scanning from Document Processor DP-7130 (Optional) with dual scan speed up to 220/220 ipm A4 Mono/Color.</span></li><li><span style=\"color: rgb(0, 0, 0);\">Support Banner Print and Scan for in-house banner production</span></li><li><span style=\"color: rgb(0, 0, 0);\">Semi auto self-closing paper cassette.</span></li><li><span style=\"color: rgb(0, 0, 0);\">Support&nbsp; different types of robust optional Finisher and business applications.</span></li></ul>', '', 50, 50, '25-Apr-2020 15:10:27', '', 0, 0, 5),
(35, 40, 'PROID25046914', 'a3-mfps-colour', 'kyocera', 'Kyocera Tasklafa 6053ci', 'kyocera-tasklafa-6053ci', 525000.00, 'pro_img/colour_copiers/kyocera/kyocera-tasklafa-6053ci1.jpeg', 'pro_img/colour_copiers/kyocera/kyocera-tasklafa-6053ci2.jpg', 'pro_img/colour_copiers/kyocera/kyocera-tasklafa-6053ci3.jpg', '', '', 0.00, '<h6><span style=\"caret-color: rgb(85, 85, 85); font-family: &quot;open sans&quot;, sans-serif; font-size: 17px; background-color: rgb(255, 255, 255); color: rgb(255, 0, 0);\">New generation of KYOCERA color MFPs with enhanced features that help offices of all sizes improve their productivity.<br></span><h6><span style=\"color: rgb(0, 0, 255);\">Minimise downtime and optimise workflows with this speedy colour MFP. Enjoy unbeatable reliability, flexibility, and consistency at 60 pages a minute.</span></h6></h6>', '', 50, 50, '25-Apr-2020 15:13:15', '', 0, 0, 5),
(36, 7, 'PROID25044814', 'a3-mfps-bw', 'kyocera', 'Kyocera Taskalfa 6003i', 'kyocera-taskalfa-6003i', 399000.00, 'pro_img/colour_copiers/kyocera/kyocera-taskalfa-6003i1.png', 'pro_img/colour_copiers/kyocera/kyocera-taskalfa-6003i2.jpg', 'pro_img/colour_copiers/kyocera/kyocera-taskalfa-6003i3.jpg', '', '', 25.00, '<h6><span style=\"caret-color: rgb(255, 0, 0); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" oxygen-sans,=\"\" ubuntu,=\"\" cantarell,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;=\"\" font-weight:=\"\" 600;=\"\" color:=\"\" rgb(0,=\"\" 0,=\"\" 255);\"=\"\">Kyocera TASKalfa 6003i High-speed A3 MFP</span><span style=\"color: rgb(255, 0, 0);\"><br></span></h6><h6><span style=\"color: rgb(255, 0, 0);\">POWER, VERSATILITY</span><span style=\"color: rgb(69, 69, 69);\"> AND SEAMLESS </span><span style=\"color: rgb(255, 0, 0);\">INTEGRATION</span><span style=\"color: rgb(69, 69, 69);\">.</span></h6>', 'pro_pdf/kyocera-taskalfa-6003i.pdf', 50, 50, '25-Apr-2020 15:14:54', '26-Jun-2020 15:38:23', 0, 0, 5),
(37, 8, 'PROID25047846', 'a3-mfps-bw', 'kyocera', 'TASKalfa 7003i', 'taskalfa-7003i', 599000.00, 'pro_img/colour_copiers/canon/taskalfa-7003i1.png', 'pro_img/colour_copiers/canon/taskalfa-7003i2.jpg', 'pro_img/colour_copiers/canon/taskalfa-7003i3.png', '', '', 20.00, '<div class=\"page\" title=\"Page 1\" style=\"caret-color: rgb(0, 0, 0); font-family: -webkit-standard;\"><div class=\"page\" title=\"Page 2\"><div class=\"section\"><div class=\"layoutArea\"><div class=\"column\"><h6><span style=\"font-size: 9pt; font-family: GTEestiProText; background-color: rgb(255, 255, 255);\"></span></h6><span style=\"color: rgb(0, 0, 0); font-family: \"Helvetica Neue\";\">The </span><span style=\"color: rgb(255, 0, 0); font-family: \"Helvetica Neue\";\">TASKalfa 7003i</span><span style=\"color: rgb(0, 0, 0); font-family: \"Helvetica Neue\";\"> incorporates extremely durable components that guarantee efficient and reliable operation, to meet the demanding requirements of busy office environments. The </span><span style=\"font-family: \"Helvetica Neue\"; color: rgb(255, 0, 0);\">TASKalfa 7003i </span><span style=\"color: rgb(0, 0, 0); font-family: \"Helvetica Neue\";\">provides effective productivity and maximum flexibility whilst ensuring minimum impact on the </span></div></div></div></div></div>', '', 50, 50, '25-Apr-2020 15:16:22', '11-Jun-2020 02:21:53', 0, 0, 5),
(38, 10, 'PROID25045301', 'a3-mfps-bw', 'hp', 'HP LaserJet A3 MFP M436n', 'hp-laserjet-a3-mfp-m436n', 55000.00, 'pro_img/multi_function_printers/hp/hp-laserjet-a3-mfp-m436n1.png', 'pro_img/multi_function_printers/hp/hp-laserjet-a3-mfp-m436n2.png', 'pro_img/multi_function_printers/hp/hp-laserjet-a3-mfp-m436n3.png', 'pro_img/multi_function_printers/hp/hp-laserjet-a3-mfp-m436n4.png', '', 20.00, '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-stretch: normal; line-height: normal; font-family: Avenir; color: rgb(5, 61, 204);\">HP LaserJet A3 MFP M436N</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Avenir;\"><span style=\"color: rgb(255, 0, 255);\">NETWORK PRINT, COPY & SCAN</span></p>', 'pro_pdf/hp-laserjet-a3-mfp-m436n.pdf', 50, 49, '25-Apr-2020 15:22:00', '14-Jul-2020 20:47:30', 0, 0, 4),
(39, 3, 'PROID25041287', 'a3-mfps-colour', 'hp', 'HP A3 Color MFP E77422', 'hp-a3-color-mfp-e77422', 199000.00, 'pro_img/multi_function_printers/hp/hp-a3-color-mfp-e774221.png', 'pro_img/multi_function_printers/hp/hp-a3-color-mfp-e774222.png', '', '', '', 25.00, '<h6><span style=\"color: rgb(0, 0, 0);\">HP Color LaserJet Managed A3 MFP E77422DN</span></h6><div class=\"page\" title=\"Page 1\" style=\"caret-color: rgb(0, 0, 0);\"><div class=\"layoutArea\"><div class=\"column\"><h6><span style=\"font-size: 12pt; font-family: HPSimplifiedW02; color: rgb(255, 0, 255);\">Big color. Small cost.</span></h6></div></div></div>', 'pro_pdf/hp-a3-color-mfp-e77422.pdf', 10, 10, '25-Apr-2020 15:26:41', '02-Jul-2020 09:59:58', 0, 0, 5),
(40, 3, 'PROID25046110', 'a4-mfps-laserjet', 'kyocera', 'Kyocera M2040DN LGL MFP', 'kyocera-m2040dn-lgl-mfp', 36935.00, 'pro_img/multi_function_printers/kyocera/kyocera-m2040dn1.jpg', 'pro_img/multi_function_printers/kyocera/kyocera-m2040dn2.jpg', 'pro_img/multi_function_printers/kyocera/kyocera-m2040dn3.jpg', 'pro_img/multi_function_printers/kyocera/kyocera-m2040dn4.jpg', '', 20.00, '<h6><span style=\"color: rgb(255, 0, 0);\">ECOSYS M2040DN LGL MFP</span></h6><p><br></p>', 'pro_pdf/kyocera-m2040dn-lgl-mfp.pdf', 25, 25, '25-Apr-2020 15:29:01', '02-Jul-2020 15:24:40', 0, 0, 5),
(41, 2, 'PROID25043549', 'a4-mfps-laserjet', 'kyocera', 'Kyocera Ecosys FS-1120 A4 MFP', 'kyocera-ecosys-fs-1120-a4-mfp', 16000.00, 'pro_img/multi_function_printers/kyocera/kyocera-ecosys-fs-1120-a4-mfp1.jpg', 'pro_img/multi_function_printers/kyocera/kyocera-ecosys-fs-1120-a4-mfp2.jpg', '', '', '', 15.00, '<ul class=\"list-mf\" style=\"margin-bottom: 27px; color: rgb(195, 24, 32); font-family: helvetica, arial, sans-serif;\"><li><span style=\"color: rgb(0, 0, 0);\">Functional and affordable for home and small offices</span></li><li><span style=\"color: rgb(0, 0, 0);\">Up to 20 pages per minute in A4</span></li><li><span style=\"color: rgb(0, 0, 0);\">Print, copy, scan functionality as standard</span></li><li><span style=\"color: rgb(0, 0, 0);\">Very compact size and small footprint</span></li><li><span style=\"color: rgb(0, 0, 0);\">Highly reliable thanks to long-life components</span></li><li><span style=\"color: rgb(0, 0, 0);\">Highest toner yield in its class</span></li></ul>', 'pro_pdf/kyocera-ecosys-fs-1120-a4-mfp.pdf', 25, 25, '25-Apr-2020 15:30:26', '02-Jul-2020 15:00:23', 0, 0, 5),
(42, 28, 'PROID25045389', 'a3-mfps-colour', 'kyocera', 'Kyocera TASKalfa 2553ci', 'kyocera-taskalfa-2553ci', 225000.00, 'pro_img/multi_function_printers/kyocera/kyocera-taskalfa-2553ci1.jpeg', 'pro_img/multi_function_printers/kyocera/kyocera-taskalfa-2553ci2.jpg', 'pro_img/multi_function_printers/kyocera/kyocera-taskalfa-2553ci3.jpg', 'pro_img/multi_function_printers/kyocera/kyocera-taskalfa-2553ci4.jpg', '', 10.00, '<ul class=\"list-mf\" style=\"margin-bottom: 27px; color: rgb(195, 24, 32); font-family: helvetica, arial, sans-serif;\"><li><span style=\"color: rgb(0, 0, 0);\">Sharp image quality with real 1,200dpi printing resolution.</span></li><li><span style=\"color: rgb(0, 0, 0);\">320GB hard disk capacity(Optional) and 4GB RAM to meet heavy duty tasks without additional hard drive.</span></li><li><span style=\"color: rgb(0, 0, 0);\">Support SRA3(320mm x 450mm) size  & 300g/m<span style=\"font-size: 10.5px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em;\">2</span> paper from standard cassette.</span></li><li><span style=\"color: rgb(0, 0, 0);\">Support Banner Print and Scan for in-house banner production</span></li><li><span style=\"color: rgb(0, 0, 0);\">Support different types of robust optional Finisher and business applications.</span></li></ul>', '', 50, 50, '25-Apr-2020 15:32:24', '11-Jun-2020 02:28:09', 0, 0, 5),
(43, 25, 'PROID25042761', 'a3-mfps-colour', 'kyocera', 'Kyocera ECOSYS M8124cidn', 'kyocera-ecosys-m8124cidn', 125000.00, 'pro_img/multi_function_printers/kyocera/kyocera-ecosys-m8124cidn1.jpg', 'pro_img/multi_function_printers/kyocera/kyocera-ecosys-m8124cidn2.jpg', 'pro_img/multi_function_printers/kyocera/kyocera-ecosys-m8124cidn3.jpg', 'pro_img/multi_function_printers/kyocera/kyocera-ecosys-m8124cidn4.jpg', '', 20.00, '<ul class=\"list-mf\" style=\"margin-bottom: 27px; color: rgb(195, 24, 32); font-family: helvetica, arial, sans-serif;\"><li><span style=\"color: rgb(0, 0, 0);\">Feature rich compact design.</span></li><li><span style=\"color: rgb(0, 0, 0);\">High image quality with 1,200 x 1,200 dpi print resolution.</span></li><li><span style=\"color: rgb(0, 0, 0);\">Fast scanning up to 50/50 ipm A4 Mono/Color.</span></li><li><span style=\"color: rgb(0, 0, 0);\"><span style=\"font-family: Calibri; font-size: medium;\">Support Air Print and Mopria certified.</span></span></li><li><span style=\"color: rgb(0, 0, 0);\">Long life drum and replacement parts provide efficiency and reliability.</span></li><li><span style=\"color: rgb(0, 0, 0);\">Compact design and low noise emission.</span></li></ul>', '', 50, 50, '25-Apr-2020 15:34:30', '11-Jun-2020 02:28:49', 0, 0, 5);
INSERT INTO `product` (`id`, `pro_order`, `pro_id`, `cat_seo`, `brand_seo`, `pro_name`, `pro_seo`, `price`, `pro_img`, `pro_img2`, `pro_img3`, `pro_img4`, `pro_video`, `offers`, `desc1`, `pro_pdf`, `stock`, `remaining_stock`, `adding_date`, `modify_date`, `most_view`, `bestseller`, `ratings`) VALUES
(44, 3, 'PROID25042202', 'a3-mfps-bw', 'kyocera', 'Kyocera ECOSYS M4125idn', 'kyocera-ecosys-m4125idn', 110000.00, 'pro_img/multi_function_printers/kyocera/kyocera-ecosys-m4125idn1.jpg', 'pro_img/multi_function_printers/kyocera/kyocera-ecosys-m4125idn2.jpg', 'pro_img/multi_function_printers/kyocera/kyocera-ecosys-m4125idn3.jpg', 'pro_img/digital_copiers/kyocera/kyocera-ecosys-m4125idn4.jpg', '', 20.00, '<ul class=\"list-mf\" style=\"margin-bottom: 27px; font-family: helvetica, arial, sans-serif;\"><li><span style=\"font-family: Verdana; color: rgb(255, 0, 0);\">Breakthrough design for easy use, control and service.</span></li><li><span style=\"font-family: Verdana; color: rgb(255, 0, 0);\">High image quality with 1,200 x 1,200 dpi print resolution.</span></li><li><span style=\"font-family: Verdana; font-size: medium; color: rgb(255, 0, 0);\">Support Air Print and Mopria certified.</span></li><li><span style=\"font-family: Verdana; color: rgb(255, 0, 0);\">Long life drum and replacement parts </span></li><li><span style=\"font-family: Verdana; color: rgb(255, 0, 0);\">Provide efficiency and reliability.</span></li><li><span style=\"font-family: Verdana; color: rgb(255, 0, 0);\">Compact design and low noise emission.</span></li><li><span style=\"font-family: Verdana; color: rgb(255, 0, 0);\">Fast scanning up to 50/50 ipm A4 Mono/Color.</span></li></ul>', 'pro_pdf/kyocera-ecosys-m4125idn.pdf', 10, 10, '25-Apr-2020 15:36:28', '11-Jul-2020 15:42:43', 0, 0, 4),
(45, 4, 'IMAGETA3212i', 'a3-mfps-bw', 'kyocera', 'Kyocera TASKalfa 3212i', 'kyocera-taskalfa-3212i', 125000.00, 'pro_img/multi_function_printers/kyocera/kyocera-taskalfa-3212i1.jpeg', 'pro_img/digital_copiers/kyocera/kyocera-taskalfa-3212i2.jpg', 'pro_img/digital_copiers/kyocera/kyocera-taskalfa-3212i3.png', 'pro_img/digital_copiers/kyocera/kyocera-taskalfa-3212i4.jpg', '', 20.00, '<ul class=\"list-mf\" style=\"margin-bottom: 27px; color: rgb(195, 24, 32); font-family: helvetica, arial, sans-serif;\"><li><span style=\"color: rgb(0, 0, 0);\">Bring seamless efficiency</span></li><li><span style=\"color: rgb(0, 0, 0);\">2GB RAM to meet heavy-duty tasks without an additional hard drive.</span></li><li><span style=\"color: rgb(0, 0, 0);\">Flexible with various paper handling systems and different capacity document processor combinations to meet different users’ requirements.</span></li><li><span style=\"color: rgb(0, 0, 0);\">Convenient with inner Job Separator as standard.</span></li><li><span style=\"color: rgb(0, 0, 0);\">Environmentally friendly with low energy consumption due to intelligent device recovery system.</span><span style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); font-size: 0.875rem;\"> </span></li></ul>', 'pro_pdf/kyocera-taskalfa-3212i.pdf', 50, 50, '25-Apr-2020 15:37:37', '26-Jun-2020 15:01:59', 0, 0, 5),
(46, 2, 'PROID25042086', 'id-card-printers', 'entrust-datacard', 'DATACARD SD 360', 'datacard-sd-360', 60000.00, 'pro_img/canon_and_xerox_rc/canon/datacard-sd-3601.jpg', 'pro_img/id_card_printers/entrust_datacard/datacard-sd-3602.png', 'pro_img/id_card_printers/entrust_datacard/datacard-sd-3603.png', '', '', 10.00, '<p><span style=\"caret-color: rgb(156, 0, 255); color: rgb(156, 0, 255); font-family: Poppins, sans-serif; font-size: 18px; font-weight: 800;\">ENTRUST DATACARD SD 360 CARD PRINTER</span></p><p><span style=\"color: rgb(156, 0, 255);\"><span helvetica=\"\" neue\";=\"\" font-size:=\"\" 12px;=\"\" -webkit-font-kerning:=\"\" none;\"=\"\">The best card issuance value on anyone’s desktop&nbsp;</span><span helvetica=\"\" neue\";=\"\" font-size:=\"\" 12px;\"=\"\">The Datacard® </span></span></p><p><span style=\"color: rgb(156, 0, 255);\" helvetica=\"\" neue\";=\"\" font-size:=\"\" 12px;\"=\"\">SD360TM two-sided card printer is packed with industry-leading innovations </span></p><p><span style=\"color: rgb(156, 0, 255);\" helvetica=\"\" neue\";=\"\" font-size:=\"\" 12px;\"=\"\">That make desktop ID card printing simple and economical. </span></p><p><span style=\"color: rgb(156, 0, 255);\" helvetica=\"\" neue\";=\"\" font-size:=\"\" 12px;\"=\"\">As part of the SD Series card printer family, the SD360 printer is ideal for </span></p><p><span style=\"color: rgb(156, 0, 255);\" helvetica=\"\" neue\";=\"\" font-size:=\"\" 12px;\"=\"\">Businesses, schools, hospitals, fitness clubs and anyone who batch-issues ID cards </span></p><p><span style=\"color: rgb(156, 0, 255);\" helvetica=\"\" neue\";=\"\" font-size:=\"\" 12px;\"=\"\">as part of their busy workday. </span></p><p><span style=\"color: rgb(156, 0, 255);\" helvetica=\"\" neue\";=\"\" font-size:=\"\" 12px;\"=\"\">With competitive features and price, SD Series printers are a great value.</span></p><p><span style=\"color: rgb(156, 0, 255);\"><span style=\"font-size: 16px; caret-color: rgb(77, 79, 83); font-family: &quot;Open Sans&quot;, sans-serif; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 700; background-position: 0px 0px;\">Save</span><span style=\"font-size: 16px; caret-color: rgb(77, 79, 83); font-family: &quot;Open Sans&quot;, sans-serif;\">&nbsp;</span><span style=\"font-size: 16px; caret-color: rgb(77, 79, 83); font-family: &quot;Open Sans&quot;, sans-serif;\">time with automatic two-sided card printing</span></span></p><p><span style=\"color: rgb(156, 0, 255);\"><span style=\"font-size: 16px; caret-color: rgb(77, 79, 83); font-family: &quot;Open Sans&quot;, sans-serif; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 700; background-position: 0px 0px;\">Increase</span><span style=\"font-size: 16px; caret-color: rgb(77, 79, 83); font-family: &quot;Open Sans&quot;, sans-serif;\">&nbsp;</span><span style=\"font-size: 16px; caret-color: rgb(77, 79, 83); font-family: &quot;Open Sans&quot;, sans-serif;\">productivity with industry-leading print speeds</span></span></p><p><span style=\"color: rgb(156, 0, 255);\"><span style=\"font-size: 16px; caret-color: rgb(77, 79, 83); font-family: &quot;Open Sans&quot;, sans-serif; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 700; background-position: 0px 0px;\">Produce</span><span style=\"font-size: 16px; caret-color: rgb(77, 79, 83); font-family: &quot;Open Sans&quot;, sans-serif;\">&nbsp;</span><span style=\"font-size: 16px; caret-color: rgb(77, 79, 83); font-family: &quot;Open Sans&quot;, sans-serif;\">vibrant and crisp images with Datacard® TrueMatch™ printing technology</span><span style=\"font-size: 16px; caret-color: rgb(77, 79, 83); font-family: &quot;Open Sans&quot;, sans-serif;\">&nbsp;</span></span></p><p><span style=\"color: rgb(156, 0, 255);\"><span style=\"font-size: 16px; caret-color: rgb(77, 79, 83); font-family: &quot;Open Sans&quot;, sans-serif; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; font-weight: 700; background-position: 0px 0px;\">Greatly reduce</span><span style=\"font-size: 16px; caret-color: rgb(77, 79, 83); font-family: &quot;Open Sans&quot;, sans-serif;\">&nbsp;the possibility of jamming with Datacard® TruePick™ card handling</span></span></p><p></p>', 'pro_pdf/datacard-sd-360.pdf', 5, 5, '25-Apr-2020 15:40:16', '13-Jul-2020 15:54:33', 0, 0, 5),
(47, 1, 'PROID25042988', 'a4-mfps-laserjet', 'kyocera', 'ECOSYS FS-1020MFP', 'ecosys-fs-1020mfp', 12000.00, 'pro_img/canon_and_xerox_rc/canon/ecosys-fs-1020mfp1.jpg', 'pro_img/canon_and_xerox_rc/canon/ecosys-fs-1020mfp2.jpg', '', '', '', 15.00, '<ul class=\"list-mf\" style=\"margin-bottom: 27px; color: rgb(195, 24, 32); font-family: helvetica, arial, sans-serif;\"><li><span style=\"color: rgb(0, 0, 0);\">Kyocera Ecosys FS-1020 A4 MFP</span></li><li><span style=\"color: rgb(0, 0, 0);\">Functional and affordable for home and small offices</span></li><li><span style=\"color: rgb(0, 0, 0);\">Up to 20 pages per minute in A4</span></li><li><span style=\"color: rgb(0, 0, 0);\">Print, copy, scan functionality as standard</span></li><li><span style=\"color: rgb(0, 0, 0);\">Very compact size and small footprint</span></li><li><span style=\"color: rgb(0, 0, 0);\">Highly reliable thanks to long-life components</span></li><li><span style=\"color: rgb(0, 0, 0);\">Highest toner yield in its class</span></li></ul>', 'pro_pdf/ecosys-fs-1020mfp.pdf', 25, 25, '25-Apr-2020 15:41:38', '02-Jul-2020 14:44:19', 0, 0, 5),
(49, 48, 'PROID26067900', 'a3-refurbished-mfps', 'canon', 'Canon IR 3300 RC', 'canon-ir-3300-rc', 65000.00, 'pro_img/rc_copiers/canon/canon-ir-3300-rc1.jpg', 'pro_img/rc_copiers/canon/canon-ir-3300-rc2.jpg', '', '', '', 20.00, '<p style=\"padding: 0px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 12px; font-family: \"Open Sans\", Arial, Helvetica, sans-serif; line-height: 18px;\"><span style=\"color: rgb(255, 0, 0); font-family: Verdana;\">We are dealing Canon refurbished copiers along with service support. Its is highly demanded by the clients for its long lasting quality and highly products performances. Our range is available at market most leading prices.</span></p><p style=\"padding: 0px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 12px; font-family: \"Open Sans\", Arial, Helvetica, sans-serif; line-height: 18px;\"><span style=\"caret-color: rgb(34, 34, 34); font-family: Verdana; font-size: 17px; color: rgb(255, 0, 0);\">Features :</span></p><ul style=\"margin-bottom: 0px; caret-color: rgb(34, 34, 34); font-family: sans-serif; font-size: 13px;\"><li style=\"background-image: url(\"http://imageindia.com/images/RightArow01.png\"); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"color: rgb(255, 0, 0); font-family: Verdana;\">Import From Canada, New Zealand, Australia, UK, UAE and USA</span></li><li style=\"background-image: url(\"http://imageindia.com/images/RightArow01.png\"); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"color: rgb(255, 0, 0); font-family: Verdana;\">Each copier is Cleaned, tested, serviced under a quality system</span></li><li style=\"background-image: url(\"http://imageindia.com/images/RightArow01.png\"); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"color: rgb(255, 0, 0); font-family: Verdana;\">Each of our service technicians are experienced and have extensive knowledge in B/W, color and multifunction copiers</span></li><li style=\"background-image: url(\"http://imageindia.com/images/RightArow01.png\"); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"color: rgb(255, 0, 0); font-family: Verdana;\">Each copier is refurbished with Canon OEM Spare parts or compatible Spare parts</span></li><li style=\"background-image: url(\"http://imageindia.com/images/RightArow01.png\"); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"color: rgb(255, 0, 0); font-family: Verdana;\">Each Copier is Updated with the latest software and firmware releases</span></li></ul>', 'pro_pdf/canon-ir-3300-rc.pdf', 10, 10, '26-Jun-2020 18:26:25', '04-Jul-2020 20:39:57', 0, 0, 5),
(50, 49, 'PROID27063048', 'a3-refurbished-mfps', 'canon', 'Canon IR Advance 4225 RC', 'canon-ir-advance-4225-rc', 65000.00, 'pro_img/rc_copiers/canon/canon-ir-advance-4225-rc1.jpg', 'pro_img/rc_copiers/canon/canon-ir-advance-4225-rc2.jpg', '', '', '', 10.00, '<ul><li style=\"padding: 0px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 12px; font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; line-height: 18px;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 0);\">We are dealing Canon refurbished copiers along with service support. Its is highly demanded by the clients for its long lasting quality and highly products performances. Our range is available at market most leading prices.</span></li><li style=\"padding: 0px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 12px; font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; line-height: 18px;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 0);\"><br></span><span style=\"color: rgb(0, 0, 0); font-family: Verdana; caret-color: rgb(34, 34, 34); font-size: 17px;\">Features :</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 0);\">Import From Canada, New Zealand, Australia, UK and USA</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 0);\">Each copier is Cleaned, tested, serviced under a quality system</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 0);\">Each of our service technicians are experienced and have extensive knowledge in B/W &amp; colour copiers</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 0);\">Each copier is refurbished with Canon OEM Spare parts or compatible Spare parts</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 0);\">Each Copier is Updated with the latest software and firmware releases</span></li></ul>', 'pro_pdf/canon-ir-advance-4225-rc.pdf', 25, 25, '27-Jun-2020 20:19:08', '', 0, 0, 5),
(51, 50, 'PROID27061785', 'a3-refurbished-mfps', 'canon', 'Canon IR Advance 4235 RC', 'canon-ir-advance-4235-rc', 70000.00, 'pro_img/rc_copiers/canon/canon-ir-advance-4235-rc1.jpg', 'pro_img/rc_copiers/canon/canon-ir-advance-4235-rc2.png', 'pro_img/rc_copiers/canon/canon-ir-advance-4235-rc3.png', '', '', 15.00, '<ul style=\"margin-bottom: 0px; list-style-position: outside; list-style-image: none; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;Sofia Pro Light&quot;, sans-serif; letter-spacing: -0.3499999940395355px;\"><li style=\"margin-bottom: 15px; font-size: 12px; font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; line-height: 18px;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(0, 0, 0);\">We are dealing Canon refurbished copiers along with service support. Its is highly demanded by the clients for its long lasting quality and highly products performances. Our range is available at market most leading prices.</span></li><li style=\"margin-bottom: 15px; font-size: 12px; font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; line-height: 18px;\"><span style=\"transition: all 0.3s ease 0s; color: rgb(0, 0, 0); font-family: Verdana; caret-color: rgb(34, 34, 34); font-size: 17px;\">Features :</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(0, 0, 0);\">Import From Canada, New Zealand, Australia, UK and USA</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(0, 0, 0);\">Each copier is Cleaned, tested, serviced under a quality system</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(0, 0, 0);\">Each of our service technicians are experienced and have extensive knowledge in B/W &amp; colour copiers</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(0, 0, 0);\">Each copier is refurbished with Canon OEM Spare parts or compatible Spare parts</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(0, 0, 0);\">Each Copier is Updated with the latest software and firmware releases</span></li></ul>', 'pro_pdf/canon-ir-advance-4235-rc.pdf', 25, 25, '27-Jun-2020 20:25:02', '', 0, 0, 5),
(52, 51, 'PROID30067916', 'a3-refurbished-mfps', 'canon', 'CANON IR Advance 4245 RC', 'canon-ir-advance-4245-rc', 75000.00, 'pro_img/rc_copiers/canon/canon-ir-advance-4245-rc1.jpg', 'pro_img/rc_copiers/canon/canon-ir-advance-4245-rc2.png', 'pro_img/rc_copiers/canon/canon-ir-advance-4245-rc3.jpg', '', '', 20.00, '<ul style=\"margin-bottom: 0px; list-style-position: outside; list-style-image: none; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;Sofia Pro Light&quot;, sans-serif; letter-spacing: -0.3499999940395355px;\"><li style=\"margin-bottom: 15px; font-size: 12px; font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; line-height: 18px;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(0, 0, 0);\">We are dealing Canon refurbished copiers along with service support. Its is highly demanded by the clients for its long lasting quality and highly products performances. Our range is available at market most leading prices.</span></li><li style=\"margin-bottom: 15px; font-size: 12px; font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; line-height: 18px;\"><span style=\"transition: all 0.3s ease 0s; color: rgb(0, 0, 0); font-family: Verdana; caret-color: rgb(34, 34, 34); font-size: 17px;\">Features :</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(0, 0, 0);\">Import From Canada, New Zealand, Australia, UK and USA</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(0, 0, 0);\">Each copier is Cleaned, tested, serviced under a quality system</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(0, 0, 0);\">Each of our service technicians are experienced and have extensive knowledge in B/W &amp; colour copiers</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(0, 0, 0);\">Each copier is refurbished with Canon OEM Spare parts or compatible Spare parts</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(0, 0, 0);\">Each Copier is Updated with the latest software and firmware releases</span></li></ul>', 'pro_pdf/canon-ir-advance-4245-rc.pdf', 10, 10, '30-Jun-2020 16:09:59', '', 0, 0, 5),
(53, 52, 'PROID30061836', 'a3-refurbished-mfps', 'canon', 'Canon IR Advance 4251 RC', 'canon-ir-advance-4251-rc', 80000.00, 'pro_img/rc_copiers/canon/canon-ir-advance-4251-rc1.jpg', 'pro_img/rc_copiers/canon/canon-ir-advance-4251-rc2.png', 'pro_img/rc_copiers/canon/canon-ir-advance-4251-rc3.jpg', '', '', 20.00, '<ul style=\"margin-bottom: 0px; list-style-position: outside; list-style-image: none; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;Sofia Pro Light&quot;, sans-serif; letter-spacing: -0.3499999940395355px;\"><li style=\"margin-bottom: 15px; font-size: 12px; font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; line-height: 18px;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(0, 0, 0);\">We are dealing Canon refurbished copiers along with service support. Its is highly demanded by the clients for its long lasting quality and highly products performances. Our range is available at market most leading prices.</span></li><li style=\"margin-bottom: 15px; font-size: 12px; font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif; line-height: 18px;\"><span style=\"transition: all 0.3s ease 0s; color: rgb(0, 0, 0); font-family: Verdana; caret-color: rgb(34, 34, 34); font-size: 17px;\">Features :</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(0, 0, 0);\">Import From Canada, New Zealand, Australia, UK and USA</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(0, 0, 0);\">Each copier is Cleaned, tested, serviced under a quality system</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(0, 0, 0);\">Each of our service technicians are experienced and have extensive knowledge in B/W &amp; colour copiers</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(0, 0, 0);\">Each copier is refurbished with Canon OEM Spare parts or compatible Spare parts</span></li><li style=\"background-image: url(&quot;http://imageindia.com/images/RightArow01.png&quot;); font-family: OpenSans-Regular; padding-top: 7px; padding-bottom: 7px; padding-left: 12px; background-position: left 14px; background-repeat: no-repeat no-repeat;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(0, 0, 0);\">Each Copier is Updated with the latest software and firmware releases.</span></li></ul>', 'pro_pdf/canon-ir-advance-4251-rc.pdf', 10, 10, '30-Jun-2020 16:20:57', '', 0, 0, 5),
(54, 1, 'PROID30066703', 'id-card-printers', 'entrust-datacard', 'DATACARD SD 160', 'datacard-sd-160', 55000.00, 'pro_img/id_card_printers/entrust_datacard/datacard-sd-1601.jpg', 'pro_img/id_card_printers/entrust/datacard-sd-1602.png', 'pro_img/id_card_printers/entrust/datacard-sd-1603.jpg', '', '', 20.00, '<div class=\"short-description\" style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); margin: 0px; padding: 0px;\"><h6 style=\"margin-right: 0px; margin-bottom: 0.5rem; margin-left: 0px; padding: 0px; font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" oxygen-sans,=\"\" ubuntu,=\"\" cantarell,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-weight:=\"\" 600;=\"\" color:=\"\" rgb(49,=\"\" 49,=\"\" 49);=\"\" font-size:=\"\" 16px;\"=\"\"><span style=\"margin: 0px; padding: 0px; color: rgb(156, 0, 255); font-family: \" helvetica=\"\" neue\";\"=\"\">ENTRUST DATACARD SD 160</span></h6><h6 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" oxygen-sans,=\"\" ubuntu,=\"\" cantarell,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-weight:=\"\" 600;=\"\" color:=\"\" rgb(49,=\"\" 49,=\"\" 49);=\"\" font-size:=\"\" 16px;\"=\"\"><span style=\"margin: 0px; padding: 0px; color: rgb(255, 0, 0);\"><span style=\"margin: 0px; padding: 0px; font-family: \" helvetica=\"\" neue\";\"=\"\">Single sided Printer</span><br style=\"margin: 0px; padding: 0px;\"></span><span open=\"\" sans\",=\"\" sans-serif;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\" style=\"margin: 0px; padding: 0px; caret-color: rgb(30, 30, 30); color: rgb(30, 30, 30); font-family: \" lucida=\"\" grande\";\"=\"\"><span style=\"margin: 0px; padding: 0px; font-family: \" helvetica=\"\" neue\";\"=\"\">Support solutions for the SD160 card printer featuring rewritable printing, </span></span></h6><h6 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" oxygen-sans,=\"\" ubuntu,=\"\" cantarell,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-weight:=\"\" 600;=\"\" color:=\"\" rgb(49,=\"\" 49,=\"\" 49);=\"\" font-size:=\"\" 16px;\"=\"\"><span open=\"\" sans\",=\"\" sans-serif;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\" style=\"margin: 0px; padding: 0px; caret-color: rgb(30, 30, 30); color: rgb(30, 30, 30); font-family: \" lucida=\"\" grande\";\"=\"\"><span style=\"margin: 0px; padding: 0px; font-family: \" helvetica=\"\" neue\";\"=\"\">inline magnetic stripe encoding, a unique ultraviolet (UV) printing security </span></span></h6><h6 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" oxygen-sans,=\"\" ubuntu,=\"\" cantarell,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-weight:=\"\" 600;=\"\" color:=\"\" rgb(49,=\"\" 49,=\"\" 49);=\"\" font-size:=\"\" 16px;\"=\"\"><span open=\"\" sans\",=\"\" sans-serif;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\" style=\"margin: 0px; padding: 0px; caret-color: rgb(30, 30, 30); color: rgb(30, 30, 30); font-family: \" lucida=\"\" grande\";\"=\"\"><span style=\"margin: 0px; padding: 0px; font-family: \" helvetica=\"\" neue\";\"=\"\">feature and intuitive operation, the SD160 card printer provides security </span></span></h6><h6 style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" oxygen-sans,=\"\" ubuntu,=\"\" cantarell,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;=\"\" font-weight:=\"\" 600;=\"\" color:=\"\" rgb(49,=\"\" 49,=\"\" 49);=\"\" font-size:=\"\" 16px;\"=\"\"><span open=\"\" sans\",=\"\" sans-serif;=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);\"=\"\" style=\"margin: 0px; padding: 0px; caret-color: rgb(30, 30, 30); color: rgb(30, 30, 30); font-family: \" lucida=\"\" grande\";\"=\"\"><span style=\"margin: 0px; padding: 0px; font-family: \" helvetica=\"\" neue\";\"=\"\">and simplicity while protecting your bottom line.</span>&nbsp;</span></h6></div><div class=\"product_meta highlightlinks\" style=\"caret-color: rgb(0, 0, 0); color: rgb(0, 0, 0); margin: 0px; padding: 0px;\"><ul class=\"list1 feature-list bottommargin_0\" style=\"margin-bottom: 0px; caret-color: rgb(33, 37, 41); color: rgb(33, 37, 41); font-family: -apple-system, BlinkMacSystemFont, \" segoe=\"\" ui\",=\"\" roboto,=\"\" oxygen-sans,=\"\" ubuntu,=\"\" cantarell,=\"\" \"helvetica=\"\" neue\",=\"\" sans-serif;\"=\"\"></ul><br class=\"Apple-interchange-newline\"></div>', 'pro_pdf/datacard-sd-160.pdf', 5, 5, '30-Jun-2020 17:06:12', '13-Jul-2020 16:06:41', 0, 0, 4),
(55, 54, 'Brother2840', 'fax-machines', 'brother', 'Brother Laser Fax Machine 2840', 'brother-laser-fax-machine-2840', 15500.00, 'pro_img/fax_machines/brother/brother-laser-fax-machine-28401.jpg', 'pro_img/fax_machines/brother/brother-laser-fax-machine-28402.jpg', 'pro_img/fax_machines/brother/brother-laser-fax-machine-28403.jpg', '', '', 10.00, '<div class=\"page\" title=\"Page 1\" style=\"caret-color: rgb(0, 0, 0);\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 13pt; font-family: Verdana; color: rgb(0, 0, 255);\">Introducing the new Brother Laser Fax series with fax, print and copy capabilities.</span></p><p><span style=\"font-size: 15pt; font-family: Verdana; color: rgb(0, 0, 255);\">The compact all-in-one laser business fax machine with a built-in handset that you can count on for all your professional needs.</span></p><div class=\"page\" title=\"Page 1\" style=\"color: rgb(0, 0, 0);\"><div class=\"layoutArea\"><div class=\"column\"><p><span style=\"font-size: 11pt; font-family: Verdana; color: rgb(32, 28, 32);\">• Get outstanding quality with high-resolution at 2,400x600dots per inch (dpi)</span></p><p><span style=\"font-size: 11pt; font-family: \" *microsoft=\"\" sans=\"\" serif-3429-identity-h\";=\"\" color:=\"\" rgb(32,=\"\" 28,=\"\" 32);\"=\"\"><span style=\"font-family: Verdana;\">• Ease of mind with 400-page* Out-of-Paper Reception</span></span></p><p><span style=\"font-size: 11pt; font-family: \" *microsoft=\"\" sans=\"\" serif-3429-identity-h\";=\"\" color:=\"\" rgb(32,=\"\" 28,=\"\" 32);\"=\"\"><span style=\"font-family: Verdana;\">• Increased efficiency with fast fax transmission speed of up to&nbsp;</span></span><span style=\"font-family: Verdana; color: rgb(32, 28, 32); font-size: 11pt;\">33.6Kbps</span></p><p><span style=\"font-size: 11pt; font-family: \" *microsoft=\"\" sans=\"\" serif-3429-identity-h\";=\"\" color:=\"\" rgb(32,=\"\" 28,=\"\" 32);\"=\"\"><span style=\"font-family: Verdana;\">• Increased Productivity with 20-sheet Automatic Document&nbsp;</span></span><span style=\"font-family: Verdana; color: rgb(32, 28, 32); font-size: 11pt;\">Feeder</span></p><p><span style=\"font-size: 11pt; font-family: \" *microsoft=\"\" sans=\"\" serif-3429-identity-h\";=\"\" color:=\"\" rgb(32,=\"\" 28,=\"\" 32);\"=\"\"><span style=\"font-family: Verdana;\">• PC Fax (Send only)</span></span></p><p><span style=\"font-size: 11pt; font-family: \" *microsoft=\"\" sans=\"\" serif-3429-identity-h\";=\"\" color:=\"\" rgb(32,=\"\" 28,=\"\" 32);\"=\"\"><span style=\"font-family: Verdana;\">• Reduce Printing Cost with the optional 2,600-page** High-yield&nbsp;</span></span><span style=\"color: rgb(32, 28, 32); font-family: Verdana; font-size: 11pt;\">Replacement Toner</span></p></div></div></div></div></div></div>', 'pro_pdf/brother-laser-fax-machine-2840.pdf', 5, 5, '30-Jun-2020 20:41:43', '04-Jul-2020 20:46:08', 0, 0, 5),
(56, 16, 'PROID01078103', 'a4-mfps-laserjet', 'hp', 'HP Laserjet M1005 A4 MFP', 'hp-laserjet-m1005-a4-mfp', 18000.00, 'pro_img/multi_function_printers/hp/hp-laserjet-m1005-a4-mfp1.jpg', 'pro_img/multi_function_printers/hp/hp-laserjet-m1005-a4-mfp2.jpg', 'pro_img/multi_function_printers/hp/hp-laserjet-m1005-a4-mfp3.jpg', '', '', 10.00, '<ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana; color: rgb(0, 0, 0);\">Printer type - LaserJet; Functionality - Multi-Function (Print, Scan, Copy), </span></li><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana; color: rgb(0, 0, 0);\">Scanner type - Flatbed; Printer Output - Black &amp; White only</span></li><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana; color: rgb(0, 0, 0);\">Connectivity - USB, 2 inch LCD display</span></li><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"color: rgb(0, 0, 0);\"><span style=\"font-family: Verdana;\">Pages per minute - 14, </span><span style=\"font-family: Verdana;\">Cost per page - Rs 1.4</span><span style=\"font-family: Verdana;\"> - As per ISO standards</span></span></li><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana; color: rgb(0, 0, 0);\">Ideal usage - Enterprise/Business, Frequent users (for fast, high quality printing)</span></li><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana; color: rgb(0, 0, 0);\">Page size supported - A4, A5, B5, C5, C6, DL, postcard ; Duplex Print - Manual ; Print resolution - Up to 600 x 600 DPI</span></li><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana; color: rgb(0, 0, 0);\">Compatible Laser Toner - HP 12A Black Original LaserJet Toner Cartridge, Page Yield - 2000 pages</span></li><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana; color: rgb(0, 0, 0);\">Duty Cycle (Maximum monthly recommended prints) - Up to 5,000 pages per month.</span></li></ul>', 'pro_pdf/hp-laserjet-m1005-a4-mfp.pdf', 5, 5, '01-Jul-2020 15:20:35', '', 0, 0, 5),
(57, 15, 'PROID01075285', 'a4-mfps-laserjet', 'hp', 'HP Laserjet 1020 Plus Printer', 'hp-laserjet-1020-plus-printer', 11500.00, 'pro_img/multi_function_printers/hp/hp-laserjet-1020-plus-printer1.jpg', 'pro_img/multi_function_printers/hp/hp-laserjet-1020-plus-printer2.jpg', 'pro_img/multi_function_printers/hp/hp-laserjet-1020-plus-printer3.jpg', '', '', 5.00, '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &quot;Helvetica Neue&quot;;\"><span style=\"color: rgb(0, 0, 255); font-family: Verdana;\">Simple</span></p><span style=\"font-family: Verdana;\">\r\n</span><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &quot;Helvetica Neue&quot;;\"><span style=\"color: rgb(0, 0, 255); font-family: Verdana;\">Compact performer</span></p><span style=\"font-family: Verdana;\">\r\n</span><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: &quot;Helvetica Neue&quot;;\"><span style=\"color: rgb(0, 0, 255); font-family: Verdana;\">Affordable professional print quality</span></p><span style=\"font-family: Verdana;\">\r\n</span><ul style=\"list-style-type: disc\"><span style=\"font-family: Verdana;\">\r\n</span><li style=\"font-stretch: normal; font-size: 12px; line-height: normal; font-family: &quot;Helvetica Neue&quot;;\"><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-stretch: normal; font-size: 10px; line-height: normal; font-family: Menlo;\"></span><span style=\"font-family: Verdana;\">Print</span></span></li><span style=\"font-family: Verdana;\">\r\n</span><li style=\"font-stretch: normal; font-size: 12px; line-height: normal; font-family: &quot;Helvetica Neue&quot;;\"><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-stretch: normal; font-size: 10px; line-height: normal; font-family: Menlo;\"></span><span style=\"font-family: Verdana;\">Functions: Print</span></span></li><span style=\"font-family: Verdana;\">\r\n</span><li style=\"font-stretch: normal; font-size: 12px; line-height: normal; font-family: &quot;Helvetica Neue&quot;;\"><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-stretch: normal; font-size: 10px; line-height: normal; font-family: Menlo;\"></span><span style=\"font-family: Verdana;\">Print Speed (Black): Up to 14 ppm</span></span></li><span style=\"font-family: Verdana;\">\r\n</span><li style=\"font-stretch: normal; font-size: 12px; line-height: normal; font-family: &quot;Helvetica Neue&quot;;\"><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-stretch: normal; font-size: 10px; line-height: normal; font-family: Menlo;\"></span><span style=\"font-family: Verdana;\">Hi-Speed USB 2.0 port</span></span></li><li></li>\r\n</ul>', 'pro_pdf/hp-laserjet-1020-plus-printer.pdf', 5, 5, '01-Jul-2020 15:37:37', '', 0, 0, 5),
(58, 5, 'PROID07074204', 'spares-and-consumables', 'kyocera', 'Kyocera TK-7120 Toner Cartridge', 'kyocera-tk-7120-toner-cartridge', 4900.00, 'pro_img/spares_and_consumables/kyocera/kyocera-tk-7120-toner-cartridge1.png', 'pro_img/spares_and_consumables/kyocera/kyocera-tk-7120-toner-cartridge2.png', '', '', '', 30.00, '<p>Kyocera TK-7120 Toner Cartridge </p><p>For Use in TASKalfa 3212i</p><p>100% Original</p>', 'pro_pdf/kyocera-tk-7120-toner-cartridge.png', 25, 25, '07-Jul-2020 13:08:01', '07-Jul-2020 13:30:00', 0, 0, 0),
(59, 2, 'PROID07078140', 'spares-and-consumables', 'kyocera', 'Kyocera TK-4109 Toner Cartridge', 'kyocera-tk-4109-toner-cartridge', 4500.00, 'pro_img/spares_and_consumables/kyocera/kyocera-tk-4109-toner-cartridge1.png', 'pro_img/spares_and_consumables/kyocera/kyocera-tk-4109-toner-cartridge2.png', '', '', '', 30.00, '<p>Kyocera TK-4109 Toner Cartridge&nbsp;</p><p>For Use in TASKalfa 1800</p><p>For Use in TASKalfa 1801</p><p>For Use in TASKalfa 2200</p><p>For Use in TASKalfa 2201<br></p>', 'pro_pdf/kyocera-tk-4109-toner-cartridge.png', 25, 25, '07-Jul-2020 13:19:30', '', 0, 0, 0),
(60, 8, 'PROID07074547', 'spares-and-consumables', 'hp', 'HP M72625DN & M72630DN Toner Cartridge', 'hp-m72625dn-&-m72630dn-toner-cartridge', 4900.00, 'pro_img/spares_and_consumables/hp/hp-m72625dn--m72630dn-toner-cartridge1.png', 'pro_img/spares_and_consumables/hp/hp-m72625dn--m72630dn-toner-cartridge2.png', '', '', '', 25.00, '<p><span style=\"transition: all 0.3s ease 0s; font-family: Lato, sans-serif; font-size: 12px; letter-spacing: -0.3499999940395355px; -webkit-font-kerning: none; color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">HP LASERJET A3 MFP M72625DN</span></span></p><p><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; font-size: 12px; letter-spacing: -0.3499999940395355px; -webkit-font-kerning: none; color: rgb(255, 0, 255);\">Original Toner Cartridge&nbsp;</span></p><p><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; font-size: 12px; letter-spacing: -0.3499999940395355px; -webkit-font-kerning: none; color: rgb(255, 0, 255);\">For Use in M72625dn</span></p><p><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; font-size: 12px; letter-spacing: -0.3499999940395355px; -webkit-font-kerning: none; color: rgb(255, 0, 255);\">For Use in M72630dn<br></span></p><p><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; font-size: 12px; letter-spacing: -0.3499999940395355px; -webkit-font-kerning: none; color: rgb(255, 0, 255);\">High yield&nbsp;<br></span><br></p>', 'pro_pdf/hp-m72625dn--m72630dn-toner-cartridge.png', 25, 25, '07-Jul-2020 13:40:29', '', 0, 0, 0),
(61, 1, 'PROID07072449', 'spares-and-consumables', 'kyocera', 'Kyocera TK-1178 Toner Cartridge', 'kyocera-tk-1178-toner-cartridge', 3900.00, 'pro_img/spares_and_consumables/kyocera/kyocera-tk-1178-toner-cartridge1.png', 'pro_img/spares_and_consumables/kyocera/kyocera-tk-1178-toner-cartridge2.png', '', '', '', 30.00, '<p><span style=\"font-family: Verdana; color: rgb(255, 0, 0);\">Kyocera TK-1178 Toner Cartridge</span></p><p><span style=\"font-family: Verdana; color: rgb(255, 0, 0);\">Original Cartridge</span></p><p><span style=\"font-family: Verdana; color: rgb(255, 0, 0);\">For use in Ecosys M2040DN</span></p><p><span style=\"font-family: Verdana; color: rgb(255, 0, 0);\">For use in Ecosys M2540DN</span></p><p><span style=\"font-family: Verdana; color: rgb(255, 0, 0);\">For use in Ecosys M2640idw</span><br></p>', 'pro_pdf/kyocera-tk-1178-toner-cartridge.png', 25, 25, '07-Jul-2020 13:48:29', '', 0, 0, 0),
(62, 9, 'PROID07071261', 'spares-and-consumables', 'brother', 'Brother TN-B021 Toner Cartridge', 'brother-tn-b021-toner-cartridge', 890.00, 'pro_img/spares_and_consumables/brother/brother-tn-b021-toner-cartridge1.png', 'pro_img/spares_and_consumables/brother/brother-tn-b021-toner-cartridge2.png', '', '', '', 10.00, '<p><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">Brother TN-B021 Toner Cartridge</span><span style=\"font-family: Verdana;\">﻿</span></span></p><p><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">100% Original</span></span></p><p><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">FOR USE WITH</span></span></p><p><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">HL-B2000D, B2080DW</span></span></p><p><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">DCP-B7500D, DCP-B7535DW</span></span></p><p><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">MFC-B7715DW<br></span></span><br></p>', 'pro_pdf/brother-tn-b021-toner-cartridge.png', 25, 25, '07-Jul-2020 14:03:41', '', 0, 0, 0),
(63, 10, 'PROID07077386', 'spares-and-consumables', 'brother', 'Brother DR-B021 Drum Unit', 'brother-dr-b021-drum-unit', 1950.00, 'pro_img/spares_and_consumables/brother/brother-dr-b021-drum-unit1.png', 'pro_img/spares_and_consumables/brother/brother-dr-b021-drum-unit2.png', '', '', '', 5.00, '<p><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">BROTHER A4 MFP Drum Unit</span></span></p><p><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">100% Original</span></span></p><p><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">FOR USE WITH</span></span></p><p><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">HL-B2000D, B2080DW</span></span></p><p><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">DCP-B7500D, DCP-B7535DW</span></span></p><p><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">MFC-B7715DW<br></span></span></p>', 'pro_pdf/brother-dr-b021-drum-unit.png', 10, 10, '07-Jul-2020 14:07:48', '', 0, 0, 0),
(64, 4, 'PROID07076608', 'spares-and-consumables', 'kyocera', 'Kyocera TK-7119 Toner Cartridge', 'kyocera-tk-7119-toner-cartridge', 4900.00, 'pro_img/spares_and_consumables/kyocera/kyocera-tk-7119-toner-cartridge1.png', 'pro_img/spares_and_consumables/kyocera/kyocera-tk-7119-toner-cartridge2.png', '', '', '', 20.00, '<p style=\"line-height: 26px; caret-color: rgb(51, 51, 51); font-family: &quot;Sofia Pro Light&quot;, sans-serif; letter-spacing: -0.3499999940395355px;\"><span style=\"font-family: Verdana; color: rgb(255, 0, 0);\">Kyocera TK-7120 Toner Cartridge&nbsp;</span></p><p style=\"line-height: 26px; caret-color: rgb(51, 51, 51); font-family: &quot;Sofia Pro Light&quot;, sans-serif; letter-spacing: -0.3499999940395355px;\"><span style=\"font-family: Verdana;\"><span style=\"color: rgb(255, 0, 0);\">For Use in TASKalfa <span style=\"background-color: rgb(255, 255, 255);\">3011i</span></span></span></p><p style=\"margin-bottom: 0px; line-height: 26px; caret-color: rgb(51, 51, 51); font-family: &quot;Sofia Pro Light&quot;, sans-serif; letter-spacing: -0.3499999940395355px;\"><span style=\"font-family: Verdana; color: rgb(255, 0, 0);\">100% Original</span></p>', 'pro_pdf/kyocera-tk-7119-toner-cartridge.png', 10, 10, '07-Jul-2020 14:26:57', '', 0, 0, 0),
(65, 6, 'PROID07078465', 'spares-and-consumables', 'hp', 'HP M433a Toner Cartridge (56A)', 'hp-m433a-toner-cartridge-(56a)', 2500.00, 'pro_img/spares_and_consumables/hp/hp-m433a-toner-cartridge-(56a)1.png', 'pro_img/spares_and_consumables/hp/hp-m433a-toner-cartridge-(56a)2.png', '', '', '', 10.00, '<p style=\"line-height: 26px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;Sofia Pro Light&quot;, sans-serif; letter-spacing: -0.3499999940395355px;\">HP 56A Toner Cartridge&nbsp;</p><p style=\"line-height: 26px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;Sofia Pro Light&quot;, sans-serif; letter-spacing: -0.3499999940395355px;\">For Use in HP M433a A3 MFP</p><p style=\"margin-bottom: 0px; line-height: 26px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;Sofia Pro Light&quot;, sans-serif; letter-spacing: -0.3499999940395355px;\">100% Original</p>', 'pro_pdf/hp-m433a-toner-cartridge-(56a).png', 10, 10, '07-Jul-2020 14:38:50', '', 0, 0, 0),
(66, 7, 'PROID07078330', 'spares-and-consumables', 'hp', 'HP M436 Series Toner Cartridge (56X)', 'hp-m436-series-toner-cartridge-(56x)', 2650.00, 'pro_img/spares_and_consumables/hp/hp-m436-series-toner-cartridge-(56x)1.jpg', 'pro_img/spares_and_consumables/hp/hp-m436-series-toner-cartridge-(56x)2.png', 'pro_img/spares_and_consumables/hp/hp-m436-series-toner-cartridge-(56x)3.png', '', '', 5.00, '<p>HP M436 Series Toner Cartridge </p><p>Model: 56X</p><p>FOR USE IN: M436n, M436dn, M436nda</p><p>100% Original</p>', 'pro_pdf/hp-m436-series-toner-cartridge-(56x).jpg', 25, 25, '07-Jul-2020 15:53:56', '07-Jul-2020 15:55:03', 0, 0, 0),
(67, 3, 'PROID07078694', 'spares-and-consumables', 'kyocera', 'Kyocera TK-7109 Toner Cartridge', 'kyocera-tk-7109-toner-cartridge', 5500.00, 'pro_img/spares_and_consumables/kyocera/kyocera-tk-7109-toner-cartridge1.png', 'pro_img/spares_and_consumables/kyocera/kyocera-tk-7109-toner-cartridge2.png', '', '', '', 20.00, '<p style=\"line-height: 26px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;Sofia Pro Light&quot;, sans-serif; letter-spacing: -0.3499999940395355px;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(255, 0, 0);\">Kyocera TK-7109 Toner Cartridge&nbsp;</span></p><p style=\"line-height: 26px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;Sofia Pro Light&quot;, sans-serif; letter-spacing: -0.3499999940395355px;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana;\"><span style=\"transition: all 0.3s ease 0s; color: rgb(255, 0, 0);\">For Use in TASKalfa&nbsp;<span style=\"transition: all 0.3s ease 0s;\">3010i</span></span></span></p><p style=\"margin-bottom: 0px; line-height: 26px; caret-color: rgb(51, 51, 51); color: rgb(51, 51, 51); font-family: &quot;Sofia Pro Light&quot;, sans-serif; letter-spacing: -0.3499999940395355px;\"><span style=\"transition: all 0.3s ease 0s; font-family: Verdana; color: rgb(255, 0, 0);\">100% Original</span></p>', 'pro_pdf/kyocera-tk-7109-toner-cartridge.jpg', 25, 25, '07-Jul-2020 16:59:49', '', 0, 0, 0);
INSERT INTO `product` (`id`, `pro_order`, `pro_id`, `cat_seo`, `brand_seo`, `pro_name`, `pro_seo`, `price`, `pro_img`, `pro_img2`, `pro_img3`, `pro_img4`, `pro_video`, `offers`, `desc1`, `pro_pdf`, `stock`, `remaining_stock`, `adding_date`, `modify_date`, `most_view`, `bestseller`, `ratings`) VALUES
(68, 18, 'PROID07076781', 'a3-mfps-bw', 'konica-minolta', 'Bizhub 205i', 'bizhub-205i', 55000.00, 'pro_img/digital_copiers_bw/konica_minolta/bizhub-205i1.jpg', 'pro_img/digital_copiers_bw/konica_minolta/konica-minolta-bizhub-205i2.jpg', 'pro_img/digital_copiers_bw/konica_minolta/bizhub-205i3.jpg', '', '', 20.00, '<h5><span style=\"color: rgb(0, 0, 255);\"><span style=\"caret-color: rgb(75, 75, 75); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><span style=\"font-family: Verdana;\">Konica Minolta Bizhub 205i A3 MFP</span><br></span><span style=\"caret-color: rgb(75, 75, 75); font-family: Arial, Helvetica, sans-serif; font-size: 13px; text-align: justify;\"><span style=\"font-family: Verdana;\">Easy to understand and easy to use.</span><br></span><span style=\"caret-color: rgb(75, 75, 75); font-family: Verdana; font-size: 13px; text-align: justify;\">One touch buttons for speedy operation</span></span></h5>', 'pro_pdf/konica-minolta-bizhub-205i.pdf', 5, 5, '07-Jul-2020 18:09:44', '08-Jul-2020 20:24:23', 0, 0, 4),
(69, 19, 'PROID07076250', 'a3-mfps-bw', 'konica-minolta', 'Bizhub 225i', 'bizhub-225i', 65000.00, 'pro_img/digital_copiers_bw/konica_minolta/konica-minolta-bizhub-225i1.jpg', 'pro_img/digital_copiers_bw/konica_minolta/konica-minolta-bizhub-225i2.jpg', '', '', '', 20.00, '<h6><span style=\"font-family: Verdana;\"><span style=\"font-family: Verdana;\">Konica Minolta Bizhub 225i A3 MFP</span><br></span><h6><b style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\"><span style=\"font-family: Verdana;\">THINK SEAMLESS USER EXPERIENCE&nbsp;</span><br></span></b><b style=\"color: rgb(165, 74, 123);\"><span style=\"font-family: Verdana;\">RETHINK EFFICIENCY</span></b></h6></h6>', 'pro_pdf/konica-minolta-bizhub-225i.pdf', 5, 5, '07-Jul-2020 18:21:23', '08-Jul-2020 20:27:41', 0, 0, 4),
(70, 69, 'PROID07076337', 'a3-mfps-colour', 'konica-minolta', 'Bizhub C258', 'bizhub-c258', 225000.00, 'pro_img/colour_copiers/konica_minolta/bizhub-c2581.png', 'pro_img/colour_copiers/konica_minolta/bizhub-c2582.jpg', '', '', '', 20.00, '<p><span style=\"color: rgb(0, 0, 255);\">KONICA MINOLTA BIZHUB C258 MULTICOLOUR MFP</span></p><p><span style=\"color: rgb(0, 0, 255);\">MULTIFOLD</span></p><p><span style=\"color: rgb(0, 0, 255);\">FUNCTIONALITY WITH VIBRANT COLOUR</span></p>', 'pro_pdf/bizhub-c258.pdf', 5, 5, '07-Jul-2020 20:42:11', '09-Jul-2020 17:06:26', 0, 0, 4),
(71, 21, 'PROID07079631', 'a3-mfps-bw', 'konica-minolta', 'Bizhub 266i', 'bizhub-266i', 90000.00, 'pro_img/digital_copiers_bw/konica_minolta/konica-minolta-bizhub-266i1.jpg', 'pro_img/digital_copiers_bw/konica_minolta/konica-minolta-bizhub-266i2.jpg', 'pro_img/digital_copiers_bw/konica_minolta/konica-minolta-bizhub-266i3.jpg', '', '', 20.00, '<h6 class=\"dropdown-item\"><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">KONICA MINOLTA bizhub 266i A3 MFP<br></span><span style=\"font-family: Verdana;\">Optional RADF, Extra Trays & Trolley</span></span></h6>', 'pro_pdf/konica-minolta-bizhub-266i.pdf', 5, 5, '07-Jul-2020 21:17:05', '08-Jul-2020 20:31:10', 0, 0, 4),
(72, 72, '3KZ66PA', 'hp-laptops', 'hp', 'HP Laptop 245 G6', 'hp-laptop-245-g6', 25500.00, 'pro_img/hp_laptops/hp/hp-laptop-245-g61.png', 'pro_img/hp_laptops/hp/hp-laptop-245-g62.jpg', '', '', '', 30.00, '<p><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">﻿AMD A6 9220</span></p><p><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">4GB RAM</span></p><p><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">500GB HDD</span></p><p><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">WINDOWS 10 SL</span></p><p><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">14\" Display</span></p><p><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">3 Years Warranty with bag</span></span></p><p><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">Suitable for:&nbsp;</span></span><span style=\"font-family: Verdana; color: rgb(0, 0, 255); font-size: 0.875rem;\">Work from home &amp; Learn from home</span></p><p><br></p>', 'pro_pdf/hp-laptop-245-g6.jpg', 5, 5, '08-Jul-2020 17:58:38', '', 0, 0, 4),
(73, 22, 'PROID08077482', 'a3-mfps-bw', 'konica-minolta', 'Bizhub 306i', 'bizhub-306i', 110000.00, 'pro_img/digital_copiers_bw/konica_minolta/bizhub-306i1.jpg', 'pro_img/digital_copiers_bw/konica_minolta/bizhub-306i2.jpg', 'pro_img/digital_copiers_bw/konica_minolta/bizhub-306i3.jpg', '', '', 20.00, '<h6><ul style=\"margin-bottom: 0px; border: 0px; vertical-align: baseline; outline: 0px; list-style-position: inside; max-height: 100%; background-position: 0px 0px;\"><span style=\"caret-color: rgb(75, 75, 75); font-family: Verdana; font-size: 13px; text-align: justify; color: rgb(0, 0, 255);\">Enjoy a flexible mobile work style by using iOS and Android mobile devices to take advantage of printing and other features. Use the latest mobile technologies to connect with bizhub 306i series, print documents, import scanned data and more from smart phones and tablets.</span><br></ul><ul style=\"margin-bottom: 0px; border: 0px; vertical-align: baseline; outline: 0px; list-style-position: inside; max-height: 100%; background-position: 0px 0px;\"></ul></h6>', 'pro_pdf/bizhub-306i.pdf', 5, 5, '08-Jul-2020 20:20:41', '', 0, 0, 4),
(74, 20, 'PROID08079996', 'a3-mfps-bw', 'konica-minolta', 'Bizhub 226i', 'bizhub-226i', 75000.00, 'pro_img/digital_copiers_bw/konica_minolta/bizhub-226i1.jpg', 'pro_img/digital_copiers_bw/konica_minolta/bizhub-226i2.jpg', '', '', '', 20.00, '<h5><span style=\"caret-color: rgb(75, 75, 75); font-family: Verdana; font-size: 13px; text-align: justify; color: rgb(0, 0, 255);\">Konica Minolta Bizhub 226i</span></h5><h5><span style=\"caret-color: rgb(75, 75, 75); font-family: Verdana; font-size: 13px; text-align: justify; color: rgb(0, 0, 255);\">A3 multifunctional with 22 ppm b/w. Standard</span></h5>', 'pro_pdf/bizhub-226i.pdf', 5, 5, '08-Jul-2020 20:42:35', '', 0, 0, 4),
(75, 75, 'PROID08074826', 'a3-mfps-colour', 'konica-minolta', 'Bizhub C250i', 'bizhub-c250i', 225000.00, 'pro_img/colour_copiers/konica_minolta/bizhub-c250i1.jpg', 'pro_img/colour_copiers/konica_minolta/bizhub-c250i2.jpg', 'pro_img/colour_copiers/konica_minolta/bizhub-c250i3.jpg', '', '', 20.00, '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Avenir; color: rgb(12, 98, 177);\"><span style=\"font-kerning: none; background-color: #f6f7f9\"><b>i Series&nbsp;</b></span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Avenir; color: rgb(12, 98, 177);\"><span style=\"font-kerning: none; background-color: #f6f7f9\"><b>EXPERIENCE</b></span></p>\r\n<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Avenir; color: rgb(12, 98, 177);\"><span style=\"font-kerning: none; background-color: #f6f7f9\"><b>THE COLOURFUL</b></span></p>\r\n<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Avenir; color: rgb(12, 98, 177);\"><span style=\"font-kerning: none; background-color: #f6f7f9\"><b>TRANSFORMATION</b></span></p>\r\n<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-stretch: normal; font-size: 12px; line-height: normal; font-family: Avenir; color: rgb(174, 20, 103); background-color: rgb(246, 247, 249);\"><span style=\"font-kerning: none\"><b>RETHINK COLOURS</b></span></p>', 'pro_pdf/bizhub-c250i.pdf', 5, 5, '08-Jul-2020 21:14:19', '', 0, 0, 4),
(76, 76, 'PROID08071560', 'a3-mfps-colour', 'konica-minolta', 'Bizhub C300i', 'bizhub-c300i', 250000.00, 'pro_img/colour_copiers/konica_minolta/bizhub-c300i1.jpg', 'pro_img/colour_copiers/konica_minolta/bizhub-c300i2.jpg', 'pro_img/colour_copiers/konica_minolta/bizhub-c300i3.jpg', '', '', 20.00, '<h6><span style=\"color: rgb(0, 0, 255); transition: all 0.3s ease 0s; -webkit-font-kerning: none; background-color: rgb(246, 247, 249);\">i Series&nbsp;<br></span><span style=\"color: rgb(0, 0, 255); transition: all 0.3s ease 0s; -webkit-font-kerning: none; background-color: rgb(246, 247, 249);\">EXPERIENCE<br></span><span style=\"color: rgb(0, 0, 255); transition: all 0.3s ease 0s; -webkit-font-kerning: none; background-color: rgb(246, 247, 249);\">THE COLOURFUL<br></span><span style=\"color: rgb(0, 0, 255); transition: all 0.3s ease 0s; -webkit-font-kerning: none; background-color: rgb(246, 247, 249);\">TRANSFORMATION<br></span><span style=\"transition: all 0.3s ease 0s; -webkit-font-kerning: none; background-color: rgb(246, 247, 249); color: rgb(255, 0, 255);\">RETHINK COLOURS</span></h6>', 'pro_pdf/bizhub-c300i.pdf', 5, 5, '08-Jul-2020 21:43:07', '', 0, 0, 4),
(77, 9, 'PROID09074646', 'a4-mfps-laserjet', 'brother', 'Brother DCP-B7500D', 'brother-dcp-b7500d', 15500.00, 'pro_img/multi_function_printers/brother/brother-dcp-b7500d1.jpg', 'pro_img/multi_function_printers/brother/brother-dcp-b7500d2.jpg', 'pro_img/multi_function_printers/brother/brother-dcp-b7500d3.jpg', '', '', 20.00, '<h6 style=\"font-family: \"Helvetica Neue\", Helvetica, Arial; color: rgb(37, 54, 74);\"><span style=\"color: rgb(0, 0, 255); font-family: Verdana;\">DCP-B7500D</span></h6><h6 style=\"font-family: \"Helvetica Neue\", Helvetica, Arial; color: rgb(37, 54, 74);\"><span style=\"color: rgb(0, 0, 255); font-family: Verdana;\">Cost effective 3-in-1 </span></h6><h6 style=\"font-family: \"Helvetica Neue\", Helvetica, Arial; color: rgb(37, 54, 74);\"><span style=\"color: rgb(0, 0, 255); font-family: Verdana;\">Multi-Function Printer with Automatic Two-sided Printing</span></h6>', 'pro_pdf/brother-dcp-b7500d.pdf', 5, 5, '09-Jul-2020 20:46:44', '09-Jul-2020 20:52:21', 0, 0, 4),
(78, 5, 'PROID11073894', 'a4-mfps-inktank', 'epson', 'Epson Eco Tank L6170', 'epson-eco-tank-l6170', 21500.00, 'pro_img/a4_mfps_inktank/epson/epson-eco-tank-l61701.png', 'pro_img/a4_mfps_inktank/epson/epson-eco-tank-l61702.png', 'pro_img/a4_mfps_inktank/epson/epson-eco-tank-l61703.png', '', '', 5.00, '<h6><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana; caret-color: rgb(48, 48, 48); font-size: 16px;\">Epson L6170 Wi-Fi Duplex With ADF</span><br></span></h6><h6><ul style=\"font-size: 16px; margin-bottom: 10px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Compact integrated tank design</span></li></ul><ul style=\"font-size: 16px; margin-bottom: 10px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Print speeds up to 15ipm for black and 8.0ipm for colour</span></li></ul><ul style=\"font-size: 16px; margin-bottom: 10px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Auto-duplex printing</span></li></ul><ul style=\"font-size: 16px; margin-bottom: 10px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">ADF capability</span></li></ul><ul style=\"font-size: 16px; margin-bottom: 10px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Ethernet &amp; Wi-Fi Direct</span></li></ul><ul style=\"font-size: 16px; margin-bottom: 10px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Borderless Printing up to A4 size&nbsp;</span></li></ul><ul style=\"font-size: 16px; margin-bottom: 10px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Spill-free ink refilling</span></li></ul></h6><h5><span style=\"caret-color: rgb(48, 48, 48); font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; font-size: 30px;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\"> </span></span></h5><p><br></p>', 'pro_pdf/epson-eco-tank-l6170.pdf', 5, 5, '11-Jul-2020 18:01:49', '', 0, 0, 4),
(79, 4, 'PROID11076919', 'a4-mfps-inktank', 'epson', 'Epson Eco Tank L4160', 'epson-eco-tank-l4160', 17500.00, 'pro_img/a4_mfps_inktank/epson/epson-eco-tank-l41601.png', 'pro_img/a4_mfps_inktank/epson/epson-eco-tank-l41602.png', 'pro_img/a4_mfps_inktank/epson/epson-eco-tank-l41603.png', '', '', 5.00, '<h6 class=\"dropdown-item\"><p><span style=\"font-size: 16px; font-weight: 400; font-family: Verdana; color: rgb(0, 0, 255);\">MIGHTY SAVINGS, COMPACT DESIGN.</span></p><ul style=\"margin-bottom: 10px; font-size: 16px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Compact integrated tank design</span></li></ul><ul style=\"margin-bottom: 10px; font-size: 16px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Print speeds up to 10.5ipm for black and 5.0ipm for colour</span></li></ul><ul style=\"margin-bottom: 10px; font-size: 16px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Auto-duplex printing</span></li></ul><ul style=\"margin-bottom: 10px; font-size: 16px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Wi-Fi &amp; Wi-Fi Direct</span></li></ul><ul style=\"margin-bottom: 10px; font-size: 16px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Borderless Printing up to A4 size&nbsp;</span></li></ul><ul style=\"margin-bottom: 10px; font-size: 16px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">Spill-free ink refilling</span></li></ul></h6><ul style=\"margin-bottom: 10px; font-size: 16px; word-break: normal; font-family: &quot;Helvetica LT W01 Roman&quot;, Helvetica, &quot;Open Sans&quot;, Arial, sans-serif; caret-color: rgb(48, 48, 48);\"><li style=\"word-break: normal;\"><br></li></ul>', 'pro_pdf/epson-eco-tank-l4160.pdf', 5, 5, '11-Jul-2020 18:14:45', '', 0, 0, 4),
(80, 10, 'PROID11078980', 'a4-mfps-inktank', 'canon', 'Canon Pixma G6070', 'canon-pixma-g6070', 21500.00, 'pro_img/a4_mfps_inktank/canon/canon-pixma-g60701.png', 'pro_img/a4_mfps_inktank/canon/canon-pixma-g60702.png', 'pro_img/a4_mfps_inktank/canon/canon-pixma-g60703.png', '', '', 5.00, '<h6 class=\"dropdown-item\"><ul class=\"margin-bottom0\" style=\"font-size: 16px; margin-bottom: 25px; padding-left: 30px; caret-color: rgb(111, 111, 111); font-family: Lato, sans-serif;\"><li style=\"margin-bottom: 5px;\"><span style=\"color: rgb(255, 0, 0); font-family: Verdana;\">Print, Scan, Copy, Duplex &amp; Wi-Fi</span></li></ul><ul class=\"margin-bottom0\" style=\"font-size: 16px; margin-bottom: 25px; padding-left: 30px; caret-color: rgb(111, 111, 111); font-family: Lato, sans-serif;\"><li style=\"margin-bottom: 5px;\"><span style=\"color: rgb(255, 0, 0); font-family: Verdana;\">Hi-speed USB 2.0 &amp; Network</span></li></ul></h6>', '', 5, 5, '11-Jul-2020 18:39:35', '', 0, 0, 4),
(81, 11, 'PROID11074328', 'a4-mfps-inktank', 'brother', 'DCP-T310 INKTANK MFP', 'dcp-t310-inktank-mfp', 10500.00, 'pro_img/a4_mfps_inktank/brother/dcp-t310-inktank-mfp1.jpg', 'pro_img/a4_mfps_inktank/brother/dcp-t310-inktank-mfp2.jpg', 'pro_img/a4_mfps_inktank/brother/dcp-t310-inktank-mfp3.jpg', '', '', 5.00, '<h5><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\"><span style=\"font-family: Helvetica;\">DCP-T310 - All in one Ink Tank Multi-Function</span></span></span></h5><h5><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;;\"><span style=\"font-family: Helvetica;\">Print, Scan &amp; Copy: Low cost quality printing</span></span></span></h5><h5><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;;\"><span style=\"font-family: Helvetica;\">with Ultra-high 6500 page yield (black ink)</span></span></span></h5><h5><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;;\"><span style=\"font-family: Helvetica;\">5000 page yield (colour ink).</span></span></span></h5><h5><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;;\"><span style=\"font-family: Helvetica;\">Embedded front-access refill ink tank.</span></span></span></h5><h5><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: &quot;Helvetica Neue&quot;;\"><span style=\"font-family: Helvetica;\">Flexible paper handling with Default Paper Tray</span></span></span></h5><h5><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Helvetica;\">&amp; 1-sheet Manual Feed Slot. Borderless printing.</span></span></h5>', 'pro_pdf/dcp-t310-inktank-mfp.pdf', 5, 5, '11-Jul-2020 18:51:18', '', 0, 0, 4),
(82, 12, 'PROID11077580', 'a4-mfps-inktank', 'brother', 'DCP-T510W INKTANK MFP', 'dcp-t510w-inktank-mfp', 12500.00, 'pro_img/a4_mfps_inktank/brother/dcp-t510w-inktank-mfp1.jpg', 'pro_img/a4_mfps_inktank/brother/dcp-t510w-inktank-mfp2.jpg', 'pro_img/a4_mfps_inktank/brother/dcp-t510w-inktank-mfp3.jpg', '', '', 5.00, '<h5><span style=\"color: rgb(0, 0, 255);\"><span style=\"font-family: Verdana;\">Print, Scan &amp; Copy with Built-in Wireless.</span><br><span style=\"font-family: Verdana;\"> </span><span style=\"font-family: Verdana;\">Wifi-Direct, Direct Mobile Print/Scan.</span><br><span style=\"font-family: Verdana;\"> </span><span style=\"font-family: Verdana;\">Low cost quality printing with</span><br><span style=\"font-family: Verdana;\"> </span><span style=\"font-family: Verdana;\">Ultra-high 6500 page yield (black ink)</span><br><span style=\"font-family: Verdana;\">5000 page yield (colour ink).&nbsp;</span></span></h5>', 'pro_pdf/dcp-t510w-inktank-mfp.pdf', 5, 5, '11-Jul-2020 18:58:55', '', 0, 0, 4),
(83, 13, 'PROID11075823', 'a4-mfps-inktank', 'brother', 'DCP-T710W INKTANK MFP', 'dcp-t710w-inktank-mfp', 15500.00, 'pro_img/a4_mfps_inktank/brother/dcp-t710w-inktank-mfp1.jpg', 'pro_img/a4_mfps_inktank/brother/dcp-t710w-inktank-mfp2.jpg', 'pro_img/a4_mfps_inktank/brother/dcp-t710w-inktank-mfp3.jpg', '', '', 10.00, '<h6 class=\"dropdown-item\"><span style=\"color: rgb(0, 0, 255);\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizeLegibility; word-break: break-word; font-size: 19px !important; line-height: 1.3 !important;\"><span style=\"font-family: Helvetica;\">Brother DCP-T710W Inktank System Printer</span><br></span><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizeLegibility; word-break: break-word; font-size: 19px !important; line-height: 1.3 !important; font-family: Helvetica;\">with Wireless and Automatic Document Feeder Printing</span></span></h6>', 'pro_pdf/dcp-t710w-inktank-mfp.pdf', 5, 5, '11-Jul-2020 19:08:08', '', 0, 0, 4),
(84, 14, 'PROID11071732', 'a4-mfps-inktank', 'brother', 'DCP-T910DW INKTANK MFP', 'dcp-t910dw-inktank-mfp', 22000.00, 'pro_img/a4_mfps_inktank/brother/dcp-t910dw-inktank-mfp1.jpg', 'pro_img/a4_mfps_inktank/brother/dcp-t910dw-inktank-mfp2.jpg', 'pro_img/a4_mfps_inktank/brother/dcp-t910dw-inktank-mfp3.jpg', 'pro_img/a4_mfps_inktank/brother/dcp-t910dw-inktank-mfp4.jpg', '', 10.00, '<h6><h6><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana; background-color: rgb(255, 255, 255); color: rgb(156, 0, 255);\">Brother DCP-T910DW</span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana; background-color: rgb(255, 255, 255); color: rgb(156, 0, 255);\">Refill tank system</span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana; background-color: rgb(255, 255, 255); color: rgb(156, 0, 255);\">Upto 27/23 ppm (Mono/Color)</span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana; background-color: rgb(255, 255, 255); color: rgb(156, 0, 255);\">Built-in wireless</span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana; background-color: rgb(255, 255, 255); color: rgb(156, 0, 255);\">Automatic 2-sided printing</span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana; background-color: rgb(255, 255, 255); color: rgb(156, 0, 255);\">Automatic Document Feeder&nbsp;</span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana; background-color: rgb(255, 255, 255); color: rgb(156, 0, 255);\">High quality prints</span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana; background-color: rgb(255, 255, 255); color: rgb(156, 0, 255);\">Direct USB access&nbsp;</span></li></ul></h6></h6>', 'pro_pdf/dcp-t910dw-inktank-mfp.pdf', 5, 5, '11-Jul-2020 19:21:04', '', 0, 0, 5),
(85, 11, 'PROID11071818', 'a4-mfps-laserjet', 'brother', 'MFC-B7715DW A4 MFP', 'mfc-b7715dw-a4-mfp', 22600.00, 'pro_img/a4_mfps_laserjet/brother/mfc-b7715dw-a4-mfp1.jpg', 'pro_img/a4_mfps_laserjet/brother/mfc-b7715dw-a4-mfp2.jpg', 'pro_img/a4_mfps_laserjet/brother/mfc-b7715dw-a4-mfp3.png', '', '', 10.00, '<h6><span style=\"color: rgb(156, 0, 255);\">MFC-B7715DW - Cost Effective 4-in-1 Mono&nbsp;<span style=\"font-family: inherit; font-size: 0.875rem;\">Laser </span></span></h6><h6><span style=\"font-family: inherit; font-size: 0.875rem; color: rgb(156, 0, 255);\">Multi-Function Centre with Automatic 2-sided Printing </span></h6><h6><span style=\"font-family: inherit; font-size: 0.875rem; color: rgb(156, 0, 255);\">and Wireless Networking</span></h6>', 'pro_pdf/mfc-b7715dw-a4-mfp.pdf', 5, 5, '11-Jul-2020 19:36:37', '', 0, 0, 5),
(86, 13, 'PROID11077459', 'a4-mfps-laserjet', 'brother', 'MFC-L5900DW LGL MFP', 'mfc-l5900dw-lgl-mfp', 45000.00, 'pro_img/a4_mfps_laserjet/brother/mfc-l5900dw-lgl-mfp1.jpg', 'pro_img/a4_mfps_laserjet/brother/mfc-l5900dw-lgl-mfp2.jpg', 'pro_img/a4_mfps_laserjet/brother/mfc-l5900dw-lgl-mfp3.jpg', '', '', 20.00, '<h6><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana;\">Business laser multi-function w print, scan, copy and fax</span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); caret-color: rgb(17, 17, 17); font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><font face=\"Verdana\">Duplex, Direct Wi-Fi, Network Ready</font></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana;\">Easy to use control panel</span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana;\">Compatible Laser Toners - TN-3428 (3000 pages), </span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana;\">TN-3448 (8000 pages), </span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana;\">TN-3478 (12,000 pages) : as per ISO Standards</span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; color: rgb(17, 17, 17); caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"font-family: Verdana;\">Avail free Installation on this model from Brother.&nbsp;</span></li></ul></h6>', 'pro_pdf/mfc-l5900dw-lgl-mfp.pdf', 5, 5, '11-Jul-2020 20:07:30', '', 0, 0, 5),
(87, 14, 'PROID11076742', 'a4-mfps-laserjet', 'brother', 'DCP-L3551CDW Colour MFP', 'dcp-l3551cdw-colour-mfp', 32500.00, 'pro_img/a4_mfps_laserjet/brother/dcp-l3551cdw-colour-mfp1.jpg', 'pro_img/a4_mfps_laserjet/brother/dcp-l3551cdw-colour-mfp2.jpg', '', '', '', 10.00, '<h6><span style=\"color: rgb(156, 0, 255);\">Colour LED Multi-Function Centre<br> with Wireless &amp; Network Connectivity,<br> Automatic 2-sided Colour Print, ADF -<br> Multi-page Scan &amp; Copy, High Productivity<br> with Fast Print Speeds, Wi-Fi Direct,<br> Mobile &amp; USB Print,<br> Low Cost Quality Print Resolution with Affordable Toner&nbsp;</span></h6>', 'pro_pdf/dcp-l3551cdw-colour-mfp.pdf', 5, 5, '11-Jul-2020 20:29:57', '', 0, 0, 4),
(88, 7, 'PROID11079449', 'a4-mfps-laserjet', 'brother', 'MFC-L2701DW', 'mfc-l2701dw', 19500.00, 'pro_img/a4_mfps_laserjet/brother/mfc-l2701dw1.jpg', 'pro_img/a4_mfps_laserjet/brother/mfc-l2701dw2.jpg', 'pro_img/a4_mfps_laserjet/brother/mfc-l2701dw3.jpg', '', '', 20.00, '<h5 class=\"dropdown-item\"><span style=\"color: rgb(156, 0, 255);\">Automatic 2-sided Monochrome<br> Laser Multi-Function Centre<br> with Wireless Capability</span></h5>', 'pro_pdf/mfc-l2701dw.pdf', 5, 5, '11-Jul-2020 20:42:36', '', 0, 0, 4),
(89, 6, 'PROID11072922', 'a4-mfps-laserjet', 'brother', 'MFC-L2701D', 'mfc-l2701d', 16900.00, 'pro_img/a4_mfps_laserjet/brother/mfc-l2701d1.jpg', 'pro_img/a4_mfps_laserjet/brother/mfc-l2701d2.jpg', 'pro_img/a4_mfps_laserjet/brother/mfc-l2701d3.jpg', '', '', 10.00, '<h6><span style=\"color: rgb(0, 0, 255);\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizeLegibility; word-break: break-word; font-size: 19px !important; line-height: 1.3 !important;\">Brother MFC L2701D Monochrome<br> </span><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizeLegibility; word-break: break-word; font-size: 19px !important; line-height: 1.3 !important;\">Multi-Function Laser Printer with Duplex&nbsp;</span></span></h6>', 'pro_pdf/mfc-l2701d.pdf', 5, 5, '11-Jul-2020 21:22:40', '', 0, 0, 4),
(90, 8, 'PROID11079347', 'a4-mfps-laserjet', 'brother', 'DCP-L2541DW', 'dcp-l2541dw', 19900.00, 'pro_img/a4_mfps_laserjet/brother/dcp-l2541dw1.jpg', 'pro_img/a4_mfps_laserjet/brother/dcp-l2541dw2.jpg', 'pro_img/a4_mfps_laserjet/brother/dcp-l2541dw3.jpg', 'pro_img/a4_mfps_laserjet/brother/dcp-l2541dw4.jpg', '', 20.00, '<h6><span style=\"color: rgb(156, 0, 255);\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizeLegibility; word-break: break-word; font-size: 19px !important; line-height: 1.3 !important; font-family: Verdana;\">Brother DCP-L2541DW Multi-Function<br></span><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizeLegibility; word-break: break-word; font-size: 19px !important; line-height: 1.3 !important; font-family: Verdana;\">Wireless Monochrome Laser Printer<br></span><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizeLegibility; word-break: break-word; font-size: 19px !important; line-height: 1.3 !important; font-family: Verdana;\">with Network &amp; Auto Duplex Printing</span></span></h6>', 'pro_pdf/dcp-l2541dw.pdf', 5, 5, '11-Jul-2020 21:31:30', '', 0, 0, 4),
(91, 5, 'PROID11073250', 'a4-mfps-laserjet', 'brother', 'HL-L2321D', 'hl-l2321d', 9000.00, 'pro_img/a4_mfps_laserjet/brother/hl-l2321d1.jpg', 'pro_img/a4_mfps_laserjet/brother/hl-l2321d2.jpg', 'pro_img/a4_mfps_laserjet/brother/hl-l2321d3.jpg', '', '', 10.00, '<h6 class=\"dropdown-item\"><span style=\"color: rgb(156, 0, 255);\"><span style=\"caret-color: rgb(2, 9, 32); font-family: &quot;Open Sans&quot;;\">The Brother HL-L2321D personal laser printer is the reliable<br> </span><span style=\"caret-color: rgb(2, 9, 32); font-family: &quot;Open Sans&quot;;\">choice for your home or office. This desk-friendly,<br> </span><span style=\"caret-color: rgb(2, 9, 32); font-family: &quot;Open Sans&quot;;\">compact laser printer with an up to 250-sheet capacity tray<br> </span><span style=\"caret-color: rgb(2, 9, 32); font-family: &quot;Open Sans&quot;;\">connects with ease to your computer via the Hi-Speed USB 2.0<br> </span><span style=\"caret-color: rgb(2, 9, 32); font-family: &quot;Open Sans&quot;;\">interface and prints crisp black and white documents at up to 30ppm.<br> </span><span style=\"caret-color: rgb(2, 9, 32); font-family: &quot;Open Sans&quot;;\">Automatic duplex printing helps save paper.</span></span></h6>', 'pro_pdf/hl-l2321d.pdf', 5, 5, '11-Jul-2020 21:40:51', '', 0, 0, 4),
(92, 92, 'PROID11074728', 'a4-mfps-laserjet', 'canon', 'ImageCLASS MF232W', 'imageclass-mf232w', 16500.00, 'pro_img/a4_mfps_laserjet/canon/imageclass-mf232w1.jpg', 'pro_img/a4_mfps_laserjet/canon/imageclass-mf232w2.jpg', 'pro_img/a4_mfps_laserjet/canon/imageclass-mf232w3.jpg', 'pro_img/a4_mfps_laserjet/canon/imageclass-mf232w4.jpg', '', 20.00, '<h6><span style=\"color: rgb(255, 0, 0);\">Compact All-in-One (Print, Copy, Scan) </span></h6><h6><span style=\"color: rgb(255, 0, 0);\">with wireless connectivity</span></h6>', '', 5, 5, '11-Jul-2020 22:03:49', '', 0, 0, 4),
(93, 93, 'PROID11072037', 'a4-mfps-laserjet', 'canon', 'imageCLASS MF241D', 'imageclass-mf241d', 16900.00, 'pro_img/a4_mfps_laserjet/canon/imageclass-mf241d1.jpg', 'pro_img/a4_mfps_laserjet/canon/imageclass-mf241d2.jpg', '', '', '', 10.00, '<h6 class=\"dropdown-item\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizeLegibility; word-break: break-word; font-size: 19px !important; line-height: 1.3 !important; color: rgb(255, 0, 0);\">Canon MF241D Digital Multifunction Laser Printer</span></h6>', '', 5, 5, '11-Jul-2020 22:36:09', '', 0, 0, 4),
(94, 94, 'PROID11074363', 'a4-mfps-laserjet', 'canon', 'imageCLASS-MF244DW', 'imageclass-mf244dw', 21500.00, 'pro_img/a4_mfps_laserjet/canon/imageclass-mf244dw1.jpg', 'pro_img/a4_mfps_laserjet/canon/imageclass-mf244dw2.jpg', 'pro_img/a4_mfps_laserjet/canon/imageclass-mf244dw3.jpg', 'pro_img/a4_mfps_laserjet/canon/imageclass-mf244dw4.jpg', '', 10.00, '<p class=\"dropdown-item\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizeLegibility; word-break: break-word; font-size: 19px !important; line-height: 1.3 !important; font-family: Arial;\">Canon MF244DW Digital Multifunction Laser Printer</span></p>', '', 4, 4, '11-Jul-2020 23:29:38', '', 0, 0, 4),
(95, 95, 'PROID18073676', 'note-counting-machines', 'gobbler', 'Gobbler Mix Value Counter', 'gobbler-mix-value-counter', 10500.00, 'pro_img/note_counting_machines/gobbler/gobbler-mix-value-counter1.jpg', 'pro_img/note_counting_machines/gobbler/gobbler-mix-value-counter2.jpg', 'pro_img/note_counting_machines/gobbler/gobbler-mix-value-counter3.jpg', 'pro_img/note_counting_machines/gobbler/gobbler-mix-value-counter4.png', '', 20.00, '<h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"padding: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizeLegibility; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 21px !important; line-height: 1.3 !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizeLegibility; word-break: break-word; font-family: Helvetica; font-size: 19px !important; line-height: 1.3 !important; color: rgb(0, 0, 255);\">Automatic Mix Note Value Counting Machine.</span></h1><h1 id=\"title\" class=\"a-size-large a-spacing-none\" style=\"padding: 0px; margin-right: 0px; margin-left: 0px; text-rendering: optimizeLegibility; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; margin-bottom: 0px !important; font-size: 21px !important; line-height: 1.3 !important;\"><span id=\"productTitle\" class=\"a-size-large product-title-word-break\" style=\"text-rendering: optimizeLegibility; word-break: break-word; font-family: Helvetica; font-size: 19px !important; line-height: 1.3 !important; color: rgb(0, 0, 255);\">with Fake Note Detection &amp; Heavy Duty.</span></h1><h5 class=\"dropdown-item\"><div></div><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"color: rgb(255, 0, 0); font-family: Verdana;\">Latest updated software for old and Notes of Rs 10, 20, 50 and 100. </span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"color: rgb(255, 0, 0); font-family: Verdana;\">As well as for Rs 2000, 500 and 200. </span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"color: rgb(255, 0, 0); font-family: Verdana;\">Software updatable for future notes addition</span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"color: rgb(255, 0, 0); font-family: Verdana;\">Multicolour LCD display as main screen, </span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"color: rgb(255, 0, 0); font-family: Verdana;\">additional customer display included.</span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"color: rgb(255, 0, 0); font-family: Verdana;\">Accurately counts the notes.</span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"color: rgb(255, 0, 0); font-family: Verdana;\">Accurately detects fake Note while counting. </span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"color: rgb(255, 0, 0); font-family: Verdana;\">Machine stops on fake Note and the screen shows error message</span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-mini\" style=\"margin-bottom: 0px; margin-left: 18px; caret-color: rgb(17, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 13px;\"><li style=\"list-style-type: disc; word-wrap: break-word;\"><span class=\"a-list-item\" style=\"color: rgb(255, 0, 0); font-family: Verdana;\">Add, Batch, Count, Sort and Detect functions.&nbsp;</span></li></ul></h5>', '', 5, 5, '18-Jul-2020 19:24:56', '', 0, 0, 5),
(96, 96, 'PROID23072220', 'hp-laptops', 'hp', 'HP AIO 200 G3', 'hp-aio-200-g3', 31000.00, 'pro_img/hp_laptops/hp/hp-aio-200-g31.jpg', 'pro_img/hp_laptops/hp/hp-aio-200-g32.jpg', 'pro_img/hp_laptops/hp/hp-aio-200-g33.jpg', '', '', 20.00, '<p><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">HP AIO 200 G3</span></p><p><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">RAM: 4GB</span></p><p><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">HDD: 1TB</span></p><p><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">21.5\" FHD</span></p><p><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">OS Comes With: DOS</span></p><p><span style=\"font-family: Verdana; color: rgb(0, 0, 255);\">3 years Warranty</span></p>', '', 5, 5, '23-Jul-2020 16:37:20', '23-Jul-2020 16:39:08', 0, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `rental_enquiry`
--

CREATE TABLE `rental_enquiry` (
  `id` int(11) NOT NULL,
  `full_name` varchar(60) NOT NULL,
  `company_name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(30) NOT NULL,
  `rent_option` varchar(50) NOT NULL,
  `no_of_machines` varchar(50) NOT NULL,
  `monthly_volume` varchar(100) NOT NULL,
  `type_of_machine` varchar(120) NOT NULL,
  `print_speed` varchar(20) NOT NULL,
  `paper_weight` varchar(10) NOT NULL,
  `paper_size` varchar(100) NOT NULL,
  `purchase_option` varchar(200) NOT NULL,
  `information` varchar(300) NOT NULL,
  `enquiry_delivered` int(11) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `request_quote`
--

CREATE TABLE `request_quote` (
  `id` int(11) NOT NULL,
  `contact_name` varchar(30) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `email` varchar(60) NOT NULL,
  `address` varchar(150) NOT NULL,
  `city` varchar(30) NOT NULL,
  `type_of_machine` varchar(20) NOT NULL,
  `paper_size` varchar(50) NOT NULL,
  `print_volume` varchar(20) NOT NULL,
  `looking_for` varchar(50) NOT NULL,
  `date` varchar(40) NOT NULL,
  `message_sent` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `request_quote`
--

INSERT INTO `request_quote` (`id`, `contact_name`, `company_name`, `mobile_no`, `email`, `address`, `city`, `type_of_machine`, `paper_size`, `print_volume`, `looking_for`, `date`, `message_sent`) VALUES
(1, 'Raju', 'Raju', '9550867898', 'kakumanu.raju@gmail.com', 'Hyderabad ', 'Hyderabad ', 'A3 Color Copier', 'A4,Legal,A3', '10k-15k', 'Corporate Office', '01-Jul-2020 18:26:10', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_address`
--

CREATE TABLE `shipping_address` (
  `ship_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `shipping_name` varchar(30) NOT NULL,
  `shipping_email` varchar(60) NOT NULL,
  `shipping_mobile` varchar(12) NOT NULL,
  `shipping_country` varchar(30) NOT NULL,
  `shipping_address` varchar(300) NOT NULL,
  `shipping_city` varchar(30) NOT NULL,
  `shipping_state` varchar(30) NOT NULL,
  `shipping_zip` varchar(8) NOT NULL,
  `insert_date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_address`
--

INSERT INTO `shipping_address` (`ship_id`, `user_id`, `shipping_name`, `shipping_email`, `shipping_mobile`, `shipping_country`, `shipping_address`, `shipping_city`, `shipping_state`, `shipping_zip`, `insert_date`) VALUES
(3, 'ssnnoouu@gmail.com', 'Sonu kumar', 'ssnnoouu@gmail.com', '7366914827', 'India', 'SVH Hostel, yella reddy guda, beside bsnl office(Ameerpet)', 'Ameerpet', 'Telangana', '500083', '08-May-2020 13:37:06');

-- --------------------------------------------------------

--
-- Table structure for table `specification`
--

CREATE TABLE `specification` (
  `spec_autoid` int(11) NOT NULL,
  `proid` varchar(25) NOT NULL,
  `proseo` varchar(100) NOT NULL,
  `product_type` varchar(300) NOT NULL,
  `color_output` varchar(50) NOT NULL,
  `functions` varchar(300) NOT NULL,
  `technology` varchar(300) NOT NULL,
  `engine_speed` varchar(50) NOT NULL,
  `scan_speed` varchar(50) NOT NULL,
  `duplex` varchar(30) NOT NULL,
  `radf` varchar(20) NOT NULL,
  `dsdf` varchar(20) NOT NULL,
  `processor_speed` varchar(20) NOT NULL,
  `ram_memory` varchar(20) NOT NULL,
  `ssd` varchar(20) NOT NULL,
  `hdd` varchar(20) NOT NULL,
  `control_panel` varchar(100) NOT NULL,
  `zoom` varchar(20) NOT NULL,
  `first_copy_out_time` varchar(30) NOT NULL,
  `scan_to_pendrive` varchar(5) NOT NULL,
  `multiple_copies` varchar(150) NOT NULL,
  `print_from_pendrive` varchar(5) NOT NULL,
  `connectivity` varchar(20) NOT NULL,
  `mobile_print` varchar(5) NOT NULL,
  `direct_wi_fi` varchar(20) NOT NULL,
  `color_scanner` varchar(20) NOT NULL,
  `send_option` varchar(20) NOT NULL,
  `print_resolution` varchar(100) NOT NULL,
  `scan_resolution` varchar(30) NOT NULL,
  `paper_tray_capacity` varchar(50) NOT NULL,
  `multifunction_tray_capacity` varchar(50) NOT NULL,
  `max_original_size` varchar(20) NOT NULL,
  `paper_size` varchar(100) NOT NULL,
  `paper_weight_support` varchar(100) NOT NULL,
  `warmup_time` varchar(90) NOT NULL,
  `starter_toner` varchar(30) NOT NULL,
  `starter_toner_yield` varchar(50) NOT NULL,
  `drum_life` varchar(60) NOT NULL,
  `toner_yield` varchar(60) NOT NULL,
  `full_toner` varchar(60) NOT NULL,
  `power_consumption` varchar(60) NOT NULL,
  `optional_unit` text NOT NULL,
  `warranty` varchar(300) NOT NULL,
  `stabilizer` varchar(30) NOT NULL,
  `perfect_for` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specification`
--

INSERT INTO `specification` (`spec_autoid`, `proid`, `proseo`, `product_type`, `color_output`, `functions`, `technology`, `engine_speed`, `scan_speed`, `duplex`, `radf`, `dsdf`, `processor_speed`, `ram_memory`, `ssd`, `hdd`, `control_panel`, `zoom`, `first_copy_out_time`, `scan_to_pendrive`, `multiple_copies`, `print_from_pendrive`, `connectivity`, `mobile_print`, `direct_wi_fi`, `color_scanner`, `send_option`, `print_resolution`, `scan_resolution`, `paper_tray_capacity`, `multifunction_tray_capacity`, `max_original_size`, `paper_size`, `paper_weight_support`, `warmup_time`, `starter_toner`, `starter_toner_yield`, `drum_life`, `toner_yield`, `full_toner`, `power_consumption`, `optional_unit`, `warranty`, `stabilizer`, `perfect_for`) VALUES
(1, 'M247fdw', 'hp-laser-pro-a4-mfp-m427fdw', 'A4-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Fax', 'LaserJet', '38 ppm', '26 ipm', 'Standard', 'Standard', 'Standard', '1200MHz', '256 MB', '', 'Standard', 'Colour-Touch-Screen', '', '5.6sec', 'Yes', '', 'Yes', 'USB-port^Network', 'Yes', 'Standard', 'Standard', 'Standard', '1200X1200-DPI', '1200X1200-DPI', 'Single Tray 250 SheetsX1', '100-Sheets', 'A4', 'A4^LGL', 'Up-to-100GSM', '30-sec-or-less', 'Yes', '', '50,000* copies', '9,200* copies (CF228X)', '', '587w or less', 'Trolley', 'As per manufacturer terms', '', 'Home^Students^Enterprise-Organisation^IT-and-Industries^Corporate-offices^Limited-Company\'s^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Small-Medium-Business^Hospitals-and-Health'),
(2, 'PROID25045635', 'brother-dcp-b7535-a4-mfp', 'A4-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '34ppm', '', 'Standard', 'Standard', '', '600MHz', '128 MB', '', '', '2line-LCD-with-keypad', '', '', 'No', '1-99', 'No', 'USB-port^Network', 'Yes', 'Standard', 'Standard', 'Standard', '600X600-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '1-Sheet', 'A4', 'A4^LGL', '', '30-sec-or-less', '', '', '12,000 pages', '2,600 pages', 'Yes', '475W', 'Trolley', '12 Months from date of purchase', '', 'Home^Students^Limited-Company\'s^Enterprise-Organisation^Schools-and-Colleges^IT-and-Industries^Multinational-Company\'s^Corporate-offices^Legal-and-Advocate-offices^Security-company-Start-up-Company'),
(3, 'PROID25043449', 'brother-dcp-l5600dn-lgl-mfp', 'A4-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', 'Up to 40 ppm', 'Up to28 ipm', 'Standard', 'Standard', '', 'cortex-A9 800 MHz', '512 MB', '', '', '3.7', '', 'Up to 40 ppm', 'Yes', '', 'Yes', 'USB-port^Network', '', '', 'Standard', '', '1200X1200-DPI', '1200X1200-DPI', 'Single Tray 250 SheetsX1', '50-Sheets', 'LGL', 'A4^LGL', '', '25-sec-or-less', 'Yes', 'TN-3428: 3,000 pages**', '30,000 copies*', 'TN-3448: 8,000 pages**', '', '', 'Trolley', 'One Year onsite Limited Warranty', '', 'Commercial-Printing^Photocopy-Shop^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Small-Medium-Business^Insurance-and-Banks^IT-and-Industries'),
(4, 'PROID25041862', 'epson-eco-tank-l3101', 'A4-MFP', 'Color', 'Print-Scan-and-Copy', 'Inkjet', '20 ppm', '', 'No', 'No', '', '', '', '', '', '', '', '', '', '', '', 'USB-port', '', 'No', 'Standard', '', '', '', '', '', 'A4', 'A4^LGL', '', '', '', '', '', '', '', '12w', '', 'As per manufacturer terms', '', 'Home^Students'),
(5, 'PROID25048920', 'epson-eco-tank-l3150', 'A4-MFP', 'Color', 'Print-Scan-and-Copy', 'Inkjet', '15 ppm colour', '', 'No', 'No', '', '', '', '', '', '', '', '', '', '', '', 'USB-port', 'Yes', 'Standard', 'Standard', '', '', '', '', '', 'A4', 'A4^LGL', '', '', '', '', '', '', '', '12w', '', 'As per manufacturer terms', '', 'Home^Students'),
(6, 'PROID25044234', 'epson-eco-tank-l5190', 'A4-MFP', 'Color', 'Print-Scan-Copy-and-Fax', 'Inkjet', '15 ppm colour', '', 'No', '', '', '', '', '', '', '', '', '', '', '1-99', '', 'USB-port^Network', 'Yes', 'Standard', 'Standard', '', '600X600-DPI', '600X600-DPI', '', '', 'A4', 'A4^LGL', '', '', '', '', '', '', '', '12w', '', 'As per manufacturer terms', '', 'Home^Students^Photocopy-Shop^Xerox-shop^Small-Medium-Business'),
(7, 'PROID25049249', 'epson-l805-printer', '', 'Color', 'Printer-Only', 'Inkjet', '37 ppm', '', 'No', '', '', '', '', '', '', '', '', '', '', '', '', 'USB-port', 'Yes', 'Standard', '', '', '600X600-DPI', '600X600-DPI', '', '', '', 'A4^LGL', '', '', '', '', '', '', '', '13W', '', 'As per manufacturer terms', '', 'Photocopy-Shop^Hospitals-and-Health^Insurance-and-Banks'),
(8, 'PROID25049096', 'canon-pixma-g2010-aio', 'A4-MFP', 'Color', 'Print-Scan-and-Copy', 'Inkjet', '5 PPM Colour', '', 'No', 'No', '', '', '', '', '', '', '', '', '', '', '', 'USB-port', '', 'No', 'Standard', '', '600X600-DPI', '600X600-DPI', '', '', 'A4', 'A4^LGL', '', '', '', '', '', '', '', '12w', '', 'As per manufacturer terms', '', 'Home^Students'),
(9, 'PROID25049089', 'canon-pixma-g3010-aio', 'A4-MFP', 'Color', 'Print-Scan-and-Copy', 'Inkjet', '5 ppm colour', '', 'No', 'No', '', '', '', '', '', '', '', '', '', '', '', 'USB-port', 'Yes', 'Standard', 'Standard', '', '600X600-DPI', '600X600-DPI', '', '', 'A4', 'A4^LGL', '', '', '', '', '', '', '', '12w', '', 'As per manufacturer terms', '', 'Home^Students^Photocopy-Shop^Xerox-shop'),
(10, 'PROID25046629', 'hp-color-a3-mfp-e77428', 'A3-MFP', 'Color', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '28 ppm', '45 ipm', 'Standard', 'Standard', '', '1.2GHz (dual core)', '4.25 GB', '', 'Optional', '8” Colour Touch Screen Display', '', '8.4 sec', 'Yes', '1-9,999', 'Yes', 'USB-port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '600X600-DPI', 'Dual Trays 520 SheetsX2', '100-Sheets', 'A3', 'A4^LGL^B4^A3', '', '30-sec-or-less', 'Yes', '7,500 copies*', '135,000 copies*', '20,000 copies*', 'Yes', '760w', 'Trolley^Care-Packs^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Small-Medium-Business^Schools-and-Colleges^Hospitals-and-Health^Insurance-and-Banks^Multinational-Company\'s^Corporate-offices^Offset-Printing'),
(11, 'PROID25043900', 'hp-pagewide-managed-color-mfp-p77940', 'A3-MFP', 'Color', 'Print-Scan-Copy-and-Optional-Fax', 'HP PageWide Technology with pigmented inks', '40 ppm', '50 ipm', 'Standard', '', 'Standard', '1.2 GHz', '2 GB', '', '', '20.3 cm (8.0 inch) pivoting colour touchscreen', '', '8 sec', 'Yes', '1-9999', 'Yes', '', 'Yes', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '1200X1200-DPI', '550 sheet tray', '100-Sheets', 'A3', 'A6^A5^A4^LGL^B4^A3', 'Up-to-350GSM', '60-sec-or-less', 'Pigmented inks (starters)', '7,000 copies* (Pigmented inks)', 'No Drum*', '16,000 copies* (Pigmented inks)', '', '475w', 'Trolley^Additional-Trays^Paper-Feeders^Care-Packs^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Small-Medium-Business^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^Insurance-and-Banks^IT-and-Industries^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Offset-Printing^Limited-Company\'s^Construction-And-Architecture'),
(12, 'PROID25047376', 'hp-laserjet-managed-mfp-e82540', 'A3-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '40 ppm', '160 ipm', 'Standard', 'Standard', '', '1.2GHz (dual core)', '7 GB', '', 'Standard', 'Colour-Touch-Screen', '', '6.9 sec', 'Yes', '1-999', 'Yes', 'USB-port^Network', '', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '1200X1200-DPI', 'Dual Trays 520 SheetsX2', '100-Sheets', 'A3', 'A4^LGL^A3', 'Up-to-300GSM', '30-sec-or-less', '', '', '3,96,000 copies*', '69,000 copies* High Yield', 'Yes', '867w', 'Trolley^Additional-Trays^Additional-Paper-Decks^NFC-Kit^Data-Security-Kit^Card-Authentication-KIT^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Small-Medium-Business^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^Insurance-and-Banks^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Offset-Printing^Construction-And-Architecture'),
(13, 'PROID25046270', 'hp-laserjet-managed-mfp-e82550', 'A3-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '50 ppm', '160 ipm', 'Standard', 'Standard', 'Standard', '1.2GHz (dual core)', '7 GB', '', 'Standard', 'Colour-Touch-Screen', '', '5.9 sec', 'Yes', '1-999', 'Yes', 'USB-port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '600X600-DPI', 'Dual Trays 520 SheetsX2', '100-Sheets', 'A3', 'A4^LGL^A3', '', '30-sec-or-less', '', '', '3,96,000 copies*', '69,000 copies* High Yield', 'Yes', '867w', 'Trolley^Additional-Trays^Additional-Paper-Decks^Paper-Feeders^NFC-Kit^Finisher-Units^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^IT-and-Industries^Multinational-Company\'s^Corporate-offices^Educational-Institutions'),
(14, 'PROID25047701', 'hp-laserjet-managed-mfp-e82560', 'A3-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '60 ppm', '160 ipm', 'Standard', 'Standard', '', '1.2GHz (dual core)', '7 GB', '', 'Standard', '8” Colour Touch Screen Display', '', '5.9 sec', 'Yes', '1-999', 'Yes', 'USB-port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '1200X1200-DPI', 'Dual Trays 520 SheetsX2', '100-Sheets', 'A3', 'A4^LGL^B4^A3', '', '30-sec-or-less', '', '', '3,96,000 copies*', '69,000 copies* High Yield', 'Yes', '990w', 'Trolley^Additional-Trays^Additional-Paper-Decks^Paper-Feeders^NFC-Kit^Card-Authentication-KIT^Wireless-LAN-Interface^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Small-Medium-Business^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^Insurance-and-Banks^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Offset-Printing'),
(15, 'PROID25044210', 'canon-pixma-g4010', 'A4-MFP', 'Color', 'Print-Scan-Copy-and-Fax', 'Inkjet', '5 ppm colour', '', 'No', 'Standard', '', '', '', '', '', '', '', '', '', '1-99', '', 'USB-port^Network', 'Yes', 'Standard', 'Standard', '', '600X600-DPI', '600X600-DPI', '', '', 'A4', 'A4^LGL', '', '', '', '', '', '', '', '10W', '', 'As per manufacturer terms', '', 'Home^Students^Photocopy-Shop^Xerox-shop^Hospitals-and-Health'),
(16, 'PROID25045405', 'kyocera-taskalfa-4012i', 'A3-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '40 ppm', '120 ipm', 'Standard', 'Standard', 'Optional', '1GHz (dual core)', '2 GB', '', '', '9\" Colour Touch Screen', '', '4.3 sec', 'Yes', '', 'Yes', 'USB-port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '600X600-DPI', 'Dual Trays 550 SheetsX2', '100-Sheets', 'A3', 'A5^A4^LGL^A3', '', '18-sec-or-less', '', '', '600,000 copies*', '20,000 copies*', 'Yes', '510w or less', 'Additional-Trays^Paper-Feeders^FAX-System^Internet-FAX-Kit^Wi-Fi-Kit^Wireless-LAN-Interface', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Small-Medium-Business^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^Insurance-and-Banks^IT-and-Industries^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Offset-Printing^Multinational-Company\'s'),
(17, 'PROID25046301', 'kyocera-taskalfa-5003i', 'A3-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '50 ppm', '120 ipm', 'Standard', 'Standard', '', '1.2 GHz (dual core)', '4 GB', '', 'Standard', '10.1\" colour touch screen', '', '3.7 sec', 'Yes', '', 'Yes', 'USB-port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '600X600-DPI', 'Dual Trays 550 SheetsX2', '100-Sheets', 'A3', 'A6^A5^A4^LGL^A3^SRA3+', 'Up-to-300GSM', '25-sec-or-less', '', '', '600,000 copies*', '30,000 copies', 'Yes', '710w or less', 'Additional-Trays^Additional-Paper-Decks^DSDF^Card-Authentication-KIT^Finisher-Units^Sorter-units^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Small-Medium-Business^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^Insurance-and-Banks^IT-and-Industries^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Offset-Printing'),
(18, 'PROID25043520', 'hp-pagewide-managed-color-mfp-p77950', 'A3-MFP', 'Color', 'Print-Scan-Copy-and-Optional-Fax', 'Pigmented-InkJet', '50 ppm', '50 ipm', 'Standard', 'Standard', 'Standard', '1.2GHz (dual core)', '2 GB', '', 'Standard', '8” Colour Touch Screen Display', '', '7.7 sec', 'Yes', '1-9,999', 'Yes', 'USB-port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '1200X1200-DPI', 'Single tray 550x1 Standard', '100-Sheets', 'A3', 'A4^LGL^A3^SRA3+^12X18-in', 'Up-to-350GSM', '30-sec-or-less', 'Comes with starter inks', '7,000 copies* (Pigmented inks)', 'No Drum*', '16,000 copies* (Pigmented inks)', '', '475w', 'Trolley^Additional-Trays^NFC-Kit^Card-Authentication-KIT^Wireless-LAN-Interface^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Educational-Institutions^Offset-Printing^Photocopy-Shop^Xerox-shop^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Schools-and-Colleges^Insurance-and-Banks^IT-and-Industries^Multinational-Company\'s^Corporate-offices^Construction-And-Architecture^Limited-Company\'s^Small-Medium-Business^Hospitals-and-Health'),
(19, 'PRO8585', 'imagerunner-advance-8585', 'A3-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Optional-Fax', 'Monochrome laser beam printing', '85ppm', '120 ipm', 'Standard', '', 'Standard', 'Canon Dual Custom Pr', '3 GB', '', 'Standard', '10.4 inch Color Touchpanel', '', '2.7 sec', 'Yes', '1-9,999', 'Yes', 'USB-port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '1200X1200-DPI', '2 x 1500-sheet Decks + 2 x 550 cassettes', '100-Sheets', 'A3', 'A4^LGL^A3', 'Up-to-350GSM', '60-sec-or-less', '', '', '', '', '', '9.1 kWh', 'Additional-Trays^Additional-Paper-Decks^NFC-Kit^Wireless-LAN-Interface^Wi-Fi-Kit', '', '', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Small-Medium-Business^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^Insurance-and-Banks^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Offset-Printing^Construction-And-Architecture'),
(20, 'PROID25048358', 'hp-laserjet-mfp-m433a', 'A3-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '20 ppm', '', 'No', 'No', '', '600 MHz', '128 MB', '', '', '4Line-LCD-with-keypad', '', '', 'No', '1-999', 'No', 'USB-port', '', 'No', 'Standard', '', '600X600-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '100-Sheets', 'A3', 'A4^LGL^A3', '', '30-sec-or-less', 'Yes', '2,000 copies*', '80,000 copies*', '7,000 copies*', '', '550w', 'Trolley', '12 months or 50,000 copies whichever is earlier', '', 'Commercial-Printing^Enterprise-Organisation^Legal-and-Advocate-offices^Small-Medium-Business^Hospitals-and-Health^Corporate-offices^Security-company-Start-up-Company^Schools-and-Colleges'),
(21, 'PROID25049092', 'hp-laserjet-mfp-m436dn', 'A3-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '23 ppm', '', 'Standard', 'Optional', '', '600 MHz', '128 MB', '', '', '4Line-LCD-with-keypad', '', '7.5 sec', '', '1-999', '', 'USB-port^Network', '', 'No', 'Standard', '', '600X600-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '100-Sheets', 'A3', 'A4^LGL^B4^A3', '', '30-sec-or-less', 'Yes', '2,000 copies*', '80,000 copies*', '12,000 copies*', '', '550w', 'Trolley^Additional-Trays', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Schools-and-Colleges^Hospitals-and-Health^Multinational-Company\'s^Corporate-offices^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Small-Medium-Business^Stationary-shops^Insurance-and-Banks^IT-and-Industries^Multinational-Company\'s^Construction-And-Architecture'),
(22, 'PROID25044284', 'hp-laserjet-mfp-m436nda', 'A3-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '23 ppm', '45 ipm', 'Standard', 'Standard', '', '600 MHz', '128 MB', '', '', '4Line-LCD-with-keypad', '', '', '', '1-999', '', 'USB-port^Network', 'Yes', '', 'Standard', '', '600X600-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '100-Sheets', 'A3', 'A4^LGL^A3', '', '30-sec-or-less', 'Yes', '2,000 copies*', '80,000 copies*', '12,000 copies*', '', '550w', 'Trolley^Additional-Trays', '12 months or 50,000 copies whichever is earlier', '', 'Students^Commercial-Printing^Photocopy-Shop^Xerox-shop^Enterprise-Organisation^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Schools-and-Colleges^Hospitals-and-Health^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Limited-Company\'s^Pharma-and-Health^Small-Medium-Business^Stationary-shops^Insurance-and-Banks^IT-and-Industries^Multinational-Company\'s^Construction-And-Architecture'),
(23, 'PROID25048478', 'hp-m72625dn', 'A3-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '25 ppm', '45 ipm', 'Standard', 'Standard', '', '1GHz (dual core)', '1.5 GB', '', 'Optional', 'Colour-Touch-Screen', '', '6.2 sec', 'Yes', '1-9,999', 'Yes', 'USB-port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '600X600-DPI', 'Dual Trays 520 SheetsX2', '100-Sheets', 'A3', 'A4^LGL^B4^A3', '', '30-sec-or-less', '', '', '200000', '33000', 'Yes', '590w', 'Trolley^Wi-Fi-Kit^Additional-Trays^FAX-System^Care-Packs', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Legal-and-Advocate-offices^Stationary-shops^Hospitals-and-Health^Multinational-Company\'s^Educational-Institutions^Home^Limited-Company\'s^Plants-and-Factory^Security-company-Start-up-Company^Small-Medium-Business^Schools-and-Colleges^Insurance-and-Banks^IT-and-Industries^Multinational-Company\'s^Corporate-offices^Offset-Printing^Construction-And-Architecture'),
(24, 'PROID25046530', 'hp-m72630dn', 'A3-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '30 ppm', '45 ipm', 'Standard', 'Standard', '', '1GHz (dualcore)', '1.5 GB', '', 'Optional', 'Colour-Touch-Screen', '', '5.5 sec', 'Yes', '1-9,999', 'Yes', 'USB-port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '600X600-DPI', 'Dual Trays 520 SheetsX2', '100-Sheets', 'A3', 'A4^LGL^A3', '', '30-sec-or-less', '', '', '200,000 Copies*', '33,000 copies*', 'Yes', '590w', 'Stand-with-wheels^Additional-Trays^Paper-Feeders^NFC-Kit^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Hospitals-and-Health^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Offset-Printing^Students^Limited-Company\'s^Security-company-Start-up-Company^Small-Medium-Business^Schools-and-Colleges^Stationary-shops^Insurance-and-Banks^IT-and-Industries^Multinational-Company\'s^Construction-And-Architecture'),
(25, 'PROID25042990', 'kyocera-taskalfa-1800', 'A3-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '18ppm', '', 'Standard', 'Optional', '', '500MHz', '256 MB', '', '', '2line-LCD-with-keypad', '', '5.7 sec', 'No', '1-999', 'No', 'USB-port', 'No', 'No', 'Standard', '', '600X600-DPI', '600X600-DPI', 'Single Tray 300 SheetsX1', '100-Sheets', 'A3', 'A4^LGL^A3', '', '18-sec-or-less', 'Yes', '2,000 copies', '1,50,000 copies*', '15,000 copies*', '', '385w', 'Trolley^Additional-Trays^RADF', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Small-Medium-Business^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^Insurance-and-Banks^IT-and-Industries^Corporate-offices'),
(26, 'PROID25045900', 'kyocera-taskalfa-2201', 'A3-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '22ppm', '', 'Standard', 'Standard', '', '500MHz', '256 MB', '', '', '2line-LCD-with-keypad', '', '5.6 sec', '', '1-999', 'No', 'USB-port^Network', '', '', 'Standard', '', '600X600-DPI', '600X600-DPI', 'Single Tray 300 SheetsX1', '100-Sheets', 'A3', 'A4^LGL^A3', '', '18-sec-or-less', 'Yes', '2,000 copies*', '1,50,000 Copies*', '15,000 copies*', '', '415w or less', 'Trolley^Additional-Trays', '12 months or 50,000 copies whichever is earlier', '', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Small-Medium-Business^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^Insurance-and-Banks^IT-and-Industries^Multinational-Company\'s^Corporate-offices^Educational-Institutions'),
(27, 'PROID25042255', 'kyocera-taskalfa-3253ci', 'A3-MFP', 'Color', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '32ppm', '', 'Standard', 'Standard', '', '', '', '', '', '', '', '', 'Yes', '', 'Yes', 'USB-port^Network', 'Yes', '', 'Standard', 'Standard', '1200X1200-DPI', '600X600-DPI', 'Dual Trays 550 SheetsX2', '', '', 'A4^LGL^A3^12X18-in^12X36-in^12X48-in', '', '', '', '', '2,00,000', '', 'Yes', '', '', '12 months or 50,000 copies whichever is earlier', '', 'Photocopy-Shop^Xerox-shop^Pharma-and-Health^Corporate-offices^Educational-Institutions'),
(28, 'PROID25041458', 'kyocera-taskalfa-4053ci', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, 'PROID25044195', 'kyocera-ecosys-m2640idw', 'A4-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Fax', 'LaserJet', '40 ppm', '40 ipm', 'Standard', '', 'Standard', 'Cortex-A9 800 MHz', '512 MB', '', '', '4.3 inch Color Touch LCD Panel', '', '6.4 sec', 'Yes', '1-999', 'Yes', 'USB-port^Network', 'Yes', 'Standard', 'Standard', 'Standard', '1200X1200-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '100-Sheets', 'LGL', 'A4^LGL', '', '25-sec-or-less', 'Yes', '3,600 copies*', '100,000 copies*', '7,500 copies', '', '661 w', 'Trolley^Additional-Trays', 'One Year Carry-in-warranty', '', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Legal-and-Advocate-offices^Schools-and-Colleges^IT-and-Industries^Educational-Institutions'),
(30, 'PROID25046015', 'hp-pagewide-managed-color-mfp-p77960', 'A3-MFP', 'Color', 'Print-Scan-Copy-and-Optional-Fax', 'Pigmented-InkJet', '60 ppm', '120 ipm', 'Standard', '', 'Standard', '1.2GHz (dual core)', '2 GB', '', 'Standard', '8” Colour Touch Screen Display', '', '6.7 sec', 'Yes', '1-9,999', 'Yes', 'USB-port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '1200X1200-DPI', '550x1 Standard', '100-Sheets', 'A3', 'A4^LGL^B4^A3^SRA3+^12X18-in', 'Up-to-350GSM', '60-sec-or-less', 'Comes with Starter Inks', '7,000 copies* (Pigmented inks)', 'No Drum*', '16,000 copies* (Pigmented inks)', '', '475w', 'Trolley^Additional-Trays^Additional-Paper-Decks^NFC-Kit^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Insurance-and-Banks^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Offset-Printing^Pharma-and-Health^Legal-and-Advocate-offices^Small-Medium-Business^Schools-and-Colleges^IT-and-Industries^Multinational-Company\'s^Construction-And-Architecture'),
(31, 'PROID25043189', 'hp-designjet-t830-24-inch-mfp', 'Wide-Format', 'Color', 'Print-Scan-and-Copy', 'Pigmented-InkJet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'USB-port^Network', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Commercial-Printing^Photocopy-Shop^Legal-and-Advocate-offices^Corporate-offices'),
(32, 'PROID25047348', 'hp-designjet-t830-36-inch-mfp', 'Wide-Format', 'Color', 'Print-Scan-and-Copy', 'Pigmented-InkJet', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12 Months from date of purchase', '', ''),
(33, 'PRO C165', 'image-press-c165', 'A3-MFP', 'Color', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '65 ppm', '120 ipm', 'Standard', '', 'Standard', 'Canon Dual Custom Pr', 'Main CPU: 2GB. Image', '', 'Standard', 'Standard: 25.6 cm (10.1 inch) Colour Touch panel', '', 'BW: 4.4 sec Full Color: 5.4 se', 'Yes', '1-9,999', 'Yes', 'USB-port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '2400X2400-DPI', '1200X1200-DPI', '2 X 1100 Sheets Decs & 2 X 550 Sheets cassettes', '250 Sheets', 'A3', 'A6^A4^LGL^B4^A3^12X18-in^SRA3+', 'Up-to-350GSM', '6 min or less', '', '', 'BLK: 890,000* CLR: 330,000*', 'Black: 54,500* Colour: 37,500*', 'Yes', '2000W', 'Additional-Trays^Document-Tray^Additional-Paper-Decks^Scan-Extension-Kit^Card-Authentication-KIT^Banner-Guide^Finisher-Units^Sorter-units^Wi-Fi-Kit^Paper-Feeders^FAX-System^For-Additional-Network^Data-Security-Kit^OCR-Software^Numeric-Key-Pad^Internet-FAX-Kit^NFC-Kit^Care-Packs^Wireless-LAN-Interface', 'As per manufacturer terms', 'Recommended', 'Commercial-Printing^Xerox-shop^Insurance-and-Banks^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Offset-Printing^Construction-And-Architecture^Photocopy-Shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Small-Medium-Business^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^IT-and-Industries^Multinational-Company\'s'),
(34, 'PROID25042518', 'kyocera-taskalfa-5053ci', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, 'PROID25046914', 'kyocera-tasklafa-6053ci', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, 'PROID25044814', 'kyocera-taskalfa-6003i', 'A3-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '60ppm', '120 ipm', 'Standard', '', 'Standard', '1.2 GHz (dual core)', '4 GB', '', 'Standard', '10.1\" colour touch screen', '', '3.6 sec', 'Yes', '', 'Yes', 'USB-port', 'Yes', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '600X600-DPI', 'Dual Trays 550 SheetsX2', '100-Sheets', 'A3', 'A6^A4^LGL^B4^A3^SRA3+', 'Up-to-280GSM', '30-sec-or-less', '', '', '600,000', '35000', 'Yes', '', 'Additional-Trays^Document-Tray^Additional-Paper-Decks^Internet-FAX-Kit^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Small-Medium-Business^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^Insurance-and-Banks^IT-and-Industries^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Offset-Printing'),
(37, 'PROID25047846', 'taskalfa-7003i', '', 'Black-and-white', '', 'LaserJet', '70ppm', '', 'Standard', '', 'Standard', '', '', '', '', '', '', '', '', '', 'Yes', '', 'Yes', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '', '', '150-Sheets', '', '', '', '', '', '', '600,000', '', 'Yes', '', '', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Xerox-shop^Limited-Company\'s^Security-company-Start-up-Company^Hospitals-and-Health^Corporate-offices^Educational-Institutions'),
(38, 'PROID25045301', 'hp-laserjet-a3-mfp-m436n', 'A3-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '23 ppm', '', 'No', 'Optional', '', '600 MHz', '128 MB', '', '', '4Line-LCD-with-keypad', '', '7.5 sec', '', '1-999', 'No', 'USB-port^Network', '', 'No', 'Standard', '', '600X600-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '100-Sheets', 'A3', 'A4^LGL^B4^A3', '', '30-sec-or-less', 'Yes', '2,000 copies*', '80,000 copies*', '12,000 copies*', '', '550w', 'Trolley^Additional-Trays', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Students^Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Small-Medium-Business^Schools-and-Colleges^Hospitals-and-Health^Security-company-Start-up-Company^IT-and-Industries'),
(39, 'PROID25041287', 'hp-a3-color-mfp-e77422', 'A3-MFP', 'Color', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '22ppm', '45 ipm', 'Standard', 'Standard', '', '1.2GHz (dual core)', '4.25 GB', '', 'Optional', '8” Colour Touch Screen Display', '', '9.6 sec', 'Yes', '1-9,999', 'Yes', 'USB-port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '1200X1200-DPI', 'Dual Trays 520 SheetsX2', '100-Sheets', 'A3', 'A4^LGL^A3', '', '30-sec-or-less', 'Yes', '7,500 copies*', '135,000', '20,000 copies*', 'Yes', '760w', 'Trolley^Additional-Trays^Paper-Feeders^Internet-FAX-Kit^NFC-Kit^Card-Authentication-KIT^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Small-Medium-Business^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^IT-and-Industries^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Construction-And-Architecture'),
(40, 'PROID25046110', 'kyocera-m2040dn', 'A4-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '40 ppm', '40 ipm', 'Standard', '', 'Standard', '800 MHz', '512 MB', '', '', '5Line-LCD-with-keypad', '', '6.4 sec', 'Yes', '1-999', 'Yes', 'USB-port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '1200X1200-DPI', 'Custom', 'Custom', 'LGL', 'A4^LGL', '', '30-sec-or-less', 'Yes', '3500 copies', '100,000 copies*', '7,500 copies', 'Custom', '661 w', 'Trolley', 'One Year Carry-in-warranty', 'Recommended', 'Home^Commercial-Printing^Limited-Company\'s^Enterprise-Organisation^Legal-and-Advocate-offices^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Pharma-and-Health^Plants-and-Factory^Small-Medium-Business^Insurance-and-Banks^Corporate-offices^Educational-Institutions^Construction-And-Architecture^Hospitals-and-Health'),
(41, 'PROID25043549', 'kyocera-ecosys-fs-1120-a4-mfp', 'A4-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Fax', 'LaserJet', '20 ppm', '20 ipm', '', '', '', '', '128 MB', '', '', '2line-LCD-with-keypad', '', '7.5 sec', '', '1-99', '', 'USB-port', '', 'No', 'Standard', '', '600X600-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '', 'A4', 'A4^LGL', '', '25-sec-or-less', 'Yes', '700 copies*', '100,000 copies*', '2,500 copies*', '', '303w', '', 'One Year Carry-in-warranty', '', 'Home^Students^Small-Medium-Business^Corporate-offices'),
(42, 'PROID25045389', 'kyocera-taskalfa-2553ci', '', '', '', '', '25ppm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(43, 'PROID25042761', 'kyocera-ecosys-m8124cidn', '', '', '', '', '24ppm', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(44, 'PROID25042202', 'kyocera-ecosys-m4125idn', 'A3-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '25 ppm', '', 'Standard', 'Standard', '', '1.2GHz (dual core)', '1 GB', '', '', 'Colour-Touch-Screen', '', '5.8 sec', 'Yes', '1-999', 'Yes', 'USB-port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '600X600-DPI', 'Dual Trays 500 SheetsX2', '100-Sheets', 'A3', 'A4^LGL^A3', 'Up-to-180GSM', '25-sec-or-less', 'Yes', '3,000 copies*', 'Three Lakhs copies*', '15,000 copies*', '', '551w or less', 'Additional-Trays^NFC-Kit^Card-Authentication-KIT^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', '', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Small-Medium-Business^Schools-and-Colleges^Hospitals-and-Health^Insurance-and-Banks^Multinational-Company\'s^Corporate-offices^Educational-Institutions'),
(45, 'IMAGETA3212i', 'kyocera-taskalfa-3212i', 'A3-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '32ppm', '', 'Standard', 'Standard', '', '1GHz (dual core)', '2 GB', '32 GB', '', '9” Colour Touch Screen', '', '4.3sec', 'Yes', '', 'Yes', 'USB-port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '1200X1200-DPI', 'Dual Trays 550 SheetsX2', '100-Sheets', 'A3', 'A4^LGL^A3', '', '25-sec-or-less', '', '', '600,000 copies*', '20,000 copies*', 'Yes', '510w or less', 'Additional-Trays^Data-Security-Kit^Card-Authentication-KIT^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^Insurance-and-Banks^IT-and-Industries^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Offset-Printing^Limited-Company\'s^Small-Medium-Business^Multinational-Company\'s'),
(46, 'PROID25042086', 'datacard-sd-360', '', 'Color', 'Printer-Only', 'Direct-to-card dye-sublimation/resin thermal transfer', '', '', 'Standard', '', '', '', '', '', '', '', '', '', '', '', '', 'USB-port', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'As per manufacturer terms', '', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Small-Medium-Business^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^Insurance-and-Banks^IT-and-Industries^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Offset-Printing^Construction-And-Architecture'),
(47, 'PROID25042988', 'ecosys-fs-1020mfp', 'A4-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '20 ppm', '', '', 'No', '', '', '128 MB', '', '', '2line-LCD-with-keypad', '', '8.5 sec', '', '1-99', '', 'USB-port', '', 'No', 'Standard', '', '600X600-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', 'No', 'A4', 'A4^LGL', '', '25-sec-or-less', 'Yes', '700 copies*', '100,000 copies*', '2,500 copies*', '', '316w', '', 'One Year Carry-in-warranty', '', 'Home^Students^Enterprise-Organisation^Corporate-offices'),
(49, 'PROID26067900', 'canon-ir-3300-rc', 'A3-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '33 ppm', '', 'Standard', 'Standard', '', '', '128 MB', '', '', 'Touch Screen Display', '', '', 'No', '1-999', 'No', 'Network', '', 'No', 'No', '', '600X600-DPI', '600X600-DPI', 'Dual Trays 500 SheetsX2', '50-Sheets', 'A3', 'A4^LGL^A3', '', '30-sec-or-less', '', '', '40,000 copies', '20,000 copies', '', '1500w', 'Additional-Trays', '03 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Organisation'),
(50, 'PROID27063048', 'canon-ir-advance-4225-rc', 'A3-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '25 ppm', '45 ipm', 'Standard', 'Standard', '', 'Canon Dual Custom Pr', '1.25 GB', '', 'Standard', 'Colour-Touch-Screen', '25%-to-400%', '5.2 seconds', 'Yes', '', 'Yes', 'USB-Port^Network', '', 'No', 'Standard', 'Standard', '1200X1200-DPI', '600X600-DPI', 'Dual Trays 550 SheetsX2', '80-Sheets', 'A3', 'A4^LGL^A3', '', '30-sec-or-less', '', '', '50,000 copies', '25,000 copies', '', '1500w', 'Additional-Trays', '03 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Educational-Institutions'),
(51, 'PROID27061785', 'canon-ir-advance-4235-rc', 'A3-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '35 ppm', '45 ipm', 'Standard', 'Standard', '', 'Canon custom dualcor', '1.25 GB', '', 'Standard', 'Colour-Touch-Screen', '25%-to-400%', '', 'Yes', '', 'Yes', 'USB-Port^Network', '', 'No', 'Standard', 'Standard', '1200X1200-DPI', '600X600-DPI', 'Dual Trays 550 SheetsX2', '80-Sheets', 'A3', 'A4^LGL^B4^A3', '', '30-sec-or-less', '', '', '50,000 copies*', '25,000 copies*', '', '1550w', 'Additional-Trays', '03 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Educational-Institutions'),
(52, 'PROID30067916', 'canon-ir-advance-4245-rc', 'A3-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '45 ppm', '45 ipm', 'Standard', 'Standard', '', 'Canon Dual Custom Pr', '1.25 GB', '', 'Standard', 'Colour-Touch-Screen', '25%-to-400%', '3.8 sec', 'Yes', '', 'Yes', 'USB-Port^Network', 'Yes', 'No', 'Standard', 'Standard', '1200X1200-DPI', '600X600-DPI', 'Dual Trays 550 SheetsX2', '80-Sheets', 'A3', 'A4^LGL^B4^A3', '', '30-sec-or-less', '', '', '50,000 copies*', '25,000 copies*', '', '1550 w', 'Additional-Trays', '03 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Educational-Institutions'),
(53, 'PROID30061836', 'canon-ir-advance-4251-rc', 'A3-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '51 ppm', '45 ipm', 'Standard', 'Standard', '', 'Canon custom dual pr', '1.25 GB', '', 'Standard', 'Colour-Touch-Screen', '25%-to-400%', '3.7 sec', 'Yes', '', 'Yes', 'USB-Port^Network', 'Yes', 'No', 'Standard', 'Standard', '1200X1200-DPI', '600X600-DPI', 'Dual Trays 550 SheetsX2', '80-Sheets', 'A3', 'A4^LGL^A3', '', '30-sec-or-less', '', '', '50,000 copies*', '25,000 copies*', '', '1550 w', 'Additional-Trays', '03 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Educational-Institutions'),
(54, 'PROID30066703', 'datacard-sd-160', '', 'Color', 'Printer-Only', 'Direct-to-card dye-sublimation/resin thermal transfer', '', '', 'No', '', '', '', '', '', '', '', '', '', '', '', '', 'USB-port', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Students^Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise-Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company-Start-up-Company^Small-Medium-Business^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^Insurance-and-Banks^IT-and-Industries^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Offset-Printing^Construction-And-Architecture'),
(55, 'Brother2840', 'brother-laser-fax-machine-2840', '', 'Black-and-white', '', 'Monochrome Laser', 'Up to 20/21 ppm', 'Up to 20/21 ppm', '', 'Standard', '', '', '', '', '', '2line-LCD-with-keypad', '', '', '', 'Up to 99', '', '', '', '', '', '', '600X600-DPI', '', 'Single Tray 250 SheetsX1', '', '', 'A4^LGL', '', '', '', '', 'DR-2255: Approx. 12,000 pages-', 'TN-2260: Approx. 1,200 pages­', '', 'Approx. 1.5 W', '', '', '', 'Photocopy-Shop^Limited-Company\'s^Organisation^Legal-and-Advocate-offices^Small-Medium-Business^Hospitals-and-Health^Insurance-and-Banks^IT-and-Industries^Corporate-offices'),
(56, 'PROID01078103', 'hp-laserjet-m1005-a4-mfp', 'A4-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '14 ppm', '', '', 'No', '', '230 MHz. Tensilica®', '32 MB', '', '', '', '25%-to-400%', '', '', '', '', 'USB-Port', '', 'No', '', '', '', '', '', '', 'A4', 'A4', '', '', '', '', '', '2,000 copies', '', '', '', 'As per manufacturer terms', '', 'Home^Students'),
(57, 'PROID01075285', 'hp-laserjet-1020-plus-printer', '', 'Black-and-white', 'Printer-Only', 'LaserJet', '14 ppm', '', '', '', '', '234 MHz', '2 MB', '', '', '', '', '', '', '', '', 'USB-Port', '', 'No', '', '', '600X600-DPI', '', '', '', '', 'A4^LGL', '', '', '', '', '', '', '', '250 w', '', 'As per manufacturer terms', '', 'Home^Students^Small-Medium-Business'),
(58, 'PROID07074204', 'kyocera-tk-7120-toner-cartridge', '', 'Black-and-white', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20,000 copies*', '', '', '', '', '', ''),
(59, 'PROID07078140', 'kyocera-tk-4109-toner-cartridge', '', 'Black-and-white', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '15,000 copies*', '', '', '', '', '', ''),
(60, 'PROID07074547', 'hp-m72625dn-&-m72630dn-toner-cartridge', '', 'Black-and-white', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '33,000 copies*', '', '', '', '', '', ''),
(61, 'PROID07072449', 'kyocera-tk-1178-toner-cartridge', '', 'Black-and-white', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7,000 copies*', '', '', '', '', '', ''),
(62, 'PROID07071261', 'brother-tn-b021-toner-cartridge', '', 'Black-and-white', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2,600 copies*', '', '', '', '', '', ''),
(63, 'PROID07077386', 'brother-dr-b021-drum-unit', '', 'Black-and-white', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12,000 copies*', '', '', '', '', '', '', ''),
(64, 'PROID07076608', 'kyocera-tk-7119-toner-cartridge', '', 'Black-and-white', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20,000 copies*', '', '', '', '', '', ''),
(65, 'PROID07078465', 'hp-m433a-toner-cartridge-(56a)', '', 'Black-and-white', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '7,000 copies*', '', '', '', '', '', ''),
(66, 'PROID07078330', 'hp-m436-series-toner-cartridge-(56x)', '', 'Black-and-white', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '12,000 copies*', '', '', '', '', '', ''),
(67, 'PROID07078694', 'kyocera-tk-7109-toner-cartridge', '', 'Black-and-white', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20,000 copies*', '', '', '', '', '', ''),
(68, 'PROID07076781', 'konica-minolta-bizhub-205i', 'A3-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '20 ppm', '', 'Standard', 'Optional', '', 'GDI', '256 MB', '', '', '5Line-LCD-with-keypad', '', '6.5 sec', 'Yes', '1-999', '', 'USB-Port', '', 'No', 'Standard', '', '600X600-DPI', '1200X1200-DPI', 'Single Tray 250 SheetsX1', '100-Sheets', 'A3', 'A5^A4^LGL^A3', '', '25-sec-or-less', '', '', '55,000 copies*', '12,000 copies*', '', '1300w', 'Trolley^Additional-Trays', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Organisation^Small-Medium-Business^Stationary-shops^Educational-Institutions'),
(69, 'PROID07076250', 'konica-minolta-bizhub-225i', 'A3-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '22 ppm', '', 'Standard', 'Optional', '', 'GDI', '256 MB', '', '', '5Line-LCD-with-keypad', '', '6.5 sec', 'Yes', '1-999', '', 'USB-Port^Network', 'Yes', 'No', 'Standard', '', '600X600-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '100-Sheets', 'A3', 'A5^A4^LGL^A3', 'Up-to-100GSM', '25-sec-or-less', '', '', '55,000 copies*', '12,000 copies*', '', '1300w', 'Trolley^Additional-Trays', '12 months or 50,000 copies whichever is earlier', '', 'Commercial-Printing^Photocopy-Shop^Limited-Company\'s^Enterprise^Organisation^Pharma-and-Health^Plants-and-Factory^Small-Medium-Business^IT-and-Industries^Corporate-offices'),
(70, 'PROID07076337', 'bizhub-c258', 'A3-MFP', 'Color', 'Print-Scan-and-Copy', 'LaserJet', '25 ppm', '', 'Standard', 'Optional', '', 'ARM Cortex-A7 Dual-c', '2 GB', '', 'Standard', '9 inch touch panel', '', '6.9 sec', 'Yes', '1-9999', 'Yes', 'USB-Port^Network', 'Yes', '', 'Standard', 'Standard', '1200X1200-DPI', '1200X1200-DPI', 'Dual Trays 500 SheetsX2', '150-Sheets', 'A3', 'A5^A4^LGL^B4^A3^SRA3+^12X18-in', 'Up-to-300GSM', '25-sec-or-less', '', '', '55,000 copies*', '15,000 copies* CMY', 'Yes', '1500w', 'Trolley^Additional-Trays^Additional-Paper-Decks^Paper-Feeders^Card-Authentication-KIT^Finisher-Units^Sorter-units^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise^Organisation^Legal-and-Advocate-offices^Schools-and-Colleges^Stationary-shops^Corporate-offices^Educational-Institutions^Offset-Printing^Construction-And-Architecture'),
(71, 'PROID07079631', 'konica-minolta-bizhub-266i', 'A3-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '26 ppm', '', 'Standard', 'Standard', '', '', '4 GB', '', 'Standard', '7” Colour Touch Screen', '', '5.0 sec', 'Yes', '1-9999', 'Yes', 'USB-Port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '600X600-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '100-Sheets', 'A3', 'A4^LGL^A3', 'Up-to-100GSM', '18-sec-or-less', '', '', '80,000 copies', '15,000 copies*', 'Yes', '1522w', 'Trolley^Stand-with-wheels^Additional-Trays^Additional-Paper-Decks^Wireless-LAN-Interface^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Enterprise^Organisation^Plants-and-Factory^Legal-and-Advocate-offices^Small-Medium-Business^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^Insurance-and-Banks^IT-and-Industries^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Construction-And-Architecture'),
(72, '3KZ66PA', 'hp-laptop-245-g6', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Home^Students'),
(73, 'PROID08077482', 'bizhub-306i', 'A3-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '30 ppm', '55 ipm', 'Standard', 'Standard', '', '', '4 GB', '', 'Standard', '7\" Colour touch panel', '25%-to-400%', '5.0 sec', 'Yes', '1-9,999', 'Yes', 'USB-Port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '600X600-DPI', '600X600-DPI', 'Dual Trays 250X2', '100-Sheets', 'A3', 'A5^A4^LGL^B4^A3', 'Up-to-100GSM', '18-sec-or-less', '', '', '80,000 copies*', '15,000 copies*', '', '1522w', 'Trolley^Additional-Trays^Paper-Feeders^FAX-System^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise^Organisation^Pharma-and-Health^Security-company^Schools-and-Colleges^Multinational-Company\'s^Construction-And-Architecture'),
(74, 'PROID08079996', 'bizhub-226i', 'A3-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '22 ppm', '', 'Standard', 'Optional', '', '', '4 GB', '', 'Optional', '7\" Colour touch panel', '25%-to-400%', '6.5 sec', '', '1-9,999', '', 'USB-Port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '600X600-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '100-Sheets', 'A3', 'A4^LGL^A3', 'Up-to-100GSM', '18-sec-or-less', '', '', '80,000 copies*', '15,000 copies*', '', '1522w', 'Trolley^Additional-Trays^Additional-Paper-Decks^Paper-Feeders^HDD^RADF^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Enterprise^Plants-and-Factory^Security-company^Small-Medium-Business^Hospitals-and-Health^IT-and-Industries^Corporate-offices'),
(75, 'PROID08074826', 'bizhub-c250i', 'A3-MFP', 'Color', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '25', '', 'Standard', 'Optional', '', '1.2GHz (dual core)', '8GB', '', 'Standard', '10.1” Colour Touch Screen Display', '25%-to-400%', '', 'Yes', '1-9,999', 'Yes', 'USB-Port^Network', '', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '600X600-DPI', 'Dual Trays 550 SheetsX2', '150-Sheets', 'A3', 'A5^A4^LGL^B4^A3^SRA3+^12X18-in^12X36-in^12X48-in', 'Up-to-300GSM', '30-sec-or-less', '', '', '1,35,000 copies*', '20,000 copies*', 'Yes', '1580w', 'Trolley^Additional-Trays^Additional-Paper-Decks^FAX-System^RADF^Card-Authentication-KIT^Banner-Guide^Numeric-Key-Pad^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise^Organisation^Pharma-and-Health^Legal-and-Advocate-offices^Stationary-shops^Hospitals-and-Health^Insurance-and-Banks^IT-and-Industries^Corporate-offices^Construction-And-Architecture');
INSERT INTO `specification` (`spec_autoid`, `proid`, `proseo`, `product_type`, `color_output`, `functions`, `technology`, `engine_speed`, `scan_speed`, `duplex`, `radf`, `dsdf`, `processor_speed`, `ram_memory`, `ssd`, `hdd`, `control_panel`, `zoom`, `first_copy_out_time`, `scan_to_pendrive`, `multiple_copies`, `print_from_pendrive`, `connectivity`, `mobile_print`, `direct_wi_fi`, `color_scanner`, `send_option`, `print_resolution`, `scan_resolution`, `paper_tray_capacity`, `multifunction_tray_capacity`, `max_original_size`, `paper_size`, `paper_weight_support`, `warmup_time`, `starter_toner`, `starter_toner_yield`, `drum_life`, `toner_yield`, `full_toner`, `power_consumption`, `optional_unit`, `warranty`, `stabilizer`, `perfect_for`) VALUES
(76, 'PROID08071560', 'bizhub-c300i', 'A3-MFP', 'Color', 'Print-Scan-Copy-and-Optional-Fax', 'LaserJet', '30 ppm', '', 'Standard', 'Standard', '', '1.2GHz (dual core)', '8 GB', '', 'Standard', '10.1” Colour Touch Screen Display', '25%-to-400%', '6.7 sec', 'Yes', '1-9,999', 'Yes', 'USB-Port^Network', 'Yes', 'Optional', 'Standard', 'Standard', '1200X1200-DPI', '600X600-DPI', 'Dual Trays 500 SheetsX2', '150-Sheets', 'A3', 'A4^LGL^B4^A3^SRA3+^12X18-in^12X36-in^12X48-in', 'Up-to-300GSM', '30-sec-or-less', '', '', '1,35,000 copies*', '20,000 copies*', '', '1580w', 'Trolley^Additional-Trays^Additional-Paper-Decks^Paper-Feeders^FAX-System^DSDF^Banner-Guide^Sorter-units^Wi-Fi-Kit', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise^Organisation^Pharma-and-Health^Stationary-shops^Hospitals-and-Health^Insurance-and-Banks^IT-and-Industries^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Offset-Printing^Construction-And-Architecture'),
(77, 'PROID09074646', 'brother-dcp-b7500d', 'A4-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', 'Up to 34 ppm', '', 'Standard', 'No', '', '600 MHz', '128 MB', '', '', '2line-LCD-with-keypad', '', '8.5 sec', '', '1-99', '', 'USB-Port', 'No', 'No', 'Standard', '', '1200X1200-DPI', '1200X1200-DPI', '', '', 'A4', 'A4^LGL', 'Up-to-220GSM', '25-sec-or-less', '', '', '12,000 copies*', '2,600 pages*', '', '475W', '', 'As per manufacturer terms', 'Recommended', 'Home^Students^Organisation^Legal-and-Advocate-offices^Small-Medium-Business^Hospitals-and-Health^Corporate-offices'),
(78, 'PROID11073894', 'epson-eco-tank-l6170', 'A4-MFP', 'Color', 'Print-Scan-and-Copy', 'Inkjet', '20 ppm colour', '', 'Standard', 'Standard', '', '', '512 MB', '', '', '2.4’’ Colour LCD', '25%-to-400%', '', '', '1-99', '', 'USB-Port^Network', 'Yes', 'Standard', 'Standard', '', '600X600-DPI', '600X600-DPI', '', '', 'A4', 'A4^LGL', '', '', '', '', '', '', '', '', '', 'As per manufacturer terms', '', 'Home^Students^Commercial-Printing^Photocopy-Shop^Xerox-shop^Enterprise^Stationary-shops^Hospitals-and-Health^Corporate-offices'),
(79, 'PROID11076919', 'epson-eco-tank-l4160', 'A4-MFP', 'Color', 'Print-Scan-and-Copy', 'Inkjet', '15 ppm colour', '', 'Standard', 'No', '', '', '', '', '', '', '', '', '', '1-99', '', 'USB-Port', '', 'Standard', 'Standard', '', '600X600-DPI', '600X600-DPI', '', '', 'A4', 'A4^LGL', '', '', '', '', '', '', '', '12w', '', 'As per manufacturer terms', '', 'Home^Students^Commercial-Printing^Photocopy-Shop^Xerox-shop^Security-company^Hospitals-and-Health'),
(80, 'PROID11078980', 'canon-pixma-g6070', 'A4-MFP', 'Color', 'Print-Scan-and-Copy', 'Inkjet', '8 ipm', '', 'Standard', 'No', '', '', '', '', '', '', '', '', '', '1-99', '', 'USB-Port^Network', 'Yes', 'Standard', 'Standard', '', '600X600-DPI', '600X600-DPI', '', '', 'A4', 'A4^LGL', '', '', '', '', '', '', '', '13W', '', 'As per manufacturer terms', '', 'Home^Students^Commercial-Printing^Photocopy-Shop^Xerox-shop^Schools-and-Colleges^Hospitals-and-Health'),
(81, 'PROID11074328', 'dcp-t310-inktank-mfp', 'A4-MFP', 'Color', 'Print-Scan-and-Copy', 'Inkjet', '10 ppm colour', '', 'No', 'No', '', '', '128 MB', '', '', '', '25%-to-400%', '', '', '', '', 'USB-Port', '', 'No', 'Standard', '', '600X600-DPI', '600X600-DPI', '150 Sheets', '', 'A4', 'A4^LGL', '', '', '', '', '', '', '', '', '', 'As per manufacturer terms', '', 'Home^Students'),
(82, 'PROID11077580', 'dcp-t510w-inktank-mfp', 'A4-MFP', 'Color', 'Print-Scan-and-Copy', 'Inkjet', '20 ppm colour', '', 'No', 'No', '', '', '128 MB', '', '', '', '25%-to-400%', '', '', '', '', 'USB-Port', 'Yes', 'Standard', 'Standard', '', '600X600-DPI', '600X600-DPI', '', '', 'A4', 'A4^LGL', '', '', '', '', '', '', '', '', '', 'As per manufacturer terms', '', 'Home^Students^Photocopy-Shop^Xerox-shop^Hospitals-and-Health'),
(83, 'PROID11075823', 'dcp-t710w-inktank-mfp', 'A4-MFP', 'Color', 'Print-Scan-and-Copy', 'Inkjet', '10 ppm colour', '', 'No', 'Standard', '', '', '128 MB', '', '', '', '25%-to-400%', '', '', '', '', 'USB-Port', 'Yes', 'Standard', 'Standard', '', '600X600-DPI', '600X600-DPI', '150 Sheets', '', 'A4', 'A4^LGL', '', '', '', '', '', '', '', '', '', 'As per manufacturer terms', '', 'Home^Students^Commercial-Printing^Photocopy-Shop^Xerox-shop^Hospitals-and-Health'),
(84, 'PROID11071732', 'dcp-t910dw-inktank-mfp', 'A4-MFP', 'Color', 'Print-Scan-Copy-and-Fax', 'Inkjet', '23 ppm', '10 ipm', 'Standard', 'Standard', '', '', '128 MB', '', '', '5Line-LCD-with-keypad', '25%-to-400%', '', 'Yes', '1-99', 'Yes', 'USB-Port^Network', 'Yes', 'Standard', 'Standard', '', '1200X1200-DPI', '600X600-DPI', '150 Sheets', '80-Sheets', 'A4', 'A4^LGL', '', '', '', '', '', '', '', '', '', 'As per manufacturer terms', '', 'Home^Students^Commercial-Printing^Photocopy-Shop^Xerox-shop^Enterprise^Pharma-and-Health^Legal-and-Advocate-offices^Security-company^Hospitals-and-Health'),
(85, 'PROID11071818', 'mfc-b7715dw-a4-mfp', 'A4-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Fax', 'LaserJet', '34 ppm', '22 ipm', 'Standard', 'Standard', '', '600 MHz', '128 MB', '', '', '5Line-LCD-with-keypad', '25%-to-400%', '8.5 sec', '', '1-99', 'No', 'USB-Port^Network', 'Yes', 'Standard', 'Standard', '', '1200X1200-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '1-Sheet', 'A4', 'A4^LGL', 'Up-to-220GSM', '25-sec-or-less', '', '', '12,000 pages*', '2,600 pages*', 'Yes', '475w', 'Trolley', '', '', 'Home^Students^Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise^Organisation^Pharma-and-Health^Security-company^Small-Medium-Business^Schools-and-Colleges^Hospitals-and-Health^Insurance-and-Banks^IT-and-Industries^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Construction-And-Architecture'),
(86, 'PROID11077459', 'mfc-l5900dw-lgl-mfp', 'A4-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Fax', 'LaserJet', '40 ppm', '28 ipm', 'Standard', '', 'Standard', 'Cortex-A9 (800MHz)', '1 GB', '', '', '3.7\" TFT Colour LCD', '25%-to-400%', '7.2 sec', 'Yes', '1-99', 'Yes', 'USB-Port^Network', 'Yes', 'Standard', 'Standard', 'Standard', '1200X1200-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '50-Sheets', 'LGL', 'A4^LGL', 'Up-to-180GSM', '25-sec-or-less', 'Yes', '3,000 copies*', '30,000 copies*', '8,000 copies*', '', '34 w from sleep mode', 'Trolley^Additional-Trays', '12 months or 50,000 copies whichever is earlier', 'Recommended', 'Commercial-Printing^Photocopy-Shop^Xerox-shop^Limited-Company\'s^Enterprise^Organisation^Plants-and-Factory^Legal-and-Advocate-offices^Security-company^Small-Medium-Business^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^Insurance-and-Banks^IT-and-Industries^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Offset-Printing^Construction-And-Architecture'),
(87, 'PROID11076742', 'dcp-l3551cdw-colour-mfp', 'A4-MFP', 'Color', 'Print-Scan-and-Copy', 'LaserJet', '18 ppm', '21 ipm', 'Standard', 'Standard', '', 'Cortex-A9 800MHz', '512 MB', '', '', '2line-LCD-with-keypad', '25%-to-400%', '15.5 sec', '', '1-99', '', 'USB-Port^Network', 'Yes', 'Standard', 'Standard', '', '600X600-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '1-Sheet', 'A4', 'A4^LGL', 'Up-to-150GSM', '30-sec-or-less', 'Yes', '1,000 copies*', '18,000 pages*', '1300 pages*', '', '400W', 'Trolley', 'As per manufacturer terms', '', 'Home^Students^Small-Medium-Business^Hospitals-and-Health'),
(88, 'PROID11079449', 'mfc-l2701dw', 'A4-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Fax', 'LaserJet', '30 PPM', '', 'Standard', 'Standard', '', '266 MHz', '32 MB', '', '', '2line-LCD-with-keypad', '25%-to-400%', '8.5 sec', '', '1-99', '', 'USB-Port^Network', 'Yes', 'Standard', 'Standard', '', '600X600-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '1-Sheet', 'A4', 'A4^LGL', '', '25-sec-or-less', '', '', '12,000 pages*', '2,600 pages*', '', '', 'Trolley', 'As per manufacturer terms', '', 'Home^Students^Enterprise^Small-Medium-Business'),
(89, 'PROID11072922', 'mfc-l2701d', 'A4-MFP', 'Black-and-white', 'Print-Scan-Copy-and-Fax', 'LaserJet', '30 ppm', '', 'Standard', 'Standard', '', '266 MHz', '32 MB', '', '', '2line-LCD-with-keypad', '25%-to-400%', '8.5 sec', '', '1-99', '', 'USB-Port', '', 'No', 'Standard', '', '600X600-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '1-Sheet', 'A4', 'A4^LGL', '', '25-sec-or-less', '', '', '12,000 pages*', '2,600 pages*', 'Yes', '510W', 'Trolley', 'As per manufacturer terms', '', 'Home^Students^Enterprise^Legal-and-Advocate-offices^Small-Medium-Business^Hospitals-and-Health^Insurance-and-Banks^IT-and-Industries^Construction-And-Architecture'),
(90, 'PROID11079347', 'dcp-l2541dw', 'A4-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '30 ppm', '', 'Standard', 'Standard', '', '266 MHz', '32 MB', '', '', '2line-LCD-with-keypad', '25%-to-400%', '8.5 sec', '', '1-99', '', 'USB-Port^Network', 'Yes', 'Standard', 'Standard', '', '600X600-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '1-Sheet', 'A4', 'A4^LGL', '', '25-sec-or-less', '', '', '12,000 pages*', '2,600 pages*', 'Yes', '510W', 'Trolley', 'As per manufacturer terms', '', 'Home^Students^Organisation^Pharma-and-Health^Small-Medium-Business^Hospitals-and-Health^Construction-And-Architecture'),
(91, 'PROID11073250', 'hl-l2321d', '', 'Black-and-white', 'Printer-Only', 'LaserJet', '30 ppm', '', 'Standard', '', '', '266 MHz', '8 MB', '', '', '', '', '8.5 sec', '', '', '', 'USB-Port', '', 'No', '', '', '600X600-DPI', '', 'Single Tray 250 SheetsX1', '1-Sheet', '', 'A4^LGL', '', '25-sec-or-less', '', '', '12,000 pages*', '2,600 pages*', 'Yes', '537W', '', 'As per manufacturer terms', '', 'Home^Students^Limited-Company\'s^Pharma-and-Health^Legal-and-Advocate-offices^Small-Medium-Business^Schools-and-Colleges^Hospitals-and-Health^Insurance-and-Banks^IT-and-Industries^Corporate-offices^Construction-And-Architecture'),
(92, 'PROID11074728', 'imageclass-mf232w', 'A4-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '23ppm', '', 'No', 'No', '', '', '512 MB', '', '', '', '25%-to-400%', '6.0 sec', '', '1-99', '', 'USB-Port^Network', '', 'Standard', 'Standard', '', '600X600-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '1-Sheet', 'A4', 'A4^LGL', 'Up-to-150GSM', '', '', '', '', '2,400 pages*', '', '1120W', '', 'As per manufacturer terms', '', 'Home^Students^Small-Medium-Business'),
(93, 'PROID11072037', 'imageclass-mf241d', 'A4-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '27ppm', '', 'Standard', '', '', '', '128 MB', '', '', '2line-LCD-with-keypad', '25%-to-400%', '6.0 sec', '', '1-99', '', 'USB-Port', '', 'No', 'Standard', '', '600X600-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '1-Sheet', 'A4', 'A4^LGL', 'Up-to-150GSM', '30-sec-or-less', '', '', '', '2,400 pages*', '', '1150W', '', 'As per manufacturer terms', '', 'Home^Students^Small-Medium-Business^Hospitals-and-Health^Insurance-and-Banks'),
(94, 'PROID11074363', 'imageclass-mf244dw', 'A4-MFP', 'Black-and-white', 'Print-Scan-and-Copy', 'LaserJet', '27ppm', '', 'Standard', 'Standard', '', '', '512 MB', '', '', '2line-LCD-with-keypad', '25%-to-400%', '6.0 sec', '', '1-99', '', 'USB-Port^Network', 'Yes', 'Standard', 'Standard', '', '1200X1200-DPI', '600X600-DPI', 'Single Tray 250 SheetsX1', '1-Sheet', 'A4', 'A4^LGL', 'Up-to-150GSM', '30-sec-or-less', '', '', '', '2,400 pages*', '', '1150W', '', 'As per manufacturer terms', '', 'Home^Students^Enterprise^Organisation^Hospitals-and-Health^IT-and-Industries^Multinational-Company\'s^Educational-Institutions^Construction-And-Architecture'),
(95, 'PROID18073676', 'gobbler-mix-value-counter', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'No Warranty, No Exchange', '', 'Limited-Company\'s^Enterprise^Organisation^Pharma-and-Health^Plants-and-Factory^Legal-and-Advocate-offices^Security-company^Small-Medium-Business^Schools-and-Colleges^Stationary-shops^Hospitals-and-Health^Insurance-and-Banks^Multinational-Company\'s^Corporate-offices^Educational-Institutions^Construction-And-Architecture'),
(96, 'PROID23072220', 'hp-aio-200-g3', '', '', '', '', '', '', '', '', '', '', '4 GB', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Home^Students^Enterprise^Organisation^Hospitals-and-Health^Corporate-offices^Educational-Institutions');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` int(11) NOT NULL,
  `order_id` varchar(25) NOT NULL,
  `tracking_id` varchar(28) DEFAULT NULL,
  `bankreference_no` varchar(100) DEFAULT NULL,
  `failure_message` varchar(500) DEFAULT NULL,
  `payment_mode` varchar(30) DEFAULT NULL,
  `card_name` varchar(100) NOT NULL,
  `status_message` varchar(60) DEFAULT NULL,
  `currency` varchar(5) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `billing_name` varchar(50) DEFAULT NULL,
  `billing_address` varchar(800) DEFAULT NULL,
  `billing_city` varchar(100) DEFAULT NULL,
  `billing_state` varchar(100) DEFAULT NULL,
  `billing_zip` varchar(8) DEFAULT NULL,
  `billing_country` varchar(30) NOT NULL,
  `billing_tel` varchar(14) DEFAULT NULL,
  `billing_email` varchar(300) DEFAULT NULL,
  `merchant_amount` float(10,2) DEFAULT NULL,
  `trans_date` varchar(100) DEFAULT NULL,
  `order_status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `uid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `emailid` varchar(60) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `password` varchar(20) NOT NULL,
  `reg_date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`uid`, `name`, `emailid`, `mobile`, `password`, `reg_date`) VALUES
(11, 'Sonu', 'ssnnoouu@gmail.com', '8709288095', '1234', '30-Apr-2020 13:39:05'),
(12, 'sumant', 'sumant2k10cs14@gmail.com', '7366914827', '1234', '08-May-2020 15:57:12'),
(13, 'Hakeem', 'hakeem@ugra.in', '8297740909', 'ugra0909', '08-May-2020 16:04:39'),
(14, 'prasad', 'image97@gmail.com', '9533334444', 'admin', '21-May-2020 17:38:59'),
(15, 'Suman Tokala', 'suman@ugra.in', '9985612666', 'image7358', '07-Jul-2020 12:20:16');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userid` varchar(100) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `product_seo` varchar(100) NOT NULL,
  `product_image` varchar(250) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userid`, `product_id`, `product_seo`, `product_image`, `date`) VALUES
(2, 'ssnnoouu@gmail.com', 'PROID25042086', 'datacard-sd-360', 'pro_img/canon_and_xerox_rc/canon/datacard-sd-3601.jpg', '2020-05-18'),
(5, 'ssnnoouu@gmail.com', 'PROID25045635', 'brother-dcp-b7535-a4-mfp', 'pro_img/digital_copiers/brother/brother-dcp-b7535-a4-mfp1.jpg', '2020-05-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allbrands`
--
ALTER TABLE `allbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_address`
--
ALTER TABLE `billing_address`
  ADD PRIMARY KEY (`billing_id`);

--
-- Indexes for table `binding_brand`
--
ALTER TABLE `binding_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `binding_product`
--
ALTER TABLE `binding_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_service_support`
--
ALTER TABLE `client_service_support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verification`
--
ALTER TABLE `email_verification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filtering`
--
ALTER TABLE `filtering`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_coupon`
--
ALTER TABLE `general_coupon`
  ADD PRIMARY KEY (`gen_cpn_id`);

--
-- Indexes for table `lamination_brand`
--
ALTER TABLE `lamination_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lamination_product`
--
ALTER TABLE `lamination_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machine_filtering`
--
ALTER TABLE `machine_filtering`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_order_details`
--
ALTER TABLE `online_order_details`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_verification`
--
ALTER TABLE `otp_verification`
  ADD PRIMARY KEY (`otpid`);

--
-- Indexes for table `particular_coupon`
--
ALTER TABLE `particular_coupon`
  ADD PRIMARY KEY (`cpn_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rental_enquiry`
--
ALTER TABLE `rental_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_quote`
--
ALTER TABLE `request_quote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_address`
--
ALTER TABLE `shipping_address`
  ADD PRIMARY KEY (`ship_id`);

--
-- Indexes for table `specification`
--
ALTER TABLE `specification`
  ADD PRIMARY KEY (`spec_autoid`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `allbrands`
--
ALTER TABLE `allbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `billing_address`
--
ALTER TABLE `billing_address`
  MODIFY `billing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `binding_brand`
--
ALTER TABLE `binding_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `binding_product`
--
ALTER TABLE `binding_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `client_service_support`
--
ALTER TABLE `client_service_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_verification`
--
ALTER TABLE `email_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `filtering`
--
ALTER TABLE `filtering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_coupon`
--
ALTER TABLE `general_coupon`
  MODIFY `gen_cpn_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lamination_brand`
--
ALTER TABLE `lamination_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lamination_product`
--
ALTER TABLE `lamination_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `machine_filtering`
--
ALTER TABLE `machine_filtering`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newsletter_subscriber`
--
ALTER TABLE `newsletter_subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `otp_verification`
--
ALTER TABLE `otp_verification`
  MODIFY `otpid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `particular_coupon`
--
ALTER TABLE `particular_coupon`
  MODIFY `cpn_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `rental_enquiry`
--
ALTER TABLE `rental_enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request_quote`
--
ALTER TABLE `request_quote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_address`
--
ALTER TABLE `shipping_address`
  MODIFY `ship_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `specification`
--
ALTER TABLE `specification`
  MODIFY `spec_autoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
