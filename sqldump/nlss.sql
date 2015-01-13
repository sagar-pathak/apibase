-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2015 at 10:47 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nlss`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE IF NOT EXISTS `auth` (
  `userid` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `fullname` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `secretCode` varchar(500) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `authclient`
--

CREATE TABLE IF NOT EXISTS `authclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cfullname` varchar(500) NOT NULL,
  `cemail` varchar(500) NOT NULL,
  `accessToken` varchar(500) NOT NULL,
  `secretCode` varchar(500) NOT NULL,
  `cstatus` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `effectivedate`
--

CREATE TABLE IF NOT EXISTS `effectivedate` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `effectiveFrom` int(11) NOT NULL,
  `updateCode` varchar(500) NOT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
  `scheduleNo` int(11) NOT NULL AUTO_INCREMENT,
  `groupName` int(11) NOT NULL,
  `groupNumber` int(11) NOT NULL,
  `startsFrom` time NOT NULL,
  `endsAt` time NOT NULL,
  `day` int(11) NOT NULL,
  `effectiveId` int(11) NOT NULL,
  PRIMARY KEY (`scheduleNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
