-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2024 at 05:03 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ars1`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertSimulatedAwards` ()  BEGIN
  DECLARE i INT DEFAULT 1;
  
  WHILE i <= 100 DO
    INSERT INTO `awards` (`award_type_Id`, `type_Id`, `award_category_Id`, `award_level_Id`, `skill_Id`, `department_Id`, `class_Id`, `organizer_name`, `location`, `issue_date`, `award_status`, `description`, `award_image_Id`, `award_file`)
    VALUES
    (FLOOR(RAND() * 4) + 1, FLOOR(RAND() * 3) + 1, FLOOR(RAND() * 6) + 1, FLOOR(RAND() * 4) + 1, FLOOR(RAND() * 10) + 1, FLOOR(RAND() * 9) + 1, FLOOR(RAND() * 5) + 1, CONCAT('Organizer ', i), CONCAT('Location ', i), NOW() - INTERVAL i DAY, 1, CONCAT('Description ', i), FLOOR(RAND() * 3) + 1, CONCAT('file', i, '.png'));
    
    SET i = i + 1;
  END WHILE;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `award_id` int(11) NOT NULL,
  `award_type_Id` int(11) DEFAULT NULL,
  `type_Id` int(11) DEFAULT NULL,
  `award_category_Id` int(11) DEFAULT NULL,
  `award_level_Id` int(11) DEFAULT NULL,
  `skill_Id` int(11) DEFAULT NULL,
  `department_Id` int(11) DEFAULT NULL,
  `class_Id` int(11) DEFAULT NULL,
  `organizer_name` varchar(255) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL,
  `location` text COLLATE utf8mb4_thai_520_w2 DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `award_status` int(11) NOT NULL DEFAULT 1,
  `description` text COLLATE utf8mb4_thai_520_w2 DEFAULT NULL,
  `award_image_Id` int(11) DEFAULT NULL,
  `award_file` varchar(255) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`award_id`, `award_type_Id`, `type_Id`, `award_category_Id`, `award_level_Id`, `skill_Id`, `department_Id`, `class_Id`, `organizer_name`, `location`, `issue_date`, `award_status`, `description`, `award_image_Id`, `award_file`) VALUES
