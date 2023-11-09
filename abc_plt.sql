-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2023 at 05:32 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `abc_plt`
--

-- --------------------------------------------------------

--
-- Table structure for table `normal_admin`
--

CREATE TABLE `normal_admin` (
  `aId` int(20) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `number` int(20) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `normal_admin`
--

INSERT INTO `normal_admin` (`aId`, `name`, `email`, `number`, `password`) VALUES
(1, 'shashinda', 'shashindaadithya7@gmail.com', 767189923, '54bcb43f91bd3d39c341ec32549ae3f7'),
(2, 'nipuna sudesh', 'nipuna@gmail.com', 767189924, 'e3ea96b71161d8ea3b4a2a9602a93af8');

-- --------------------------------------------------------

--
-- Table structure for table `product_info`
--

CREATE TABLE `product_info` (
  `pId` int(20) NOT NULL,
  `pName` varchar(225) NOT NULL,
  `pPrice` int(20) NOT NULL,
  `pQuantity` int(20) NOT NULL,
  `pDescription` varchar(225) NOT NULL,
  `pImg` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_info`
--

INSERT INTO `product_info` (`pId`, `pName`, `pPrice`, `pQuantity`, `pDescription`, `pImg`) VALUES
(3, 'acer i5 ', 200000, 20, 'acer i5 11gen laptop /8gb ram/1080 full HD Display', 'lap1.png'),
(4, 'hp i7', 240000, 22, 'HP i7 note book/8ram ', 'lap2.jpg'),
(5, 'acer i3', 330000, 12, 'acer i3 intel core 10gen/8gb ram', 'lap1.png'),
(6, 'asus', 120000, 18, ' asus i7 gaming laptop /16gb ram', 'lap2.jpg'),
(7, 'apple mac book', 440000, 22, 'apple mac book /8gb ram ', 'lap1.png'),
(8, 'Dell', 230000, 13, 'dell note book/8gb ram', 'lap2.jpg'),
(9, 'MSI', 550000, 11, 'MSI gaming beast /16gb ram', 'lap1.png'),
(10, 'microsoft', 220000, 44, 'microsoft 8gb ram /1080 full HD display', 'lap2.jpg'),
(11, 'hp', 444000, 12, 'hp note book', 'lap1.png'),
(12, 'acer i9', 500000, 10, ' acer i9 16gb ram', 'lap2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `uId` int(11) DEFAULT NULL,
  `rId` int(11) NOT NULL,
  `review` text DEFAULT NULL,
  `stars` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`uId`, `rId`, `review`, `stars`) VALUES
(1, 1, 'best service i ever seen , keep it up boys', 5),
(1, 2, 'nice work guys', 4),
(2, 11, 'best service , well done 5 stars', 5),
(6, 12, 'best experience', 4),
(8, 13, 'next time do it best', 3),
(11, 14, 'very good gus', 3);

-- --------------------------------------------------------

--
-- Table structure for table `super_admin`
--

CREATE TABLE `super_admin` (
  `sId` int(20) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `number` int(20) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `super_admin`
--

INSERT INTO `super_admin` (`sId`, `name`, `email`, `number`, `password`) VALUES
(1, 'shashinda', 'shashindaadithya7@gmail.com', 767189923, '54bcb43f91bd3d39c341ec32549ae3f7');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `uId` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `number` int(20) NOT NULL,
  `epassword` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`uId`, `name`, `email`, `number`, `epassword`) VALUES
(1, 'shashinda', 'shashindaadithya7@gmail.com', 767189923, '54bcb43f91bd3d39c341ec32549ae3f7'),
(2, 'saman', 'saman@gmail.com', 767189922, '154764725b4bf51b66df135acefa985f'),
(3, 'nipuna sudesh', 'nipuna@gmail.com', 767189924, 'e3ea96b71161d8ea3b4a2a9602a93af8'),
(5, 'sasun', 'sasun@gmail.com', 2147483647, '6193e41d61782f8551ed3789ebb7d8f9'),
(6, 'dimuth', 'dimuth@gmail.com', 767189921, 'c91070bd0317b7623da1310b7c798a6f'),
(7, 'chanaka', 'chanaka@gmail.com', 771234567, 'fd4f86b0a7b0a98f21764f6b1aa7cf3a'),
(8, 'dil', 'dil@gmail.com', 761234567, '9a557deeb99672771d7c4aed6ef7e8f0'),
(9, 'keny', 'keny@gmail.com', 765432101, 'bf76668a398c4cc0fe1ad38c51a1e43a'),
(11, 'sanka', 'sanka@gmail.com', 761234358, '745b1efde33dcc62cea8ac838eab870e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `normal_admin`
--
ALTER TABLE `normal_admin`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `product_info`
--
ALTER TABLE `product_info`
  ADD PRIMARY KEY (`pId`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`rId`),
  ADD KEY `uId` (`uId`);

--
-- Indexes for table `super_admin`
--
ALTER TABLE `super_admin`
  ADD PRIMARY KEY (`sId`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`uId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `normal_admin`
--
ALTER TABLE `normal_admin`
  MODIFY `aId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_info`
--
ALTER TABLE `product_info`
  MODIFY `pId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `rId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `super_admin`
--
ALTER TABLE `super_admin`
  MODIFY `sId` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `uId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`uId`) REFERENCES `user_info` (`uId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
