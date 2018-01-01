-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 01, 2018 at 04:04 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `storymakeronline`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `AccNo` int(50) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Birthday` date NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Profile` varchar(500) NOT NULL,
  PRIMARY KEY (`AccNo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`AccNo`, `FirstName`, `Lastname`, `Birthday`, `Username`, `Password`, `Email`, `Profile`) VALUES
(9, 'Admin', 'Admin', '1990-01-01', 'Admin', '2121', 'OSTadmin@gmail.com', 'lDZgsHrW.jpg'),
(16, 'Robert', 'Sabatin', '2014-01-01', 'robert', 'robert', 'sabatinrobert@gmail.com', 'L2.jpg'),
(17, 'jobert', 'treboj', '2015-01-01', 'jobert', 'jobert', 'joberta@gmail.com', 'L2.jpg'),
(15, 'Jhon eirnel lieve', 'Luceno', '1980-01-30', 'jhonlieve', 'jhonlieve19', 'jhonlievesubsme@gmail.com', '15134311_1167485236638944_618045046_n.jpg'),
(18, 'james', 'james', '1996-12-12', 'james', 'james', 'tubianojames@lorem.com', 'L2.jpg'),
(19, 'james', 'tubiano', '1997-12-12', 'waput120', 'tubiano22', 'james@lorem.ipsum', 'L2.jpg'),
(20, 'ads', 'asd', '1996-12-12', 'asd', 'asd', 'asd@asd.asd', 'L2.jpg'),
(21, 'asd', 'asd', '1997-12-21', 'dsa', 'asd', 'asd@asd.com', 'L2.jpg'),
(22, 'qwe', 'qwe', '1997-12-12', 'qwe', 'qwe', 'qwe@qwe.com', 'L2.jpg'),
(23, 'james', 'tubiano', '1996-08-22', 'lorem', 'tubiano!@#', 'lorem@lorem.ipsum', 'L2.jpg'),
(24, 'robs', 'robs', '1991-11-28', 'robs', 'robs', 'robs@yahoo.com', 'L2.jpg'),
(25, 'reader', 'reader', '1999-07-30', 'reader', 'reader', 'reader@yahoo.com', 'L2.jpg'),
(26, 'reymon', 'story', '1993-11-02', 'reymon', 'reymon', 'reymonstory@yahoo.com', 'L2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `adkontis`
--

CREATE TABLE IF NOT EXISTS `adkontis` (
  `conID` int(100) NOT NULL AUTO_INCREMENT,
  `conDescrptn` varchar(500) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `endVote` date DEFAULT NULL,
  PRIMARY KEY (`conID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `adkontis`
--


-- --------------------------------------------------------

--
-- Table structure for table `book_payment`
--

CREATE TABLE IF NOT EXISTS `book_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seqno` int(11) NOT NULL,
  `uploaderid` int(11) NOT NULL,
  `payerid` int(11) NOT NULL,
  `author_paypal_email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `book_payment`
--

INSERT INTO `book_payment` (`id`, `seqno`, `uploaderid`, `payerid`, `author_paypal_email`) VALUES
(5, 62, 26, 17, 'reymonstory@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `howtobe`
--

CREATE TABLE IF NOT EXISTS `howtobe` (
  `howId` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(900) NOT NULL,
  `dDescript` varchar(9000) NOT NULL,
  `uploader` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`howId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `howtobe`
--

INSERT INTO `howtobe` (`howId`, `title`, `dDescript`, `uploader`, `category`, `date`) VALUES
(17, 'Abouts', 'ONLINE STORY MAKER is a site that gives learners, students, parents, authors or even child a fun set of intuitive tools for writing and illustrating stories. Our goal is to inspire anyone that''s ever wanted to write any stories that will come up in their minds. ', 'Admin', 'About', '2017-02-09 01:10:11'),
(26, '"USE A TELLING STORY"', '-Details about a person doesn`t say best who thet are, stories about them do. Readers will find a story about a person much more interesting then a piece explaining who they are.', 'Admin', 'Tips', '2017-11-14 23:33:11'),
(27, '"START WITH THE INTERESTING"', '-What makes the person being profiled so interesting? Readers need this information first or they will lose interest quickly..', 'Admin', 'Tips', '2017-11-14 23:59:07'),
(28, '"THE MOST IMPORTANT THING IS"', '-Write a good story..', 'Admin', 'Tips', '2017-11-15 00:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE IF NOT EXISTS `likes` (
  `lkeNo` int(100) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) NOT NULL,
  `Code` varchar(200) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Votes` int(5) NOT NULL,
  PRIMARY KEY (`lkeNo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `likes`
--


-- --------------------------------------------------------

--
-- Table structure for table `subscrbe`
--

CREATE TABLE IF NOT EXISTS `subscrbe` (
  `sNo` int(60) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) NOT NULL,
  `Uploadercode` varchar(200) NOT NULL,
  `Status` varchar(200) NOT NULL,
  `Sub` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`sNo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `subscrbe`
--

INSERT INTO `subscrbe` (`sNo`, `userName`, `Uploadercode`, `Status`, `Sub`, `date`) VALUES
(59, 'robert', '15', 'Subscribe', '1', '2017-09-06 11:57:45'),
(65, 'jhonlieve', '16', 'Subscribe', '1', '2017-11-15 13:28:42'),
(76, 'dsa', '15', 'Subscribe', '1', '2017-12-06 16:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE IF NOT EXISTS `subscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_sub` int(11) NOT NULL,
  `accno` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `author_sub`, `accno`, `date`) VALUES
(1, 0, 21, '2017-12-06'),
(2, 1, 22, '2017-12-06'),
(3, 1, 23, '2017-12-12'),
(4, 0, 24, '2017-12-18'),
(5, 0, 25, '2017-12-18'),
(6, 1, 26, '2017-12-28');

-- --------------------------------------------------------

--
-- Table structure for table `upldcontest`
--

CREATE TABLE IF NOT EXISTS `upldcontest` (
  `upID` int(200) NOT NULL AUTO_INCREMENT,
  `entryID` int(200) NOT NULL,
  `fileName` varchar(5000) NOT NULL,
  `title` varchar(5000) NOT NULL,
  `story` varchar(9000) NOT NULL,
  `category` varchar(5000) NOT NULL,
  `uploader` varchar(5000) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`upID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `upldcontest`
--

INSERT INTO `upldcontest` (`upID`, `entryID`, `fileName`, `title`, `story`, `category`, `uploader`, `date`) VALUES
(42, 31, 'buket.jpg', 'Snoopy Bucket', 'jhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlievejhonlieve', 'Action', 'jhonlieve', '2017-09-06 11:55:45'),
(43, 32, 'baket.jpg', 'the bucket', 'qweqweqweqweqwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwq', 'Action', 'robert', '2017-09-07 11:27:46'),
(44, 32, 'IMG_0918.JPG', 'Wenskie', 'Dont you worry baby i`ll be there tomorrow morning hahahaha Dont you worry baby i`ll be there tomorrow morning hahahaha Dont you worry baby i`ll be there tomorrow morning hahahaha Dont you worry baby i`ll be there tomorrow morning hahahaha Dont you worry baby i`ll be there tomorrow morning hahahaha Dont you worry baby i`ll be there tomorrow morning hahahaha Dont you worry baby i`ll be there tomorrow morning hahahaha Dont you worry baby i`ll be there tomorrow morning hahahaha Dont you worry baby i`ll be there tomorrow morning hahahaha Dont you worry baby i`ll be there tomorrow morning hahahaha Dont you worry baby i`ll be there tomorrow morning hahahaha ', 'Fantasy', 'jhonlieve', '2017-09-07 14:30:16'),
(45, 38, 'meeeeee.png', 'Choy', 'choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy choy ', 'Fantasy', 'jhonlieve', '2017-11-15 13:26:50'),
(46, 38, 'Screenshot (1).png', 'hahayssssssssss', ' kapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoykapoy jkapoy kapoy', 'Action', 'robert', '2017-11-15 15:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE IF NOT EXISTS `uploads` (
  `seqNo` int(50) NOT NULL AUTO_INCREMENT,
  `uploaderid` int(100) NOT NULL,
  `filename` varchar(400) NOT NULL,
  `title` varchar(500) NOT NULL,
  `story` mediumtext NOT NULL,
  `place` varchar(500) NOT NULL,
  `exclusive` varchar(100) NOT NULL,
  `author` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `isPaid` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  PRIMARY KEY (`seqNo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`seqNo`, `uploaderid`, `filename`, `title`, `story`, `place`, `exclusive`, `author`, `status`, `date`, `isPaid`, `price`) VALUES
(50, 15, 'WIN_20170814_14_20_41_Pro.jpg', 'Naka Puff', 'HAHAHAHAHAHA PUFF PA MORE! HAHAHAHAHAHA PUFF PA MORE! HAHAHAHAHAHA PUFF PA MORE! HAHAHAHAHAHA PUFF PA MORE! HAHAHAHAHAHA PUFF PA MORE! V HAHAHAHAHAHA PUFF PA MORE! HAHAHAHAHAHA PUFF PA MORE! HAHAHAHAHAHA PUFF PA MORE! VHAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!HAHAHAHAHAHA PUFF PA MORE!. HINDI KO MAPIGILAN ANG PAG PUFF! HINDI KO MAPIGILAN ANG PAG PUFF! HINDI KO MAPIGILAN ANG PAG PUFF! HINDI KO MAPIGILAN ANG PAG PUFF! HINDI KO MAPIGILAN ANG PAG PUFF! HINDI KO MAPIGILAN ANG PAG PUFF! HINDI KO MAPIGILAN ANG PAG PUFF! HINDI KO MAPIGILAN ANG PAG PUFF! HINDI KO MAPIGILAN ANG PAG PUFF! HINDI KO MAPIGILAN ANG PAG PUFF! ', 'Horror', 'Off', 'jhonlieve', 'display', '2017-09-25 09:49:03', 1, '0'),
(47, 16, 'baket.jpg', 'The Anonymous', 'The AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe AnnoThe Anno', 'Horror', 'On', 'robert', 'display', '2017-09-06 11:43:47', 0, '0'),
(49, 15, 'WIN_20170714_14_58_30_Pro.jpg', 'The wang', ' SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang SuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwangSuwang', 'Action', 'On', 'jhonlieve', 'display', '2017-09-25 09:47:56', 1, '0'),
(52, 15, 'Screenshot (1).png', 'The Mechanical Keyboard', 'There`s a keyboard call the mechanical keyboard.', 'Fantasy', 'On', 'jhonlieve', 'display', '2017-11-19 22:51:13', 0, '0'),
(53, 15, '15181694_10211580005163743_5100235929836566986_n.jpg', 'Cebu Bhol', 'http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw http://localhost/STORYKO_STORYMO/StoryPages/Read.phpadw ', 'Fantasy', 'Off', 'jhonlieve', 'display', '2017-11-26 11:46:34', 0, '0'),
(59, 17, '15216146_593493044186478_2069434677_o.jpg', 'It is crazy', 'Daaaaaaaaaaaaaaaaaaaaaa DaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaaDaaaaaaaaaaaaaaaaaaaaaa', 'Romance', 'Off', 'jobert', 'display', '2017-12-18 16:06:49', 1, '20'),
(56, 22, '20839138_1740442099317818_1622953140_n.png', 'cancer', 'gaming', 'Action', 'Off', 'qwe', 'display', '2017-12-06 20:45:54', 1, '0'),
(57, 22, 'The-Internship.jpg', 'tanga 1', 'tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 tanga 2 tanga 3 tanga 4 ', 'Action', 'Off', 'qwe', 'display', '2017-12-07 17:14:24', 1, '99'),
(58, 23, 'coding.jpg', 'paypal', 'ang kwento nang paypal subscriber', 'Action', 'Off', 'lorem', 'display', '2017-12-12 12:15:43', 1, '150'),
(60, 15, 'back.jpeg', 'Westcoast', 'Weastcoast HAHAHAHA Weastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAVVWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHAWeastcoast HAHAHAHA', 'Horror', 'Off', 'jhonlieve', 'display', '2017-12-28 01:44:58', 0, '0'),
(61, 15, '15134282_593492277519888_1174231348_n.jpg', 'Dummy Bear', 'GgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGgGg', 'Adventure', 'Off', 'jhonlieve', 'display', '2017-12-28 01:51:45', 1, '20'),
(62, 26, '421.jpg', 'Test', 'Test Only Test OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest OnlyTest Only.......', 'Fantasy', 'Off', 'reymon', 'display', '2017-12-28 02:10:33', 1, '20');

-- --------------------------------------------------------

--
-- Table structure for table `voting`
--

CREATE TABLE IF NOT EXISTS `voting` (
  `voteID` int(200) NOT NULL AUTO_INCREMENT,
  `conID` int(200) NOT NULL,
  `username` varchar(500) NOT NULL,
  `code` int(200) NOT NULL,
  `status` varchar(500) NOT NULL,
  `votenum` int(200) NOT NULL,
  PRIMARY KEY (`voteID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `voting`
--

INSERT INTO `voting` (`voteID`, `conID`, `username`, `code`, `status`, `votenum`) VALUES
(68, 31, 'jhonlieve', 42, 'vote', 1),
(67, 31, 'robert', 42, 'vote', 1);
