-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 02, 2017 at 04:53 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railway`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `userid` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` int(45) DEFAULT NULL,
  `phone` double NOT NULL,
  `email` varchar(45) NOT NULL,
  `irctc` double NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`userid`, `fname`, `lname`, `phone`, `email`, `irctc`) VALUES
(101, 'Omkar', 702157956, 8879064690, 'vedakomkar@yahoo.in', 1234556),
(121, 'Omkar', 5345345, 5464564, 'vedakomkar@yahoo.in', 5577655),
(123, 'Lord', 5345345, 54654656, 'vedakomkar@yahoo.in', 5577655),
(130, 'Omkar', 98908909, 879789890, 'vedakomkar@yahoo.in', 5577655),
(128, 'Shivam', 76549789, 9978567545, 'shivam@gmail.com', 98778567);

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

DROP TABLE IF EXISTS `trains`;
CREATE TABLE IF NOT EXISTS `trains` (
  `trainid` double NOT NULL,
  `trainnm` varchar(45) NOT NULL,
  `source` varchar(45) NOT NULL,
  `des` varchar(45) NOT NULL,
  `dep` time NOT NULL,
  `arr` time NOT NULL,
  `time` time NOT NULL,
  `seats` int(45) NOT NULL,
  UNIQUE KEY `trainid` (`trainid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`trainid`, `trainnm`, `source`, `des`, `dep`, `arr`, `time`, `seats`) VALUES
(42671, 'Rajdhani Express', 'Mumbai', 'Delhi', '06:34:00', '12:42:00', '06:08:00', 243),
(24576, 'Nizamuddin Duronto Express', 'Mumbai', 'Delhi', '18:20:00', '08:40:00', '10:20:00', 75),
(13151, 'Jammu Tawi Express', 'Mumbai', 'Delhi', '10:38:00', '21:41:00', '11:03:00', 147),
(12471, 'Swaraj Express', 'Mumbai', 'Delhi', '07:14:00', '19:32:00', '12:18:00', 214),
(17318, 'Tilak Express', 'Mumbai', 'Chennai', '08:10:00', '05:00:00', '04:00:00', 5),
(12789, 'Pragati Express', 'Mumbai', 'Chennai', '12:00:00', '05:00:00', '06:00:00', 0),
(11017, 'Chennai Express', 'Mumbai', 'Chennai', '08:00:00', '04:00:00', '05:00:00', 11),
(12859, 'Gitangali Express', 'Mumbai', 'Kolkata', '12:30:00', '05:00:00', '21:00:00', 10),
(12101, 'Jnaneshewari Express', 'Mumbai', 'Kolkata', '20:34:00', '04:00:00', '23:00:00', 30),
(12322, 'Kolkata Mail', 'Mumbai', 'Kolkata', '21:25:00', '11:41:00', '23:00:00', 50),
(17328, 'Hubli Express', 'Mumbai', 'Pune', '12:25:00', '16:00:00', '03:08:00', 10),
(11031, 'Pune Express', 'Mumbai', 'Pune', '05:00:00', '13:00:00', '03:00:00', 120),
(11011, 'Bengaluru Express', 'Mumbai', 'Banglore', '04:00:00', '15:00:00', '13:00:00', 45),
(11234, 'Vivek Express', 'Mumbai', 'Banglore', '10:00:00', '05:00:00', '13:00:00', 12),
(10234, 'Todkar Express', 'Mumbai', 'Pune', '07:00:00', '17:00:00', '04:00:00', 0),
(10101, 'Mumbai Express', 'Delhi', 'Mumbai', '04:00:00', '18:00:00', '23:00:00', 120),
(15649, 'Marathwada Express', 'Delhi', 'Pune', '09:00:00', '03:00:00', '10:00:00', 88),
(15068, 'Karnataka Express', 'Delhi', 'Banglore', '06:00:00', '19:00:00', '17:00:00', 0),
(78945, 'Chennai Express', 'Delhi', 'Chennai', '08:00:00', '22:00:00', '16:00:00', 9),
(45612, 'Rajdhani Express', 'Delhi', 'Kolkata', '09:00:00', '17:51:00', '14:00:00', 15),
(45678, 'Jodhpur Express', 'Banglore', 'Kolkata', '05:00:00', '21:00:00', '22:00:00', 65),
(15945, 'Chennai Mail', 'Banglore', 'Chennai', '10:00:00', '22:00:00', '17:00:00', 12),
(65484, 'Chalukya Express', 'Banglore', 'Pune', '16:00:00', '05:00:00', '17:00:00', 155),
(32145, 'Karnataka Express', 'Banglore', 'Delhi', '07:00:00', '15:00:00', '21:00:00', 122),
(48951, 'Amhedabad Express', 'Pune', 'Chennai', '10:00:00', '17:00:00', '21:00:00', 56),
(10001, 'Kranti Express', 'Pune', 'Banglore', '13:00:00', '04:00:00', '17:00:00', 46),
(20001, 'Deccan Express', 'Pune', 'Mumbai', '06:00:00', '17:00:00', '15:00:00', 162),
(30001, 'Jhelum Express', 'Pune', 'Delhi', '07:00:00', '17:00:00', '18:00:00', 10),
(40001, 'Ajadhind Express', 'Pune', 'Kolkata', '13:00:00', '03:00:00', '11:00:00', 11),
(50001, 'Kolkata Chennai Express', 'Kolkata', 'Chennai', '09:00:00', '13:00:00', '22:54:59', 50),
(50002, 'Kolkata Rajdhani Express', 'Kolkata', 'Delhi', '07:00:00', '11:26:00', '21:00:45', 56),
(60001, 'Gitanjali Express', 'Kolkata', 'Mumbai', '12:11:00', '18:40:00', '14:00:00', 98),
(60002, 'Kolkata Pune Express', 'Kolkata ', 'Pune', '11:00:00', '14:00:00', '16:00:00', 54),
(70001, 'Myssore Express', 'Kolkata', 'Banglore', '06:00:00', '21:00:00', '22:00:00', 65),
(80001, 'Chennai Mumai Express', 'Chennai', 'Mumbai', '14:00:00', '21:00:00', '14:00:00', 147),
(80002, 'Chennai Central Express', 'Chennai', 'Pune', '05:00:00', '20:00:00', '09:00:00', 122),
(80003, 'Chennai Delhi Express', 'Chennai ', 'Delhi', '11:00:00', '21:00:00', '07:00:00', 89),
(90001, 'Chennai Kolkata Express', 'Chennai', 'Kolkata', '09:00:00', '18:00:00', '15:00:00', 63),
(90002, 'Chennai Banglore Express', 'Chennai', 'Banglore', '10:00:00', '22:00:00', '12:00:00', 55);

-- --------------------------------------------------------

--
-- Table structure for table `traveld`
--

DROP TABLE IF EXISTS `traveld`;
CREATE TABLE IF NOT EXISTS `traveld` (
  `name` varchar(30) NOT NULL,
  `quota` varchar(30) NOT NULL,
  `class` varchar(30) NOT NULL,
  `date` int(10) NOT NULL,
  `month` int(10) NOT NULL,
  `year` int(10) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `card` double NOT NULL,
  `exp` varchar(30) NOT NULL,
  `expy` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `traveld`
--

INSERT INTO `traveld` (`name`, `quota`, `class`, `date`, `month`, `year`, `gender`, `card`, `exp`, `expy`) VALUES
('Kaushik', 'Genral', '2A', 13, 5, 1997, 'Male', 123456789, 'March', 2019);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