(2, 1, 1, 6, 1, 1, 9, 2, 'ไม่บอก', '999/99', '2023-12-15', 1, '555', 1, '1.pdf'),
(9, 1, 1, 1, 2, 1, 8, 1, 'Organizer 1', 'Location 1', '2024-02-22', 1, 'Description 1', 1, 'file1.png'),
(10, 2, 2, 2, 3, 2, 5, 2, 'Organizer 2', 'Location 2', '2024-02-23', 1, 'Description 2', 2, 'file2.png'),
(11, 3, 3, 3, 4, 3, 2, 3, 'Organizer 3', 'Location 3', '2024-02-24', 1, 'Description 3', 3, 'file3.png'),
(12, 2, 3, 6, 2, 7, 3, 2, 'Organizer 1', 'Location 1', '2024-02-21', 1, 'Description 1', 1, 'file1.png'),
(13, 2, 3, 1, 4, 6, 3, 3, 'Organizer 2', 'Location 2', '2024-02-20', 1, 'Description 2', 1, 'file2.png'),
(14, 2, 2, 4, 3, 10, 5, 4, 'Organizer 3', 'Location 3', '2024-02-19', 1, 'Description 3', 1, 'file3.png'),
(15, 4, 3, 4, 3, 7, 7, 4, 'Organizer 4', 'Location 4', '2024-02-18', 1, 'Description 4', 2, 'file4.png'),
(16, 3, 2, 6, 3, 9, 3, 5, 'Organizer 5', 'Location 5', '2024-02-17', 1, 'Description 5', 2, 'file5.png'),
(17, 1, 2, 6, 3, 4, 7, 5, 'Organizer 6', 'Location 6', '2024-02-16', 1, 'Description 6', 1, 'file6.png'),
(18, 2, 3, 2, 1, 3, 5, 4, 'Organizer 7', 'Location 7', '2024-02-15', 1, 'Description 7', 3, 'file7.png'),
(19, 4, 1, 5, 1, 1, 5, 3, 'Organizer 8', 'Location 8', '2024-02-14', 1, 'Description 8', 1, 'file8.png'),
(20, 3, 3, 4, 2, 4, 5, 2, 'Organizer 9', 'Location 9', '2024-02-13', 1, 'Description 9', 3, 'file9.png'),
(21, 3, 1, 3, 2, 8, 4, 5, 'Organizer 10', 'Location 10', '2024-02-12', 1, 'Description 10', 2, 'file10.png'),
(22, 4, 1, 1, 4, 6, 6, 1, 'Organizer 11', 'Location 11', '2024-02-11', 1, 'Description 11', 3, 'file11.png'),
(23, 2, 3, 5, 2, 9, 9, 2, 'Organizer 12', 'Location 12', '2024-02-10', 1, 'Description 12', 1, 'file12.png'),
(24, 2, 1, 4, 2, 3, 1, 4, 'Organizer 13', 'Location 13', '2024-02-09', 1, 'Description 13', 1, 'file13.png'),
(25, 2, 3, 5, 2, 1, 7, 2, 'Organizer 14', 'Location 14', '2024-02-08', 1, 'Description 14', 2, 'file14.png'),
(26, 1, 1, 6, 3, 2, 5, 5, 'Organizer 15', 'Location 15', '2024-02-07', 1, 'Description 15', 1, 'file15.png'),
(27, 3, 1, 2, 1, 3, 7, 4, 'Organizer 16', 'Location 16', '2024-02-06', 1, 'Description 16', 2, 'file16.png'),
(28, 4, 1, 1, 2, 5, 4, 3, 'Organizer 17', 'Location 17', '2024-02-05', 1, 'Description 17', 1, 'file17.png'),
(29, 1, 1, 2, 2, 6, 4, 1, 'Organizer 18', 'Location 18', '2024-02-04', 1, 'Description 18', 1, 'file18.png'),
(30, 4, 2, 2, 3, 6, 8, 2, 'Organizer 19', 'Location 19', '2024-02-03', 1, 'Description 19', 3, 'file19.png'),
(31, 1, 2, 4, 3, 6, 3, 5, 'Organizer 20', 'Location 20', '2024-02-02', 1, 'Description 20', 2, 'file20.png'),
(32, 3, 3, 2, 4, 8, 7, 4, 'Organizer 21', 'Location 21', '2024-02-01', 1, 'Description 21', 2, 'file21.png'),
(33, 4, 2, 2, 4, 10, 2, 4, 'Organizer 22', 'Location 22', '2024-01-31', 1, 'Description 22', 1, 'file22.png'),
(34, 1, 2, 4, 4, 5, 5, 2, 'Organizer 23', 'Location 23', '2024-01-30', 1, 'Description 23', 1, 'file23.png'),
(35, 1, 2, 6, 3, 10, 7, 3, 'Organizer 24', 'Location 24', '2024-01-29', 1, 'Description 24', 1, 'file24.png'),
(36, 2, 3, 4, 3, 1, 8, 1, 'Organizer 25', 'Location 25', '2024-01-28', 1, 'Description 25', 1, 'file25.png'),
(37, 2, 1, 4, 4, 8, 8, 5, 'Organizer 26', 'Location 26', '2024-01-27', 1, 'Description 26', 2, 'file26.png'),
(38, 4, 2, 2, 2, 8, 9, 2, 'Organizer 27', 'Location 27', '2024-01-26', 1, 'Description 27', 2, 'file27.png'),
(39, 2, 3, 3, 1, 10, 7, 4, 'Organizer 28', 'Location 28', '2024-01-25', 1, 'Description 28', 2, 'file28.png'),
(40, 2, 2, 2, 3, 7, 3, 3, 'Organizer 29', 'Location 29', '2024-01-24', 1, 'Description 29', 3, 'file29.png'),
(41, 4, 1, 5, 4, 3, 7, 5, 'Organizer 30', 'Location 30', '2024-01-23', 1, 'Description 30', 1, 'file30.png'),
(42, 2, 3, 6, 4, 7, 6, 1, 'Organizer 31', 'Location 31', '2024-01-22', 1, 'Description 31', 2, 'file31.png'),
(43, 2, 2, 4, 2, 1, 2, 3, 'Organizer 32', 'Location 32', '2024-01-21', 1, 'Description 32', 3, 'file32.png'),
(44, 4, 1, 6, 1, 6, 5, 1, 'Organizer 33', 'Location 33', '2024-01-20', 1, 'Description 33', 3, 'file33.png'),
(45, 3, 2, 3, 1, 4, 4, 4, 'Organizer 34', 'Location 34', '2024-01-19', 1, 'Description 34', 1, 'file34.png'),
(46, 3, 2, 4, 3, 7, 1, 4, 'Organizer 35', 'Location 35', '2024-01-18', 1, 'Description 35', 3, 'file35.png'),
(47, 1, 2, 1, 2, 4, 5, 2, 'Organizer 36', 'Location 36', '2024-01-17', 1, 'Description 36', 2, 'file36.png'),
(48, 4, 3, 3, 3, 9, 6, 3, 'Organizer 37', 'Location 37', '2024-01-16', 1, 'Description 37', 3, 'file37.png'),
(49, 2, 1, 3, 1, 5, 8, 1, 'Organizer 38', 'Location 38', '2024-01-15', 1, 'Description 38', 2, 'file38.png'),
(50, 1, 2, 2, 3, 1, 5, 2, 'Organizer 39', 'Location 39', '2024-01-14', 1, 'Description 39', 2, 'file39.png'),
(51, 2, 3, 2, 3, 10, 1, 4, 'Organizer 40', 'Location 40', '2024-01-13', 1, 'Description 40', 2, 'file40.png'),
(52, 3, 1, 1, 3, 4, 7, 2, 'Organizer 41', 'Location 41', '2024-01-12', 1, 'Description 41', 3, 'file41.png'),
(53, 2, 2, 6, 1, 10, 3, 3, 'Organizer 42', 'Location 42', '2024-01-11', 1, 'Description 42', 1, 'file42.png'),
(54, 2, 3, 3, 4, 10, 2, 5, 'Organizer 43', 'Location 43', '2024-01-10', 1, 'Description 43', 2, 'file43.png'),
(55, 4, 1, 5, 1, 9, 6, 4, 'Organizer 44', 'Location 44', '2024-01-09', 1, 'Description 44', 1, 'file44.png'),
(56, 2, 1, 2, 1, 9, 9, 2, 'Organizer 45', 'Location 45', '2024-01-08', 1, 'Description 45', 3, 'file45.png'),
(57, 1, 2, 3, 4, 4, 2, 3, 'Organizer 46', 'Location 46', '2024-01-07', 1, 'Description 46', 1, 'file46.png'),
(58, 4, 1, 6, 2, 4, 4, 2, 'Organizer 47', 'Location 47', '2024-01-06', 1, 'Description 47', 3, 'file47.png'),
(59, 3, 2, 2, 4, 2, 7, 1, 'Organizer 48', 'Location 48', '2024-01-05', 1, 'Description 48', 3, 'file48.png'),
(60, 4, 3, 6, 1, 10, 2, 2, 'Organizer 49', 'Location 49', '2024-01-04', 1, 'Description 49', 3, 'file49.png'),
(61, 3, 3, 6, 1, 10, 3, 4, 'Organizer 50', 'Location 50', '2024-01-03', 1, 'Description 50', 2, 'file50.png'),
(62, 1, 3, 3, 2, 6, 8, 3, 'Organizer 51', 'Location 51', '2024-01-02', 1, 'Description 51', 2, 'file51.png'),
(63, 2, 3, 5, 2, 5, 1, 1, 'Organizer 52', 'Location 52', '2024-01-01', 1, 'Description 52', 2, 'file52.png'),
(64, 4, 2, 6, 3, 8, 3, 2, 'Organizer 53', 'Location 53', '2023-12-31', 1, 'Description 53', 3, 'file53.png'),
(65, 4, 2, 2, 1, 5, 1, 4, 'Organizer 54', 'Location 54', '2023-12-30', 1, 'Description 54', 2, 'file54.png'),
(66, 1, 1, 2, 1, 4, 8, 5, 'Organizer 55', 'Location 55', '2023-12-29', 1, 'Description 55', 3, 'file55.png'),
(67, 2, 2, 5, 2, 10, 9, 4, 'Organizer 56', 'Location 56', '2023-12-28', 1, 'Description 56', 2, 'file56.png'),
(68, 2, 1, 5, 2, 8, 5, 2, 'Organizer 57', 'Location 57', '2023-12-27', 1, 'Description 57', 1, 'file57.png'),
(69, 3, 2, 1, 3, 3, 6, 1, 'Organizer 58', 'Location 58', '2023-12-26', 1, 'Description 58', 1, 'file58.png'),
(70, 1, 3, 3, 1, 1, 4, 1, 'Organizer 59', 'Location 59', '2023-12-25', 1, 'Description 59', 3, 'file59.png'),
(71, 2, 3, 3, 4, 6, 4, 2, 'Organizer 60', 'Location 60', '2023-12-24', 1, 'Description 60', 2, 'file60.png'),
(72, 1, 3, 1, 1, 2, 6, 4, 'Organizer 61', 'Location 61', '2023-12-23', 1, 'Description 61', 3, 'file61.png'),
(73, 3, 3, 3, 3, 5, 8, 3, 'Organizer 62', 'Location 62', '2023-12-22', 1, 'Description 62', 1, 'file62.png'),
(74, 4, 2, 4, 3, 10, 1, 3, 'Organizer 63', 'Location 63', '2023-12-21', 1, 'Description 63', 3, 'file63.png'),
(75, 3, 2, 4, 2, 7, 4, 5, 'Organizer 64', 'Location 64', '2023-12-20', 1, 'Description 64', 2, 'file64.png'),
(76, 1, 3, 1, 1, 6, 4, 2, 'Organizer 65', 'Location 65', '2023-12-19', 1, 'Description 65', 1, 'file65.png'),
(77, 3, 2, 4, 2, 6, 1, 3, 'Organizer 66', 'Location 66', '2023-12-18', 1, 'Description 66', 2, 'file66.png'),
(78, 4, 1, 5, 2, 4, 8, 2, 'Organizer 67', 'Location 67', '2023-12-17', 1, 'Description 67', 3, 'file67.png'),
(79, 3, 1, 2, 3, 7, 3, 2, 'Organizer 68', 'Location 68', '2023-12-16', 1, 'Description 68', 3, 'file68.png'),
(80, 2, 3, 4, 2, 9, 3, 5, 'Organizer 69', 'Location 69', '2023-12-15', 1, 'Description 69', 3, 'file69.png'),
(81, 2, 1, 5, 1, 5, 8, 1, 'Organizer 70', 'Location 70', '2023-12-14', 1, 'Description 70', 2, 'file70.png'),
(82, 1, 2, 5, 4, 1, 6, 4, 'Organizer 71', 'Location 71', '2023-12-13', 1, 'Description 71', 3, 'file71.png'),
(83, 4, 3, 2, 4, 5, 7, 1, 'Organizer 72', 'Location 72', '2023-12-12', 1, 'Description 72', 3, 'file72.png'),
(84, 3, 1, 3, 4, 7, 9, 5, 'Organizer 73', 'Location 73', '2023-12-11', 1, 'Description 73', 1, 'file73.png'),
(85, 3, 1, 4, 4, 10, 8, 2, 'Organizer 74', 'Location 74', '2023-12-10', 1, 'Description 74', 1, 'file74.png'),
(86, 2, 1, 5, 3, 7, 5, 5, 'Organizer 75', 'Location 75', '2023-12-09', 1, 'Description 75', 2, 'file75.png'),
(87, 4, 3, 2, 1, 8, 6, 4, 'Organizer 76', 'Location 76', '2023-12-08', 1, 'Description 76', 1, 'file76.png'),
(88, 2, 3, 5, 4, 9, 9, 2, 'Organizer 77', 'Location 77', '2023-12-07', 1, 'Description 77', 2, 'file77.png'),
(89, 3, 1, 4, 2, 3, 2, 5, 'Organizer 78', 'Location 78', '2023-12-06', 1, 'Description 78', 3, 'file78.png'),
(90, 1, 3, 6, 3, 8, 4, 5, 'Organizer 79', 'Location 79', '2023-12-05', 1, 'Description 79', 2, 'file79.png'),
(91, 3, 3, 4, 2, 1, 2, 4, 'Organizer 80', 'Location 80', '2023-12-04', 1, 'Description 80', 1, 'file80.png'),
(92, 3, 1, 6, 2, 6, 3, 4, 'Organizer 81', 'Location 81', '2023-12-03', 1, 'Description 81', 3, 'file81.png'),
(93, 3, 1, 2, 1, 6, 9, 1, 'Organizer 82', 'Location 82', '2023-12-02', 1, 'Description 82', 3, 'file82.png'),
(94, 1, 3, 1, 1, 9, 5, 1, 'Organizer 83', 'Location 83', '2023-12-01', 1, 'Description 83', 3, 'file83.png'),
(95, 2, 2, 3, 3, 10, 7, 5, 'Organizer 84', 'Location 84', '2023-11-30', 1, 'Description 84', 1, 'file84.png'),
(96, 4, 2, 3, 2, 3, 1, 5, 'Organizer 85', 'Location 85', '2023-11-29', 1, 'Description 85', 3, 'file85.png'),
(97, 4, 2, 2, 4, 1, 1, 1, 'Organizer 86', 'Location 86', '2023-11-28', 1, 'Description 86', 3, 'file86.png'),
(98, 4, 1, 5, 2, 1, 4, 5, 'Organizer 87', 'Location 87', '2023-11-27', 1, 'Description 87', 1, 'file87.png'),
(99, 2, 3, 2, 1, 6, 4, 2, 'Organizer 88', 'Location 88', '2023-11-26', 1, 'Description 88', 1, 'file88.png'),
(100, 3, 1, 1, 3, 5, 7, 2, 'Organizer 89', 'Location 89', '2023-11-25', 1, 'Description 89', 1, 'file89.png'),
(101, 3, 2, 5, 2, 4, 7, 4, 'Organizer 90', 'Location 90', '2023-11-24', 1, 'Description 90', 1, 'file90.png'),
(102, 3, 1, 3, 1, 2, 3, 1, 'Organizer 91', 'Location 91', '2023-11-23', 1, 'Description 91', 2, 'file91.png'),
(103, 3, 1, 3, 2, 1, 3, 2, 'Organizer 92', 'Location 92', '2023-11-22', 1, 'Description 92', 1, 'file92.png'),
(104, 1, 3, 5, 2, 3, 2, 1, 'Organizer 93', 'Location 93', '2023-11-21', 1, 'Description 93', 3, 'file93.png'),
(105, 1, 1, 5, 3, 4, 4, 5, 'Organizer 94', 'Location 94', '2023-11-20', 1, 'Description 94', 2, 'file94.png'),
(106, 1, 1, 6, 1, 4, 1, 1, 'Organizer 95', 'Location 95', '2023-11-19', 1, 'Description 95', 2, 'file95.png'),
(107, 2, 2, 6, 2, 3, 3, 4, 'Organizer 96', 'Location 96', '2023-11-18', 1, 'Description 96', 1, 'file96.png'),
(108, 3, 1, 3, 1, 7, 8, 5, 'Organizer 97', 'Location 97', '2023-11-17', 1, 'Description 97', 2, 'file97.png'),
(109, 1, 3, 4, 2, 5, 6, 3, 'Organizer 98', 'Location 98', '2023-11-16', 1, 'Description 98', 1, 'file98.png'),
(110, 4, 1, 3, 1, 2, 7, 5, 'Organizer 99', 'Location 99', '2023-11-15', 1, 'Description 99', 3, 'file99.png'),
(111, 3, 2, 4, 4, 1, 4, 4, 'Organizer 100', 'Location 100', '2023-11-14', 1, 'Description 100', 1, 'file100.png');

