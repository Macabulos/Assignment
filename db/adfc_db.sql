-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2024 at 10:01 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adfc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_year_section` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `major` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departmet`
--

CREATE TABLE `departmet` (
  `department_id` int(11) NOT NULL,
  `person_incharge` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `department` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `history_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `data` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `user` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `history`
--


CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(20) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedule_id` int(11) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `sy` varchar(20) NOT NULL,
  `CYS` varchar(100) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `teacher` varchar(50) NOT NULL,
  `room` varchar(20) NOT NULL,
  `day` varchar(100) NOT NULL,
  `time` varchar(20) NOT NULL,
  `time_end` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `day1` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `schedule`
--


CREATE TABLE `subject` (
  `Subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `subject_category` varchar(100) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `Lab_hours` varchar(50) NOT NULL,
  `lecture_hours` varchar(50) NOT NULL,
  `total` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sy`
--

CREATE TABLE `sy` (
  `sy_id` int(11) NOT NULL,
  `sy` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Academic_Rank` varchar(100) NOT NULL,
  `Designation` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_end`
--

CREATE TABLE `time_end` (
  `time_end_id` int(11) NOT NULL,
  `time_end` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `time_end`
--

INSERT INTO `time_end` (`time_end_id`, `time_end`) VALUES
(1, '8:00 am'),
(2, '8:30 am'),
(3, '9:00 am'),
(4, '9:30 am'),
(5, '10:00 am'),
(6, '10:30 am'),
(7, '11:30 am'),
(8, '12:00 pm'),
(9, '12:30 pm'),
(10, '1:00 pm'),
(11, '1:30 pm'),
(12, '2:00 pm'),
(13, '2:30 pm'),
(14, '3:00 pm'),
(36, '8:30 pm'),
(35, '8:00 pm'),
(34, '7:30 pm'),
(33, '7:00 pm'),
(32, '6:30 pm'),
(31, '6:00 pm'),
(30, '5:30 pm'),
(29, '5:00 pm'),
(28, '4:30 pm'),
(27, '4:00 pm'),
(26, '3:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `time_start`
--

CREATE TABLE `time_start` (
  `time_id` int(11) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `time_start`
--

INSERT INTO `time_start` (`time_id`, `time`) VALUES
(1, '7:30 am'),
(2, '8:00 am'),
(3, '8:30 am'),
(4, '9:00 am'),
(5, '9:30 am'),
(6, '10:00 am'),
(7, '10:30 am'),
(8, '11:00 am'),
(9, '11:30 am'),
(10, '12:00 pm'),
(11, '12:30 pm'),
(12, '1:00 pm'),
(13, '1:30 pm'),
(14, '2:00 pm'),
(15, '2:30 pm'),
(16, '3:00 pm'),
(17, '3:30 pm'),
(18, '4:00 pm'),
(19, '4:30 pm'),
(20, '5:00 pm'),
(21, '5:30 pm'),
(22, '6:00 pm'),
(23, '6:30 pm'),
(24, '7:00 pm'),
(25, '7:30 pm'),
(26, '8:00 pm'),
(27, '8:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_id` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `User_Type` varchar(20) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `College` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_id`, `UserName`, `Password`, `User_Type`, `FirstName`, `LastName`, `College`) VALUES
(6, 'jk', 'jk', 'Admin', 'john kevin', 'lorayna', ''),
(8, 'aki', 'aki', 'User', 'achilles', 'Palma', 'COE'),
(11, 'jkl', 'jkl', 'User', 'john kevin', 'lorayna', 'SAS'),
(12, 'kj', 'kj', 'User', 'kent', 'lorayna', 'SAS'),
(13, 'admin', 'admin', 'Admin', 'Christine', 'Redoblo', 'CIT'),
(14, 'teph', 'teph', 'Admin', 'john kevin ', 'lorayna', 'CIT'),
(15, 'jsmith', 'jsmith123', 'User', 'John', 'Smith', 'SAS');

--
-- Dumping data for table `users`
--


--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `departmet`
--
ALTER TABLE `departmet`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Subject_id`);

--
-- Indexes for table `sy`
--
ALTER TABLE `sy`
  ADD PRIMARY KEY (`sy_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `time_end`
--
ALTER TABLE `time_end`
  ADD PRIMARY KEY (`time_end_id`);

--
-- Indexes for table `time_start`
--
ALTER TABLE `time_start`
  ADD PRIMARY KEY (`time_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `departmet`
--
ALTER TABLE `departmet`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1428;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=443;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `Subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `sy`
--
ALTER TABLE `sy`
  MODIFY `sy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `time_end`
--
ALTER TABLE `time_end`
  MODIFY `time_end_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `time_start`
--
ALTER TABLE `time_start`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
