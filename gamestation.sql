-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2019 at 07:02 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamestation`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `messageid` varchar(10) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE `favourite` (
  `userID` varchar(10) NOT NULL,
  `gameID` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `gameID` varchar(10) NOT NULL,
  `gameName` varchar(20) NOT NULL,
  `category` varchar(10) NOT NULL,
  `tag` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`gameID`, `gameName`, `category`, `tag`) VALUES
('G001', 'bloxorz', 'puzzle', 'puzzle game'),
('G002', 'Twisted Lines', 'puzzle', 'puzzle game'),
('G003', 'Euro Soccer Forever', 'sports', 'soccer'),
('G004', 'Basketball Stars', 'sports', 'basketball'),
('G005', 'Sportbike Champion', 'racing', 'bike game'),
('G006', 'Commando: Rush', 'action', 'shooting'),
('G007', 'Diablo Valley Rally', 'racing', 'off Road'),
('G008', 'Assault Course 2', 'action', 'shooting'),
('G009', 'RotorStorm', 'action', 'helicopter game'),
('G010', 'Supercar Showdown', 'racing', 'car game'),
('G011', 'ProBaseball', 'sports', 'baseball'),
('G012', 'Magic Balls', 'puzzle', 'patten'),
('G013', 'Stealth Sniper 2', 'action', 'sniper');

-- --------------------------------------------------------

--
-- Table structure for table `gameurl`
--

CREATE TABLE `gameurl` (
  `GameID` varchar(10) NOT NULL,
  `code` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gameurl`
--

INSERT INTO `gameurl` (`GameID`, `code`) VALUES
('G001', 'bloxorz'),
('G002', 'twisted-lines'),
('G003', 'euro-soccer-forever'),
('G004', 'basketball-stars'),
('G005', 'sportbike-champion'),
('G006', 'commando-rush'),
('G007', 'diablo-valley-rally'),
('G008', 'assault-course-2'),
('G009', 'rotorstorm'),
('G010', 'supercar-showdown'),
('G011', 'probaseball'),
('G012', 'magic-balls'),
('G013', 'stealth-sniper-2');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userID` varchar(10) NOT NULL,
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `gender` varchar(7) DEFAULT 'Male',
  `country` varchar(20) DEFAULT NULL,
  `platform` varchar(20) DEFAULT NULL,
  `userName` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `firstName`, `lastName`, `gender`, `country`, `platform`, `userName`, `email`, `type`) VALUES
('P1001', 'Admin', 'Admin', 'Male', 'Sri Lanka', 'PC', 'admin', 'admin@gamestation.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `useraccount`
--

CREATE TABLE `useraccount` (
  `userID` varchar(10) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccount`
--

INSERT INTO `useraccount` (`userID`, `userName`, `password`) VALUES
('P1001', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`messageid`);

--
-- Indexes for table `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`userID`,`gameID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`,`userName`,`email`);

--
-- Indexes for table `useraccount`
--
ALTER TABLE `useraccount`
  ADD PRIMARY KEY (`userID`,`userName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