-- --------------------------------------------------------

--
-- Table structure for table `award_category`
--

CREATE TABLE `award_category` (
  `award_category_id` int(11) NOT NULL,
  `award_category_name` varchar(255) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `award_category`
--

INSERT INTO `award_category` (`award_category_id`, `award_category_name`) VALUES
(1, 'รางวัลชนะเลิส'),
(6, 'รางวัลชมเชย'),
(2, 'รางวัลรองชนะเลิสอันดับ 1'),
(3, 'รางวัลรองชนะเลิสอันดับ 2'),
(4, 'รางวัลรองชนะเลิสอันดับ 3'),
(5, 'รางวัลรองชนะเลิสอันดับ 4');

-- --------------------------------------------------------

--
-- Table structure for table `award_image`
--

CREATE TABLE `award_image` (
  `award_image_id` int(11) NOT NULL,
  `award_image` varchar(255) COLLATE utf8mb4_thai_520_w2 DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `award_image`
--

INSERT INTO `award_image` (`award_image_id`, `award_image`) VALUES
(1, 'default.png'),
(2, 'image1.png'),
(3, 'image2.png'),
(4, 'image3.png');

-- --------------------------------------------------------

--
-- Table structure for table `award_level`
--

CREATE TABLE `award_level` (
  `award_level_id` int(11) NOT NULL,
  `award_level_name` varchar(255) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `award_level`
--

INSERT INTO `award_level` (`award_level_id`, `award_level_name`) VALUES
(2, 'จังหวัด'),
(4, 'ชาติ'),
(3, 'ภาค'),
(1, 'วิทยาลัย');

-- --------------------------------------------------------

--
-- Table structure for table `award_type`
--

CREATE TABLE `award_type` (
  `award_type_id` int(11) NOT NULL,
  `award_type_name` varchar(255) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `award_type`
--

INSERT INTO `award_type` (`award_type_id`, `award_type_name`) VALUES
(1, 'เข้าร่วม'),
(4, 'ดำเนินงาน'),
(2, 'รางวัล'),
(3, 'โล่รางวัล');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(1, 'ปวช.1'),
(2, 'ปวช.2'),
(3, 'ปวช.3'),
(4, 'ปวส.1'),
(5, 'ปวส.2');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`) VALUES
(8, 'แผนกวิชาการจัดการประชุมและนิทรรศการ'),
(5, 'แผนกวิชาการจัดการโลจิสติกส์'),
(2, 'แผนกวิชาการตลาด'),
(1, 'แผนกวิชาการบัญชี'),
(7, 'แผนกวิชาการโรงแรม'),
(3, 'แผนกวิชาคอมพิวเตอร์ธุรกิจ'),
(9, 'แผนกวิชาเทคโนโลยีสารสนเทศ'),
(6, 'แผนกวิชาธุรกิจค้าปลีก'),
(4, 'แผนกวิชาภาษาต่างประเทศ');

-- --------------------------------------------------------

--
-- Table structure for table `department_skill`
--

CREATE TABLE `department_skill` (
  `department_skill_id` int(11) NOT NULL,
  `skill_Id` int(11) NOT NULL,
  `department_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `skill_id` int(11) NOT NULL,
  `skill_name` varchar(255) COLLATE utf8mb4_thai_520_w2 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`skill_id`, `skill_name`) VALUES
(1, 'ทักษะการเขียนโปรแกรมคอมพิวเตอร์'),
(21, 'ทักษะการเชื่อม SMAW & GTAW'),
(12, 'ทักษะการใช้คอมพิวเตอร์ในงานบัญชี'),
(24, 'ทักษะการพัฒนานวัตกรรมธุรกิจดิจิทัล'),
(17, 'ทักษะเขียนแบบเครื่องกลด้วยคอมพิวเตอร์'),
(14, 'ทักษะความรู้ทางการเงิน'),
(15, 'ทักษะงานกลึงชิ้นงาน'),
(4, 'ทักษะงานเครื่องยนต์เล็กดีเซลและเครื่องยนต์เล็กแก๊สโซลีน'),
(3, 'ทักษะงานจักรยานยนต์'),
(8, 'ทักษะงานจักรยานยนต์ไฟฟ้า'),
(22, 'ทักษะงานตรวจสอบและทดสอบวัสดุงานเชื่อม'),
(5, 'ทักษะงานตัวถังและสีรถยนต์'),
(11, 'ทักษะงานฝึกฝีมือ'),
(6, 'ทักษะงานยานยนต์แก๊สโซลีน'),
(7, 'ทักษะงานยานยนต์ดีเซล'),
(16, 'ทักษะงานวัดละเอียด'),
(9, 'ทักษะช่างอากาศยาน'),
(10, 'ทักษะเทคนิคควบคุมและซ่อมบำรุงระบบขนส่งทางราง'),
(2, 'ทักษะเทคโนโลยีเครือข่าย'),
(13, 'ทักษะโปรแกรมสำเร็จรูปเพื่องานบัญชี'),
(23, 'ทักษะพัฒนาสื่อประชาสัมพันธ์ โมชันกราฟิก'),
(18, 'ทักษะมาตรวิทยามิติ'),
(25, 'ทักษะโลจิสติกส์ (การแก้ปัญหากระบวนการโลจิสติกส์ผ่านแบบจำลองสถานการณ์เบียร์เกมและการตอบปัญหาโลจิสติกส์)'),
(19, 'ทักษะออกแบบและเขียนแบบเครื่องกลด้วยคอมพิวเตอร์'),
(20, 'ทักษะออกแบบและผลิตด้วยโปรแกรมคอมพิวเตอร์ (CAD-CAM)');

-- --------------------------------------------------------

--
-- Table structure for table `student_awards`
--

CREATE TABLE `student_awards` (
  `user_award_id` int(11) NOT NULL,
  `user_Id` int(11) DEFAULT NULL,
  `award_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_awards`
--

CREATE TABLE `teacher_awards` (
  `user_award_id` int(11) NOT NULL,
  `user_Id` int(11) DEFAULT NULL,
  `award_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`) VALUES
(1, 'เกียรติบัตร'),
(3, 'ประกาศนียบัตร'),
(2, 'วุฒิบัตร');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL,
  `level` enum('user','student','teacher','super_user','admin') COLLATE utf8mb4_thai_520_w2 DEFAULT NULL,
  `class_Id` int(11) DEFAULT NULL,
  `department_Id` int(11) DEFAULT NULL,
  `tel` varchar(255) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL,
  `gmail` varchar(255) COLLATE utf8mb4_thai_520_w2 DEFAULT NULL,
  `user_image` varchar(255) COLLATE utf8mb4_thai_520_w2 DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `level`, `class_Id`, `department_Id`, `tel`, `gmail`, `user_image`) VALUES
(1, 'ชิตวร สินศุข', '123', 'student', 2, 9, '0999999999', 'auntonin@gmail.com', 'default.png'),
(2, 'เอกพร ดวงคุณ', '123', 'student', 1, 4, '0883348888', 'gay@gmail.com', 'default.png'),
(3, 'อดิศร กล่องทอง', '123', 'teacher', NULL, 9, '0666666666', 'ads@gmail.com', 'default.png'),
(4, 'พรชัย ตุ่นแก้ว', '123', 'super_user', NULL, 9, '0222222222', 'pornchai@gmail.com', 'default.png'),
(5, 'user', '123', 'user', NULL, NULL, '0111111111', 'sus@gmail.com', 'default.png'),
(6, 'admin', '123', 'admin', NULL, NULL, '0777777777', '321@gmail.com', 'default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`award_id`),
  ADD KEY `award_type_Id` (`award_type_Id`),
  ADD KEY `type_Id` (`type_Id`),
  ADD KEY `award_category_Id` (`award_category_Id`),
  ADD KEY `award_level_Id` (`award_level_Id`),
  ADD KEY `award_image_Id` (`award_image_Id`),
  ADD KEY `department_Id` (`department_Id`),
  ADD KEY `class_Id` (`class_Id`);

--
-- Indexes for table `award_category`
--
ALTER TABLE `award_category`
  ADD PRIMARY KEY (`award_category_id`),
  ADD UNIQUE KEY `award_category_name` (`award_category_name`);

--
-- Indexes for table `award_image`
--
ALTER TABLE `award_image`
  ADD PRIMARY KEY (`award_image_id`);

--
-- Indexes for table `award_level`
--
ALTER TABLE `award_level`
  ADD PRIMARY KEY (`award_level_id`),
  ADD UNIQUE KEY `award_level_name` (`award_level_name`);

--
-- Indexes for table `award_type`
--
ALTER TABLE `award_type`
  ADD PRIMARY KEY (`award_type_id`),
  ADD UNIQUE KEY `award_type_name` (`award_type_name`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`),
  ADD UNIQUE KEY `class_name` (`class_name`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`),
  ADD UNIQUE KEY `department_name` (`department_name`);

--
-- Indexes for table `department_skill`
--
ALTER TABLE `department_skill`
  ADD PRIMARY KEY (`department_skill_id`),
  ADD KEY `skill` (`skill_Id`),
  ADD KEY `department` (`department_Id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`skill_id`),
  ADD UNIQUE KEY `skill_name` (`skill_name`);

--
-- Indexes for table `student_awards`
--
ALTER TABLE `student_awards`
  ADD PRIMARY KEY (`user_award_id`),
  ADD KEY `award_Id` (`award_Id`),
  ADD KEY `user_Id` (`user_Id`);

--
-- Indexes for table `teacher_awards`
--
ALTER TABLE `teacher_awards`
  ADD PRIMARY KEY (`user_award_id`),
  ADD KEY `award_Id` (`award_Id`),
  ADD KEY `user_Id` (`user_Id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`),
  ADD UNIQUE KEY `type_name` (`type_name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD KEY `class_id` (`class_Id`),
  ADD KEY `department_Id` (`department_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `award_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `award_category`
--
ALTER TABLE `award_category`
  MODIFY `award_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `award_image`
--
ALTER TABLE `award_image`
  MODIFY `award_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `award_level`
--
ALTER TABLE `award_level`
  MODIFY `award_level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `award_type`
--
ALTER TABLE `award_type`
  MODIFY `award_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `department_skill`
--
ALTER TABLE `department_skill`
  MODIFY `department_skill_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `student_awards`
--
ALTER TABLE `student_awards`
  MODIFY `user_award_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_awards`
--
ALTER TABLE `teacher_awards`
  MODIFY `user_award_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_ibfk_1` FOREIGN KEY (`award_type_Id`) REFERENCES `award_type` (`award_type_id`),
  ADD CONSTRAINT `awards_ibfk_2` FOREIGN KEY (`type_Id`) REFERENCES `type` (`type_id`),
  ADD CONSTRAINT `awards_ibfk_3` FOREIGN KEY (`award_category_Id`) REFERENCES `award_category` (`award_category_id`),
  ADD CONSTRAINT `awards_ibfk_4` FOREIGN KEY (`award_level_Id`) REFERENCES `award_level` (`award_level_id`),
  ADD CONSTRAINT `awards_ibfk_5` FOREIGN KEY (`award_image_Id`) REFERENCES `award_image` (`award_image_id`),
  ADD CONSTRAINT `awards_ibfk_6` FOREIGN KEY (`department_Id`) REFERENCES `department` (`department_id`),
  ADD CONSTRAINT `awards_ibfk_7` FOREIGN KEY (`class_Id`) REFERENCES `class` (`class_id`);

--
-- Constraints for table `department_skill`
--
ALTER TABLE `department_skill`
  ADD CONSTRAINT `department` FOREIGN KEY (`department_Id`) REFERENCES `department` (`department_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `skill` FOREIGN KEY (`skill_Id`) REFERENCES `skill` (`skill_id`) ON UPDATE CASCADE;

--
-- Constraints for table `student_awards`
--
ALTER TABLE `student_awards`
  ADD CONSTRAINT `student_awards_ibfk_1` FOREIGN KEY (`award_Id`) REFERENCES `awards` (`award_Id`),
  ADD CONSTRAINT `student_awards_ibfk_2` FOREIGN KEY (`user_Id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `teacher_awards`
--
ALTER TABLE `teacher_awards`
  ADD CONSTRAINT `teacher_awards_ibfk_1` FOREIGN KEY (`award_Id`) REFERENCES `awards` (`award_Id`),
  ADD CONSTRAINT `teacher_awards_ibfk_2` FOREIGN KEY (`user_Id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`department_Id`) REFERENCES `department` (`department_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
