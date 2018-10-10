-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 02, 2018 at 06:26 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `report_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment_table`
--

DROP TABLE IF EXISTS `assignment_table`;
CREATE TABLE IF NOT EXISTS `assignment_table` (
  `ass_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `fk_sub_id` int(11) NOT NULL,
  `fk_standard_id` int(11) NOT NULL,
  `fk_batch_id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  PRIMARY KEY (`ass_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `batch_table`
--

DROP TABLE IF EXISTS `batch_table`;
CREATE TABLE IF NOT EXISTS `batch_table` (
  `batch_id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_name` varchar(20) NOT NULL,
  `fk_standard_id` int(11) NOT NULL,
  PRIMARY KEY (`batch_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch_table`
--

INSERT INTO `batch_table` (`batch_id`, `batch_name`, `fk_standard_id`) VALUES
(20, '9_B7', 2),
(23, '12_b5', 5),
(22, '9_B1', 2),
(21, '8_B1', 1),
(24, '10_B2', 3);

-- --------------------------------------------------------

--
-- Table structure for table `dailywork_table`
--

DROP TABLE IF EXISTS `dailywork_table`;
CREATE TABLE IF NOT EXISTS `dailywork_table` (
  `work_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) NOT NULL,
  `fk_standard_id` int(11) NOT NULL,
  `fk_subject_id` int(11) NOT NULL,
  `fk_batch_id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  PRIMARY KEY (`work_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notice_table`
--

DROP TABLE IF EXISTS `notice_table`;
CREATE TABLE IF NOT EXISTS `notice_table` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_date` date NOT NULL,
  `notice_name` varchar(30) NOT NULL,
  `notice_desc` varchar(50) NOT NULL,
  `fk_standard_id` int(11) NOT NULL,
  `fk_batch_id` int(11) NOT NULL,
  PRIMARY KEY (`notice_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `standard_table`
--

DROP TABLE IF EXISTS `standard_table`;
CREATE TABLE IF NOT EXISTS `standard_table` (
  `standard_id` int(11) NOT NULL AUTO_INCREMENT,
  `standard_no` int(11) NOT NULL,
  PRIMARY KEY (`standard_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `standard_table`
--

INSERT INTO `standard_table` (`standard_id`, `standard_no`) VALUES
(1, 8),
(2, 9),
(3, 10),
(4, 11),
(5, 12);

-- --------------------------------------------------------

--
-- Table structure for table `student_table`
--

DROP TABLE IF EXISTS `student_table`;
CREATE TABLE IF NOT EXISTS `student_table` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_password` varchar(10) NOT NULL,
  `student_name` varchar(30) NOT NULL,
  `date_of_birth` date NOT NULL,
  `joining_date` date NOT NULL,
  `total_fees` double NOT NULL,
  `paid_fees` double NOT NULL,
  `remaining_fees` double NOT NULL,
  `fk_student_std` int(11) NOT NULL,
  `present_days` int(11) NOT NULL,
  `fk_batch_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject_table`
--

DROP TABLE IF EXISTS `subject_table`;
CREATE TABLE IF NOT EXISTS `subject_table` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(30) NOT NULL,
  `fk_standard_id` int(11) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
