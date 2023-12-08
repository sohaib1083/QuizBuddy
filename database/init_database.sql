-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 11:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_quiz`
--
CREATE DATABASE IF NOT EXISTS `online_quiz` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `online_quiz`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES(1, 'admin', 'admin');
INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES(2, 'admin', 'admin');
INSERT INTO `admin_login` (`id`, `username`, `password`) VALUES(3, 'sohaib123', 'sohaib123');

-- --------------------------------------------------------

--
-- Table structure for table `exam_category`
--

CREATE TABLE `exam_category` (
  `id` int(5) NOT NULL,
  `category` varchar(100) NOT NULL,
  `time` varchar(5) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_category`
--

INSERT INTO `exam_category` (`id`, `category`, `time`, `username`) VALUES(2, 'chemistry101', '20', '');
INSERT INTO `exam_category` (`id`, `category`, `time`, `username`) VALUES(3, 'physics', '60', '');
INSERT INTO `exam_category` (`id`, `category`, `time`, `username`) VALUES(4, 'db ', '90', '');
INSERT INTO `exam_category` (`id`, `category`, `time`, `username`) VALUES(5, 'pdc ', '90', '');
INSERT INTO `exam_category` (`id`, `category`, `time`, `username`) VALUES(6, 'my_exam ', '90', '');
INSERT INTO `exam_category` (`id`, `category`, `time`, `username`) VALUES(7, 'db ', '10', '');
INSERT INTO `exam_category` (`id`, `category`, `time`, `username`) VALUES(8, 'hamza ', '10', '');
INSERT INTO `exam_category` (`id`, `category`, `time`, `username`) VALUES(9, 'hello1', '60', '');
INSERT INTO `exam_category` (`id`, `category`, `time`, `username`) VALUES(10, 'hello2', '61', '');
INSERT INTO `exam_category` (`id`, `category`, `time`, `username`) VALUES(11, 'hello3', '62', 'sohaib');
INSERT INTO `exam_category` (`id`, `category`, `time`, `username`) VALUES(14, 'haris11', '90', 'sohaib123');
INSERT INTO `exam_category` (`id`, `category`, `time`, `username`) VALUES(16, 'sohaib101', '101', '');
INSERT INTO `exam_category` (`id`, `category`, `time`, `username`) VALUES(18, 'sohaib109', '109', 'sohaib123');
INSERT INTO `exam_category` (`id`, `category`, `time`, `username`) VALUES(20, 'test1', '90', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `exam_type` varchar(100) NOT NULL,
  `total_question` varchar(10) NOT NULL,
  `correct_answer` varchar(10) NOT NULL,
  `wrong_answer` varchar(10) NOT NULL,
  `exam_time` varchar(50) NOT NULL,
  `attempted` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `exam_results`
--


-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(5) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`) VALUES(1, 'Sohaib', 'Shamsi', 'sohaib1083', 'bhbh', 'saroshamsi@gmail.com', '03330220803');
INSERT INTO `registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`) VALUES(2, 'Sohaib', 'Shamsi', '21K-3278', 'vava', 'sohaib1083@gmail.com', '03330220803');
INSERT INTO `registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`) VALUES(3, 'Sohaib', 'Shamsi', 'sohaib', 'haha', 'saroshamsi@gmail.com', '03330220803');
INSERT INTO `registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`) VALUES(4, 'a', 'a', 'a', 'a', 'a', 'a');
INSERT INTO `registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`) VALUES(5, 'bb', 'bb', 'bb', 'fast12343', 'ss', '123');
INSERT INTO `registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`) VALUES(6, 'Sohaib', 'Shamsi', 'sohaib101', 'Fast1234', 'sohaib1083@gmail.com', '03330220803');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_category`
--
ALTER TABLE `exam_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exam_category`
--
ALTER TABLE `exam_category`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2516;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
