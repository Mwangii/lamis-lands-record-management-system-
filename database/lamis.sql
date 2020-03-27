-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2019 at 03:00 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lamis`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'd8578edf8458ce06fbc5bb76a58c5ca4', '19-03-2019 06:15:36 PM'),
(2, 'admin1', 'd8578edf8458ce06fbc5bb76a58c5ca4', '19-03-2019 06:15:36 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(4, 'Double Ownership', 'Title owned by more than 1', '2019-03-20 19:14:31', NULL),
(5, 'General', 'General issues', '2019-03-20 19:23:15', NULL),
(6, 'Payments', 'Payments issues', '2019-03-20 19:23:35', NULL),
(7, 'Transactions', 'Change of ownership', '2019-03-20 19:24:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2017-04-01 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2017-04-01 18:37:59'),
(3, 3, 'in process', 'test', '2017-05-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2017-06-11 11:18:33'),
(5, 1, 'closed', 'This sample text for testing', '2018-09-05 17:08:26'),
(6, 23, 'closed', 'Complain closed', '2019-03-19 13:10:54'),
(7, 24, 'closed', 'Marks awarded', '2019-03-19 16:15:41'),
(8, 24, 'closed', 'fvav fa v', '2019-03-19 16:16:34'),
(9, 26, 'in process', ' cvvfc', '2019-03-20 19:54:56'),
(10, 26, 'closed', 'nn', '2019-03-20 21:29:16'),
(11, 29, 'in process', 'We are reviewing', '2019-04-24 14:08:58'),
(12, 35, 'in process', 'We are processing.', '2019-05-01 10:41:27'),
(13, 35, 'closed', 'Case closed', '2019-05-04 13:33:43'),
(14, 36, 'in process', 'xfds', '2019-05-18 17:21:16');

-- --------------------------------------------------------

--
-- Table structure for table `ownership`
--

CREATE TABLE `ownership` (
  `id` int(255) NOT NULL,
  `titleNumber` varchar(255) NOT NULL,
  `advoNumber` varchar(255) NOT NULL,
  `countyNumber` varchar(255) NOT NULL,
  `valuer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ownership`
--

INSERT INTO `ownership` (`id`, `titleNumber`, `advoNumber`, `countyNumber`, `valuer`) VALUES
(0, '100', 'ADV12345', 'COUNTY123', 'VAL123'),
(1, '101', 'ADV12345', 'COUNTY123', 'VALUER123');

-- --------------------------------------------------------

--
-- Table structure for table `pic`
--

CREATE TABLE `pic` (
  `id` int(250) NOT NULL,
  `titleNo` varchar(250) NOT NULL,
  `area` varchar(500) NOT NULL,
  `map` varchar(500) NOT NULL,
  `coord` varchar(500) NOT NULL,
  `idNumber` varchar(200) NOT NULL,
  `name` varchar(500) NOT NULL,
  `cFile` varchar(500) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pic`
--

