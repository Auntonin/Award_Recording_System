-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2024 at 03:19 PM
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
-- Database: `ars`
--

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
  MODIFY `award_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `award_category`
--
ALTER TABLE `award_category`
  MODIFY `award_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `award_image`
--
ALTER TABLE `award_image`
  MODIFY `award_image_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `skill_id` int(11) NOT NULL AUTO_INCREMENT;

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
