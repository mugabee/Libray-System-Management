-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2021 at 01:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zearn`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `bookID` varchar(300) NOT NULL,
  `title` varchar(300) NOT NULL,
  `publishingHouse` varchar(300) NOT NULL,
  `dateOfPublication` date NOT NULL,
  `author` varchar(300) NOT NULL,
  `pages` int(10) NOT NULL,
  `categoryName` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `bookID`, `title`, `publishingHouse`, `dateOfPublication`, `author`, `pages`, `categoryName`) VALUES
(2, 'M', 'M', 'M', '2021-09-01', 'M', 345, NULL),
(3, 'q', 'w', 'e', '2020-09-07', 'mm', 112, NULL),
(4, '2345', 'fhvjh', 'cjvjhn', '1999-08-05', 'cghcgh', 56, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `id` int(11) NOT NULL,
  `categoryId` varchar(300) NOT NULL,
  `categoryName` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`id`, `categoryId`, `categoryName`) VALUES
(1, '1', 'Fiction'),
(2, 'bbb', 'horror'),
(3, 'bbb', 'horror'),
(4, 'mnnn', 'dhgf');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `regNo` varchar(10) NOT NULL,
  `firstName` varchar(300) NOT NULL,
  `lastName` varchar(300) NOT NULL,
  `phoneNumber` varchar(15) NOT NULL,
  `emailAddress` varchar(300) NOT NULL,
  `photo` varchar(600) NOT NULL,
  `clientCategory` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `regNo`, `firstName`, `lastName`, `phoneNumber`, `emailAddress`, `photo`, `clientCategory`) VALUES
(5, 'i', 'hope', 'this', 'shit', 'really', 'works', 'STAFF'),
(6, 'let', 'us', 'do', 'this', 'one', 'last time', 'EXTERNAL'),
(7, 'i', 'h', 't', 's', 'r', 'w', 'STAFF'),
(8, 'i', 'h', 't', 's', 'r', 'w', 'STAFF'),
(9, 'r', 'r', 'r', 'r', 'r', 'r', 'STAFF'),
(10, 'i', 'hope', 'this', 'shit', 'really', 'works', 'testing'),
(11, '21691', 'Rwabahenda', 'Joel', '0787478166', 'rwabahenda', '', 'STUDENT'),
(12, '45678', 'cghjk', 'jhch', '35677', 'muvdgj', '', 'STUDENT'),
(13, '222', 'eee', 'www', '44', 'rrr', '', 'STUDENT'),
(14, '', '', '', '', '', '', 'STUDENT'),
(15, '33', 'yyy', 'jj', '889', '667', '', 'STUDENT');

-- --------------------------------------------------------

--
-- Table structure for table `operation`
--

CREATE TABLE `operation` (
  `id` int(10) NOT NULL,
  `names` varchar(500) NOT NULL,
  `bookID` varchar(500) NOT NULL,
  `operation_category` varchar(500) NOT NULL,
  `dateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `operation`
--

INSERT INTO `operation` (`id`, `names`, `bookID`, `operation_category`, `dateTime`) VALUES
(1, 'us do', 'w', 'Check In', '2021-02-16 20:47:44'),
(2, 'hope this', 'w', 'Check Out', '2021-02-16 20:54:33'),
(3, 'hope this', 'M', 'Check In', '2021-02-16 20:58:55'),
(4, 'hope this', 'M', 'Check Out', '2021-02-16 20:59:07'),
(5, 'hope this', 'M', 'Check In', '2021-02-16 21:20:40'),
(6, 'hope this', 'M', 'Check Out', '2021-02-16 21:28:47'),
(7, 'hope this', 'M', 'Check In', '2021-02-16 21:30:10'),
(8, 'hope this', 'M', 'Check Out', '2021-02-16 21:30:18'),
(9, 'hope this', 'M', 'Check Out', '2021-02-16 21:31:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `operation`
--
ALTER TABLE `operation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
