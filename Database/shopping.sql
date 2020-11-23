-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2020 at 08:03 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_master`
--

CREATE TABLE `admin_master` (
  `AdminId` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_master`
--

INSERT INTO `admin_master` (`AdminId`, `UserName`, `Password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `CategoryId` int(11) NOT NULL,
  `CategoryName` varchar(20) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`CategoryId`, `CategoryName`, `Description`, `Image`) VALUES
(1, 'Clothes', 'Ware in Style', 'clothes.jpg'),
(3, 'Hardware', 'Get your tool ', 'hardware.jpg'),
(4, 'Grocery', 'Keep your stamoch full ', 'grocery.jpg'),
(5, 'books', 'get your Quality original copy', 'booka.jpg'),
(6, 'electronics', 'we supply the best electronics ', 'appliance-electronics-industry.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer_registration`
--

CREATE TABLE `customer_registration` (
  `CustomerId` int(11) NOT NULL,
  `CustomerName` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Mobile` bigint(10) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `BirthDate` date NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_registration`
--

INSERT INTO `customer_registration` (`CustomerId`, `CustomerName`, `Address`, `City`, `Email`, `Mobile`, `Gender`, `BirthDate`, `UserName`, `Password`) VALUES
(1, 'HarryDen', 'ABC', 'KTM', 'harryp@gmail.com', 7676767676, 'Male', '2017-03-11', 'harry', 'harry'),
(2, 'you', '3029 Chris Hani Road, Tshiawelo Extension 2', 'Venda', 'brivalani@gmail.com', 799947061, 'Male', '2020-11-02', 'joy', '2121');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_master`
--

CREATE TABLE `feedback_master` (
  `FeedbackId` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `Feedback` varchar(200) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_master`
--

INSERT INTO `feedback_master` (`FeedbackId`, `CustomerId`, `Feedback`, `Date`) VALUES
(1, 1, 'Nice Clothes i got from your website. Thank You', '2014-03-19'),
(2, 2, 'hhhhh', '2020-11-21'),
(3, 2, 'hggjhjghjhgghhgfgtyy', '2020-11-22');

-- --------------------------------------------------------

--
-- Table structure for table `item_master`
--

CREATE TABLE `item_master` (
  `ItemId` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `ItemName` varchar(20) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Size` varchar(50) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Price` float NOT NULL,
  `Discount` float NOT NULL,
  `Total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_master`
--

INSERT INTO `item_master` (`ItemId`, `CategoryId`, `ItemName`, `Description`, `Size`, `Image`, `Price`, `Discount`, `Total`) VALUES
(2, 1, 'Dress', 'made from wool and cotton', 'small', 'download (1).jpg', 400, 50, 350),
(3, 1, 'Jersey', 'made from wool and cotton', 'small / mediam', 'download (2).jpg', 259, 39, 220),
(4, 1, 'Black Dress', 'made with cotton', 'small / median / large', 'download.jpg', 340, 0, 340),
(5, 1, 'Jacket', 'classic and formal jacket', 'small / median ', 'images (1).jpg', 1200, 159, 1040),
(6, 1, 'Shirt', 'summer smart wear', 'small / median / large', 'download (3).jpg', 200, 50, 150),
(7, 3, 'Set spanner', 'collection', '8', 'images (2).jpg', 230, 20, 210),
(8, 3, 'grip plier', 'gripper', '1 ', 'grip pliers.jpg', 170, 30, 140),
(9, 3, 'Drill', 'impact Drill', '1', 'images.jpg', 249, 0, 249),
(10, 4, 'milk', 'fresh milk', '6 pack', 'download.jpg', 79, 10, 69),
(11, 4, 'eggs', 'fresh eggs', '2 dozen', 'download (1).jpg', 30, 0, 30),
(12, 4, 'Veggies', 'mix vegetables to buy', 'box of veg', 'images (1).jpg', 130, 10, 120),
(13, 4, 'koo', 'prepare spaghetti', '1', 'images.jpg', 10, 0, 10),
(14, 4, 'tissue', 'baby soft', '9s', 'download (2).jpg', 79, 10, 69),
(15, 5, 'Brown bible', 'holy Bible', '1', 'images (3).jpg', 400, 50, 350),
(16, 5, 'Novel', 'Steve Harvey', '1', 'images (1).jpg', 300, 90, 210),
(17, 5, 'Novel', 'Rich dad Poor dad', '1', 'images (2).jpg', 280, 70, 210),
(18, 5, 'Novel', 'The silent wife', '1', 'images.jpg', 110, 20, 90),
(19, 5, 'Novel', 'The hate you gave me', '1', 'images (4).jpg', 160, 0, 160),
(20, 6, 'Cellphone', 'samsang galaxy 6', '1', 'images (1).jpg', 5000, 300, 4699),
(21, 6, 'headphone', 'jvc headset', '1', 'download.jpg', 300, 0, 300),
(22, 6, 'camera', 'fusion camera', '1', 'images.jpg', 4380, 0, 4380),
(23, 6, 'electric plug', '8 electric plug', '1', 'images (4).jpg', 390, 20, 370),
(24, 6, 'play station 5', 'gaming play station 5', '1', 'images (3).jpg', 8900, 0, 8900);

-- --------------------------------------------------------

--
-- Table structure for table `offer_master`
--

CREATE TABLE `offer_master` (
  `OfferId` int(11) NOT NULL,
  `Offer` varchar(50) NOT NULL,
  `Detail` varchar(200) NOT NULL,
  `Valid` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offer_master`
--

INSERT INTO `offer_master` (`OfferId`, `Offer`, `Detail`, `Valid`) VALUES
(3, 'Black friday', 'get 50% of to our selected shirt', '2020-11-26'),
(4, 'black friday', 'get 70% off for our selected electronics', '2020-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `CartId` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `ItemName` varchar(20) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` float NOT NULL,
  `Total` float NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`CartId`, `CustomerId`, `ItemName`, `Quantity`, `Price`, `Total`, `Date`) VALUES
(6, 1, 'Denim Jeans', 1, 1100, 1100, '0000-00-00'),
(7, 1, 'Cotton Shirts', 1, 650, 650, '0000-00-00'),
(8, 2, 'Dress', 1, 350, 350, '0000-00-00'),
(9, 2, 'Jersey', 1, 220, 220, '0000-00-00'),
(10, 2, 'Set spanner', 1, 210, 210, '0000-00-00'),
(11, 2, 'Dress', 1, 350, 350, '0000-00-00'),
(12, 2, 'Dress', 1, 350, 350, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart_final`
--

CREATE TABLE `shopping_cart_final` (
  `CartId` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `ItemName` varchar(20) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` float NOT NULL,
  `Total` float NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopping_cart_final`
--

INSERT INTO `shopping_cart_final` (`CartId`, `CustomerId`, `ItemName`, `Quantity`, `Price`, `Total`, `Date`) VALUES
(1, 1, 'Denim Jeans', 2, 1100, 2200, '0000-00-00'),
(2, 1, 'Sport T-Shirts', 1, 500, 500, '0000-00-00'),
(4, 1, 'Cotton Shirts', 3, 650, 1950, '0000-00-00'),
(5, 1, 'Cotton Shirts', 4, 650, 2600, '0000-00-00'),
(6, 2, 'Denim Jeans', 1, 1100, 1100, '0000-00-00'),
(7, 2, 'Denim Jeans', 1, 1100, 1100, '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_master`
--
ALTER TABLE `admin_master`
  ADD PRIMARY KEY (`AdminId`);

--
-- Indexes for table `category_master`
--
ALTER TABLE `category_master`
  ADD PRIMARY KEY (`CategoryId`);

--
-- Indexes for table `customer_registration`
--
ALTER TABLE `customer_registration`
  ADD PRIMARY KEY (`CustomerId`);

--
-- Indexes for table `feedback_master`
--
ALTER TABLE `feedback_master`
  ADD PRIMARY KEY (`FeedbackId`);

--
-- Indexes for table `item_master`
--
ALTER TABLE `item_master`
  ADD PRIMARY KEY (`ItemId`);

--
-- Indexes for table `offer_master`
--
ALTER TABLE `offer_master`
  ADD PRIMARY KEY (`OfferId`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`CartId`);

--
-- Indexes for table `shopping_cart_final`
--
ALTER TABLE `shopping_cart_final`
  ADD PRIMARY KEY (`CartId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_master`
--
ALTER TABLE `admin_master`
  MODIFY `AdminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category_master`
--
ALTER TABLE `category_master`
  MODIFY `CategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_registration`
--
ALTER TABLE `customer_registration`
  MODIFY `CustomerId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback_master`
--
ALTER TABLE `feedback_master`
  MODIFY `FeedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item_master`
--
ALTER TABLE `item_master`
  MODIFY `ItemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `offer_master`
--
ALTER TABLE `offer_master`
  MODIFY `OfferId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `CartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `shopping_cart_final`
--
ALTER TABLE `shopping_cart_final`
  MODIFY `CartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