INSERT INTO `pic` (`id`, `titleNo`, `area`, `map`, `coord`, `idNumber`, `name`, `cFile`, `postingDate`, `updationDate`) VALUES
(36, '100', '22', '2.4.4.4.4', '1234', '', 'ddd', 'Screenshot_20180912-220409.jpg', '2019-05-18 16:13:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'staff1', '25d55ad283aa400af464c76d713c07ad', '19-03-2019 06:15:36 PM'),
(2, 'staff2', '25d55ad283aa400af464c76d713c07ad', '19-03-2019 06:15:36 PM');

-- --------------------------------------------------------

--
-- Table structure for table `staffedit`
--

CREATE TABLE `staffedit` (
  `id` int(100) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `userip` binary(100) NOT NULL,
  `editDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletionDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staffedit`
--

INSERT INTO `staffedit` (`id`, `uid`, `username`, `title`, `userip`, `editDate`, `deletionDate`) VALUES
(8, '1', '', '', 0x3a3a3100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2019-05-06 15:42:03', '0000-00-00 00:00:00'),
(14, 'staff1', '', ' 100', 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2019-05-18 15:46:20', '0000-00-00 00:00:00'),
(15, '', 'staff1', ' 100', 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2019-05-18 15:55:37', '0000-00-00 00:00:00'),
(16, '', 'staff1', ' 102', 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2019-05-18 16:00:46', '0000-00-00 00:00:00'),
(17, '', 'staff1', ' 102', 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2019-05-18 16:00:53', '0000-00-00 00:00:00'),
(18, 'staff1', 'staff1', ' 102', 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2019-05-18 16:01:53', '0000-00-00 00:00:00'),
(19, '1', 'staff1', ' 102', 0x00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2019-05-18 16:02:24', '0000-00-00 00:00:00'),
(20, '1', 'staff1', ' 102', 0x3a3a3100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2019-05-18 16:06:00', '0000-00-00 00:00:00'),
(21, '', '', ' ', 0x3a3a3100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000, '2019-05-18 16:09:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `stafflog`
--

CREATE TABLE `stafflog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stafflog`
--

INSERT INTO `stafflog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(26, 2, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-03-19 13:07:58', '19-03-2019 06:39:46 PM', 1),
(27, 2, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-03-19 13:15:35', '', 1),
(28, 0, 'admin', 0x3a3a3100000000000000000000000000, '2019-03-19 14:22:26', '', 0),
(35, 0, 'yvonne ', 0x3a3a3100000000000000000000000000, '2019-03-19 16:00:40', '', 0),
(36, 3, 'Yvonnenjeri@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-19 16:01:11', '19-03-2019 09:43:01 PM', 1),
(37, 0, 'admin', 0x3a3a3100000000000000000000000000, '2019-03-20 07:55:10', '', 0),
(38, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-20 07:55:18', '', 0),
(39, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-20 07:56:12', '', 0),
(40, 4, 'qwerty@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-20 07:56:26', '20-03-2019 01:28:03 PM', 1),
(41, 2, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-03-20 18:54:01', '21-03-2019 12:26:57 AM', 1),
(42, 2, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-03-20 19:14:56', '21-03-2019 12:45:46 AM', 1),
(43, 2, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-03-20 19:52:44', '21-03-2019 01:23:49 AM', 1),
(44, 2, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-03-20 21:39:17', '21-03-2019 03:15:45 AM', 1),
(45, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-11 14:42:23', '', 0),
(46, 2, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-04-13 13:40:09', '', 1),
(47, 2, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-04-13 13:51:30', '13-04-2019 07:27:37 PM', 1),
(48, 2, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-04-14 15:24:36', '14-04-2019 08:55:04 PM', 1),
(49, 0, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-04-15 06:13:08', '', 0),
(50, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-15 06:13:43', '15-04-2019 11:44:41 AM', 1),
(51, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-15 06:23:38', '15-04-2019 12:06:08 PM', 1),
(52, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-16 12:05:14', '16-04-2019 10:06:37 PM', 1),
(53, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-17 12:21:23', '', 1),
(54, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-17 13:22:27', '17-04-2019 07:22:14 PM', 1),
(55, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-17 13:52:22', '17-04-2019 07:31:43 PM', 1),
(56, 0, 'admin', 0x3a3a3100000000000000000000000000, '2019-04-17 14:03:34', '', 0),
(57, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-17 14:03:39', '17-04-2019 07:34:17 PM', 1),
(58, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-17 14:06:49', '17-04-2019 09:10:10 PM', 1),
(59, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-17 15:40:24', '', 1),
(60, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-18 06:49:17', '18-04-2019 01:45:15 PM', 1),
(61, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-18 08:15:25', '18-04-2019 02:22:46 PM', 1),
(62, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-18 09:07:54', '18-04-2019 02:58:05 PM', 1),
(63, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-18 13:11:21', '18-04-2019 06:42:58 PM', 1),
(64, 0, 'admin', 0x3a3a3100000000000000000000000000, '2019-04-18 13:15:16', '', 0),
(65, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-18 13:15:21', '18-04-2019 07:06:55 PM', 1),
(66, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-18 14:43:39', '', 1),
(67, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-22 07:04:48', '22-04-2019 12:39:20 PM', 1),
(68, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-22 07:13:46', '', 1),
(69, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 05:24:23', '24-04-2019 12:23:43 PM', 1),
(70, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 06:53:49', '24-04-2019 12:37:29 PM', 1),
(71, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 07:07:35', '24-04-2019 01:03:51 PM', 1),
(72, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 07:43:26', '', 1),
(73, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 12:29:09', '24-04-2019 06:41:35 PM', 1),
(74, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 13:11:49', '', 0),
(75, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 13:12:08', '', 0),
(76, 0, 'harry@den.com', 0x3a3a3100000000000000000000000000, '2019-04-24 13:12:13', '', 0),
(77, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 13:12:42', '24-04-2019 06:49:07 PM', 1),
(78, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 13:19:22', '24-04-2019 07:19:15 PM', 1),
(79, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 13:51:21', '24-04-2019 07:34:00 PM', 1),
(80, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 14:15:16', '', 1),
(81, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-25 05:41:14', '', 0),
(82, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-25 05:41:21', '', 0),
(83, 0, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-25 05:42:59', '', 0),
(84, 6, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-25 05:43:34', '', 1),
(85, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-29 09:42:47', '', 0),
(86, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-29 09:44:30', '29-04-2019 03:17:47 PM', 1),
(87, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-29 10:06:28', '', 1),
(88, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-29 10:08:54', '', 1),
(89, 5, 'jkarugutu@gmail.com', 0x3132372e302e302e3100000000000000, '2019-04-29 09:09:49', '29-04-2019 02:51:48 PM', 1),
(90, 5, 'jkarugutu@gmail.com', 0x3132372e302e302e3100000000000000, '2019-04-29 09:24:15', '', 1),
(91, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-30 11:43:14', '', 1),
(92, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-30 11:43:15', '', 1),
(93, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-30 15:02:42', '30-04-2019 08:51:56 PM', 1),
(94, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-30 15:47:08', '', 1),
(95, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-01 09:11:01', '01-05-2019 02:44:45 PM', 1),
(96, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-01 09:14:53', '01-05-2019 03:11:09 PM', 1),
(97, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-01 09:47:22', '01-05-2019 03:51:10 PM', 1),
(98, 0, 'admin', 0x3a3a3100000000000000000000000000, '2019-05-01 10:38:17', '', 0),
(99, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-01 10:38:21', '01-05-2019 04:10:22 PM', 1),
(100, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-01 14:22:46', '01-05-2019 08:07:16 PM', 1),
(101, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-03 08:21:47', '03-05-2019 02:00:02 PM', 1),
(102, 0, 't@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-04 13:25:44', '', 0),
(103, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-04 13:25:53', '', 0),
(104, 8, 't@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-04 13:26:26', '04-05-2019 07:06:36 PM', 1),
(105, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-06 08:53:16', '06-05-2019 02:36:34 PM', 1),
(106, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-06 09:52:54', '06-05-2019 03:48:15 PM', 1),
(107, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-06 10:29:56', '06-05-2019 04:06:26 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) NOT NULL,
  `stateDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(38, 'BARINGO', '', '2019-05-01 10:25:01', NULL),
(39, 'BOMET', '', '2019-05-01 10:25:01', '01-05-2019 03:58:58 PM'),
(40, 'BUNGOMA', '', '2019-05-01 10:25:01', '01-05-2019 03:59:17 PM'),
(41, 'BUSIA', '', '2019-05-01 10:30:19', NULL),
(42, 'ELGEYO MARAKWET', '', '2019-05-01 10:30:33', NULL),
(43, 'EMBU', '', '2019-05-01 10:30:48', NULL),
(44, 'GARISSA', '', '2019-05-01 10:31:01', NULL),
(45, 'HOMABAY', '', '2019-05-01 10:31:07', NULL),
(46, 'ISIOLO', '', '2019-05-01 10:31:19', NULL),
(47, 'KAJIADO', '', '2019-05-01 10:31:26', NULL),
(48, 'KAKAMEGA', '', '2019-05-01 10:31:42', NULL),
(49, 'KERICHO', '', '2019-05-01 10:31:49', NULL),
(50, 'KIAMBU', '', '2019-05-01 10:32:04', NULL),
(51, 'KILIFI', '', '2019-05-01 10:32:09', NULL),
(52, 'KIRINYAGA', '', '2019-05-01 10:32:16', NULL),
(53, 'KISII', '', '2019-05-01 10:32:28', NULL),
(54, 'KISUMU', '', '2019-05-01 10:32:33', NULL),
(55, 'KITUI', '', '2019-05-01 10:32:38', NULL),
(56, 'KWALE', '', '2019-05-01 10:32:50', NULL),
(57, 'LAIKIPIA', '', '2019-05-01 10:32:57', NULL),
(58, 'LAMU', '', '2019-05-01 10:33:03', NULL),
(59, 'MACHAKOS', '', '2019-05-01 10:33:19', NULL),
(60, 'MAKUENI', '', '2019-05-01 10:33:25', NULL),
(61, 'MANDERA', '', '2019-05-01 10:33:32', NULL),
(62, 'MERU', '', '2019-05-01 10:33:42', NULL),
(63, 'MIGORI', '', '2019-05-01 10:33:48', NULL),
(64, 'MARSABIT', '', '2019-05-01 10:33:58', NULL),
(65, 'MOMBASA', '', '2019-05-01 10:34:14', NULL),
(66, 'MURANGA', '', '2019-05-01 10:34:21', NULL),
(67, 'NAIROBI', '', '2019-05-01 10:34:35', NULL),
(68, 'NAKURU', '', '2019-05-01 10:34:42', NULL),
(69, 'NANDI', '', '2019-05-01 10:34:48', NULL),
(70, 'NAROK', '', '2019-05-01 10:35:00', NULL),
(71, 'NYAMIRA', '', '2019-05-01 10:35:06', NULL),
(72, 'NYANDARUA', '', '2019-05-01 10:35:19', NULL),
(73, 'NYERI', '', '2019-05-01 10:35:25', NULL),
(74, 'SAMBURU', '', '2019-05-01 10:35:43', NULL),
(75, 'SIAYA', '', '2019-05-01 10:35:49', NULL),
(76, 'TAITA TAVETA', '', '2019-05-01 10:36:02', NULL),
(77, 'TANARIVER', '', '2019-05-01 10:36:14', NULL),
(78, 'THARAKA NITHI', '', '2019-05-01 10:36:22', NULL),
(79, 'TRANSZOIA', '', '2019-05-01 10:36:38', NULL),
(80, 'TURKANA', '', '2019-05-01 10:36:47', NULL),
(81, 'UASIN GISHU', '', '2019-05-01 10:36:55', NULL),
(82, 'VIHIGA', '', '2019-05-01 10:37:05', NULL),
(83, 'WAJIR', '', '2019-05-01 10:37:10', NULL),
(84, 'WEST POKOT', '', '2019-05-01 10:37:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(3, 4, 'Title Deed', '2019-03-20 19:18:00', NULL),
(4, 6, 'Mobile Payments', '2019-03-20 19:24:41', NULL),
(5, 6, 'Bank Transfer', '2019-03-20 19:25:02', NULL),
(6, 6, 'e-Wallets', '2019-03-20 19:25:23', NULL),
(7, 4, 'Delayed Change of ownership', '2019-03-20 19:26:12', NULL),
(8, 4, 'Request for change of ownership', '2019-03-20 19:26:48', NULL),
(9, 5, 'Corruption', '2019-03-20 19:27:09', NULL),
(10, 5, 'How to access a Lawyer', '2019-03-20 19:27:30', NULL),
(11, 5, 'How to pay online', '2019-03-20 19:27:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(35, 5, 4, 'Delayed Change of ownership', 'General Query', 'Eastern', 'DOUBLE OWNERSHIP', 'MY title deed is owned by another person.', 't5.jpg', '2019-05-01 10:20:41', 'closed', '2019-05-04 13:33:43'),
(36, 5, 4, 'Delayed Change of ownership', ' Complaint', 'BOMET', 'PAYMENTS', 'MPESA CODE:M120FHDDKSK', '', '2019-05-03 08:23:49', 'in process', '2019-05-18 17:21:16'),
(37, 5, 5, 'How to access a Lawyer', 'General Query', 'BUSIA', 'Legal services', 'I am unable to access legal service.', 't2.jpg', '2019-05-06 10:31:37', NULL, '0000-00-00 00:00:00'),
(38, 9, 7, 'Select Subcategory', ' Complaint', 'EMBU', 'PAYMENTS', 'Payment has not reflected', 'KRA WORKSHOP.docx', '2019-05-06 13:45:36', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `transferNumber` int(100) NOT NULL,
  `userId` varchar(100) NOT NULL,
  `titleNumber` varchar(100) NOT NULL,
  `transfertype` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `valuer` varchar(100) NOT NULL,
  `advocate` varchar(100) NOT NULL,
  `county` varchar(100) NOT NULL,
  `countyFile` varchar(100) NOT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`transferNumber`, `userId`, `titleNumber`, `transfertype`, `state`, `valuer`, `advocate`, `county`, `countyFile`, `status`) VALUES
(23, '5', '100', 'Transfer by charge', 'ELGEYO MARAKWET', '', '', '', '', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(26, 2, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-03-19 13:07:58', '19-03-2019 06:39:46 PM', 1),
(27, 2, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-03-19 13:15:35', '', 1),
(28, 0, 'admin', 0x3a3a3100000000000000000000000000, '2019-03-19 14:22:26', '', 0),
(29, 0, 'admin', 0x3a3a3100000000000000000000000000, '2019-03-19 15:33:26', '', 0),
(30, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-19 15:33:32', '', 0),
(31, 0, 'admin', 0x3a3a3100000000000000000000000000, '2019-03-19 15:33:46', '', 0),
(32, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-19 15:58:10', '', 0),
(33, 0, 'admin', 0x3a3a3100000000000000000000000000, '2019-03-19 15:58:19', '', 0),
(34, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-19 15:58:23', '', 0),
(35, 0, 'yvonne ', 0x3a3a3100000000000000000000000000, '2019-03-19 16:00:40', '', 0),
(36, 3, 'Yvonnenjeri@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-19 16:01:11', '19-03-2019 09:43:01 PM', 1),
(37, 0, 'admin', 0x3a3a3100000000000000000000000000, '2019-03-20 07:55:10', '', 0),
(38, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-20 07:55:18', '', 0),
(39, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-20 07:56:12', '', 0),
(40, 4, 'qwerty@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-20 07:56:26', '20-03-2019 01:28:03 PM', 1),
(41, 2, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-03-20 18:54:01', '21-03-2019 12:26:57 AM', 1),
(42, 2, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-03-20 19:14:56', '21-03-2019 12:45:46 AM', 1),
(43, 2, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-03-20 19:52:44', '21-03-2019 01:23:49 AM', 1),
(44, 2, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-03-20 21:39:17', '21-03-2019 03:15:45 AM', 1),
(45, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-11 14:42:23', '', 0),
(46, 2, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-04-13 13:40:09', '', 1),
(47, 2, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-04-13 13:51:30', '13-04-2019 07:27:37 PM', 1),
(48, 2, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-04-14 15:24:36', '14-04-2019 08:55:04 PM', 1),
(49, 0, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-04-15 06:13:08', '', 0),
(50, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-15 06:13:43', '15-04-2019 11:44:41 AM', 1),
(51, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-15 06:23:38', '15-04-2019 12:06:08 PM', 1),
(52, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-16 12:05:14', '16-04-2019 10:06:37 PM', 1),
(53, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-17 12:21:23', '', 1),
(54, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-17 13:22:27', '17-04-2019 07:22:14 PM', 1),
(55, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-17 13:52:22', '17-04-2019 07:31:43 PM', 1),
(56, 0, 'admin', 0x3a3a3100000000000000000000000000, '2019-04-17 14:03:34', '', 0),
(57, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-17 14:03:39', '17-04-2019 07:34:17 PM', 1),
(58, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-17 14:06:49', '17-04-2019 09:10:10 PM', 1),
(59, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-17 15:40:24', '', 1),
(60, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-18 06:49:17', '18-04-2019 01:45:15 PM', 1),
(61, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-18 08:15:25', '18-04-2019 02:22:46 PM', 1),
(62, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-18 09:07:54', '18-04-2019 02:58:05 PM', 1),
(63, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-18 13:11:21', '18-04-2019 06:42:58 PM', 1),
(64, 0, 'admin', 0x3a3a3100000000000000000000000000, '2019-04-18 13:15:16', '', 0),
(65, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-18 13:15:21', '18-04-2019 07:06:55 PM', 1),
(66, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-18 14:43:39', '', 1),
(67, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-22 07:04:48', '22-04-2019 12:39:20 PM', 1),
(68, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-22 07:13:46', '', 1),
(69, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 05:24:23', '24-04-2019 12:23:43 PM', 1),
(70, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 06:53:49', '24-04-2019 12:37:29 PM', 1),
(71, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 07:07:35', '24-04-2019 01:03:51 PM', 1),
(72, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 07:43:26', '', 1),
(73, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 12:29:09', '24-04-2019 06:41:35 PM', 1),
(74, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 13:11:49', '', 0),
(75, 0, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 13:12:08', '', 0),
(76, 0, 'harry@den.com', 0x3a3a3100000000000000000000000000, '2019-04-24 13:12:13', '', 0),
(77, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 13:12:42', '24-04-2019 06:49:07 PM', 1),
(78, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 13:19:22', '24-04-2019 07:19:15 PM', 1),
(79, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 13:51:21', '24-04-2019 07:34:00 PM', 1),
(80, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-24 14:15:16', '', 1),
(81, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-25 05:41:14', '', 0),
(82, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-25 05:41:21', '', 0),
(83, 0, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-25 05:42:59', '', 0),
(84, 6, 'user1@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-25 05:43:34', '', 1),
(85, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-29 09:42:47', '', 0),
(86, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-29 09:44:30', '29-04-2019 03:17:47 PM', 1),
(87, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-29 10:06:28', '', 1),
(88, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-29 10:08:54', '', 1),
(89, 5, 'jkarugutu@gmail.com', 0x3132372e302e302e3100000000000000, '2019-04-29 09:09:49', '29-04-2019 02:51:48 PM', 1),
(90, 5, 'jkarugutu@gmail.com', 0x3132372e302e302e3100000000000000, '2019-04-29 09:24:15', '', 1),
(91, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-30 11:43:14', '', 1),
(92, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-30 11:43:15', '', 1),
(93, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-30 15:02:42', '30-04-2019 08:51:56 PM', 1),
(94, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-30 15:47:08', '', 1),
(95, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-01 09:11:01', '01-05-2019 02:44:45 PM', 1),
(96, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-01 09:14:53', '01-05-2019 03:11:09 PM', 1),
(97, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-01 09:47:22', '01-05-2019 03:51:10 PM', 1),
(98, 0, 'admin', 0x3a3a3100000000000000000000000000, '2019-05-01 10:38:17', '', 0),
(99, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-01 10:38:21', '01-05-2019 04:10:22 PM', 1),
(100, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-01 14:22:46', '01-05-2019 08:07:16 PM', 1),
(101, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-03 08:21:47', '03-05-2019 02:00:02 PM', 1),
(102, 0, 't@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-04 13:25:44', '', 0),
(103, 0, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-04 13:25:53', '', 0),
(104, 8, 't@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-04 13:26:26', '04-05-2019 07:06:36 PM', 1),
(105, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-06 08:53:16', '06-05-2019 02:36:34 PM', 1),
(106, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-06 09:52:54', '06-05-2019 03:48:15 PM', 1),
(107, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-06 10:29:56', '06-05-2019 04:06:26 PM', 1),
(108, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-06 10:52:56', '06-05-2019 04:31:50 PM', 1),
(109, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-06 13:36:46', '06-05-2019 07:13:43 PM', 1),
(110, 0, 'mn@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-06 13:44:34', '', 0),
(111, 9, 'm@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-06 13:44:40', '06-05-2019 07:17:23 PM', 1),
(112, 10, 'a@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-06 13:55:30', '06-05-2019 07:28:46 PM', 1),
(113, 0, 'mn@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-15 08:15:36', '', 0),
(114, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-15 08:15:54', '15-05-2019 02:41:01 PM', 1),
(115, 0, 'mn@gmail.com', 0x3132372e302e302e3100000000000000, '2019-05-15 14:16:30', '', 0),
(116, 5, 'jkarugutu@gmail.com', 0x3132372e302e302e3100000000000000, '2019-05-15 14:16:36', '', 1),
(117, 0, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-05-18 05:45:39', '', 0),
(118, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-18 05:45:47', '18-05-2019 11:39:13 AM', 1),
(119, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-18 06:10:50', '18-05-2019 11:42:48 AM', 1),
(120, 0, 'admin1', 0x3a3a3100000000000000000000000000, '2019-05-18 06:12:58', '', 0),
(121, 0, 'admin', 0x3a3a3100000000000000000000000000, '2019-05-18 06:13:00', '', 0),
(122, 10, 'a@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-18 06:13:04', '18-05-2019 11:43:23 AM', 1),
(123, 0, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-05-18 06:16:42', '', 0),
(124, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-18 06:16:47', '', 1),
(125, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-18 06:58:14', '18-05-2019 01:30:24 PM', 1),
(126, 0, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-05-18 08:03:31', '', 0),
(127, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-18 08:03:39', '18-05-2019 03:54:35 PM', 1),
(128, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-18 17:40:33', '18-05-2019 11:17:52 PM', 1),
(129, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-18 18:11:37', '18-05-2019 11:42:02 PM', 1),
(130, 0, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-05-19 11:36:44', '', 0),
(131, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-19 11:36:50', '19-05-2019 05:06:56 PM', 1),
(132, 0, 'MARTO@GMAIL.COM', 0x3a3a3100000000000000000000000000, '2019-05-19 11:38:36', '', 0),
(133, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-19 11:38:42', '19-05-2019 05:08:47 PM', 1),
(134, 0, 'staff1', 0x3a3a3100000000000000000000000000, '2019-05-19 12:24:54', '', 0),
(135, 5, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-19 12:25:01', '19-05-2019 06:00:08 PM', 1),
(136, 0, 'jkarugutu@gmail.com', 0x3a3a3100000000000000000000000000, '2019-05-19 12:35:41', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `IDNo` bigint(11) DEFAULT NULL,
  `address` tinytext,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `IDNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(4, 'mareto', 'qwerty@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 777384567, NULL, NULL, NULL, NULL, NULL, '2019-03-20 07:56:04', '0000-00-00 00:00:00', 1),
(5, 'Martin Mwangi', 'jkarugutu@gmail.com', '04e1c9d187105f17437a3895c8361363', 1234567, '1169 BUNGOMA', 'Nairobi', 'KENYA', 50200, '2cd26912aa0eb518ca482b39a0bc1c56.jpg', '2019-04-15 06:13:33', '2019-05-18 17:25:29', 1),
(6, 'Marto', 'user1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 12345, NULL, NULL, NULL, NULL, '3dd0ff7f770e71b5764c2d2fb8018439.jpg', '2019-04-25 05:42:33', '2019-04-25 05:48:05', 1),
(7, 'qwerty', 'qwerty1@gmail.com', '6a9c5e59e05c046393f35e92b5b1d7c5', 123456, NULL, NULL, NULL, NULL, NULL, '2019-04-29 09:23:26', '0000-00-00 00:00:00', 1),
(9, 'ALEX MWAS', 'm@gmail.com', '25d55ad283aa400af464c76d713c07ad', 12345678, NULL, NULL, NULL, NULL, NULL, '2019-05-06 13:44:19', '0000-00-00 00:00:00', 1),
(10, 'qwerty', 'a@gmail.com', '25d55ad283aa400af464c76d713c07ad', 12345678, NULL, NULL, NULL, NULL, NULL, '2019-05-06 13:55:18', '0000-00-00 00:00:00', 1),
(11, 'Alice', 'alice@gmail.com', '25d55ad283aa400af464c76d713c07ad', 31394080, NULL, NULL, NULL, NULL, NULL, '2019-05-06 13:59:45', '0000-00-00 00:00:00', 1),
(12, 'ddd', 'ddd@gmail.com', '25d55ad283aa400af464c76d713c07ad', 22222, NULL, NULL, NULL, NULL, NULL, '2019-05-19 11:35:09', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `valuer`
--

CREATE TABLE `valuer` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `IDNo` bigint(11) DEFAULT NULL,
  `address` tinytext,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `valuer`
--

INSERT INTO `valuer` (`id`, `fullName`, `userEmail`, `password`, `IDNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(4, 'mareto', 'qwerty@gmail.com', 'd8578edf8458ce06fbc5bb76a58c5ca4', 777384567, NULL, NULL, NULL, NULL, NULL, '2019-03-20 07:56:04', '0000-00-00 00:00:00', 1),
(5, 'Martin Mwangi', 'jkarugutu@gmail.com', '04e1c9d187105f17437a3895c8361363', 1234567, '1169 BUNGOMA', 'Nairobi', 'KENYA', 50200, '2cd26912aa0eb518ca482b39a0bc1c56.jpg', '2019-04-15 06:13:33', '2019-05-18 17:25:29', 1),
(6, 'Marto', 'user1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 12345, NULL, NULL, NULL, NULL, '3dd0ff7f770e71b5764c2d2fb8018439.jpg', '2019-04-25 05:42:33', '2019-04-25 05:48:05', 1),
(7, 'qwerty', 'qwerty1@gmail.com', '6a9c5e59e05c046393f35e92b5b1d7c5', 123456, NULL, NULL, NULL, NULL, NULL, '2019-04-29 09:23:26', '0000-00-00 00:00:00', 1),
(9, 'ALEX MWAS', 'm@gmail.com', '25d55ad283aa400af464c76d713c07ad', 12345678, NULL, NULL, NULL, NULL, NULL, '2019-05-06 13:44:19', '0000-00-00 00:00:00', 1),
(10, 'qwerty', 'a@gmail.com', '25d55ad283aa400af464c76d713c07ad', 12345678, NULL, NULL, NULL, NULL, NULL, '2019-05-06 13:55:18', '0000-00-00 00:00:00', 1),
(11, 'Alice', 'alice@gmail.com', '25d55ad283aa400af464c76d713c07ad', 31394080, NULL, NULL, NULL, NULL, NULL, '2019-05-06 13:59:45', '0000-00-00 00:00:00', 1),
(12, 'ddd', 'ddd@gmail.com', '25d55ad283aa400af464c76d713c07ad', 22222, NULL, NULL, NULL, NULL, NULL, '2019-05-19 11:35:09', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ownership`
--
ALTER TABLE `ownership`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pic`
--
ALTER TABLE `pic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffedit`
--
ALTER TABLE `staffedit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stafflog`
--
ALTER TABLE `stafflog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`transferNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `valuer`
--
ALTER TABLE `valuer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pic`
--
ALTER TABLE `pic`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staffedit`
--
ALTER TABLE `staffedit`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `stafflog`
--
ALTER TABLE `stafflog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `transferNumber` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `valuer`
--
ALTER TABLE `valuer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
