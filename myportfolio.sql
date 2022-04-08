-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2022 at 01:55 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myportfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_subtitle` text NOT NULL,
  `profile_pic` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `about_title`, `about_subtitle`, `profile_pic`, `about_desc`) VALUES
(1, 'PHP Developer', 'My career choices, abilities, and skills stem from my childhood hobbies which include computer science, public speaking, writing, and exploring.', '1649347640me.jpeg', 'I have a thirst for knowledge and a desire to learn. I like solving problems and trying to excel in everything I do. I\'ve been led by my curiosity to know more about engrossing things in this world. I carry my high-spirited nature in everyday life.\r\n\r\nI\'m grateful to everyone who helped me shape myself into who I am today. I look forward to solving many more challenges that come my way with my strengths and temperament.');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `admin_profile` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullname`, `admin_profile`, `email`, `password`) VALUES
(1, 'Suman Moond', '1649415554me.jpeg', 'sumanmoond2021@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `address`, `email`, `mobile`) VALUES
(1, 'Jaipur, Rajasthan', 'admin@myportfolio.com', '7814403719');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `showicons` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `title`, `subtitle`, `showicons`) VALUES
(1, 'Suman Moond', 'I\'m a passionate PHP developer from India', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE `personal_info` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`id`, `label`, `value`) VALUES
(4, 'Website', 'www.sumanmoond.com'),
(6, 'Phone', '7814403719'),
(7, 'City', 'Jaipur, Rajasthan'),
(8, 'Degree', 'B.Tech'),
(9, 'Email', 'sumanmoond2021@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `project_pic` text NOT NULL,
  `project_type` varchar(255) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `project_pic`, `project_type`, `project_name`, `project_link`) VALUES
(5, '1649348415portfolio.jpg', 'WEBSITE', 'E-Commerce Website', 'https://github.com/suman0771/ecommerce-laravel'),
(6, '1649348843portfolio-2.jpg', 'WEBSITE', 'EXPENSE TRACKER', 'https://github.com/suman0771/Expense-tracker'),
(7, '1649348901portfolio-1.jpg', 'WEBSITE', 'FOOD ORDERING WEBSITE', 'https://suman0771.github.io/Food-OderingSite/');

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `org` varchar(255) NOT NULL,
  `about_exp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` (`id`, `type`, `title`, `time`, `org`, `about_exp`) VALUES
(1, 'e', 'BACHELOR OF TECHNOLOGY: COMPUTER SCIENCE AND ENGINEERING', '2019 - 2023', 'Lovely Professional University', 'LPU is popular for its excellence in teaching and the infrastructure facilities the university possesses. LPU Admission is much sought-after because of the quality of education and fame of the college. The University has its own entrance exam, LPU NEST, as an eligibility criterion for some of the courses offered. LPU courses are offered at various levels like diploma, undergraduate, postgraduate, and doctoral levels.'),
(2, 'e', 'GRADUATED HIGH SCHOOL WITH CBSE CURRICULUM', '2017 - 2019', 'DELHI PUBLIC SCHOOL - Bikaner', 'The school molds the capabilities of the students by providing them with superior guidance. The school also has sporting facilities, a cafeteria, a library, etc. Educational trips are also organized regularly. The students are kept under CCTV Surveillance 24*7 to ensure their safety.'),
(3, 'p', 'Data structure and Algorithms', '2020-Present', 'Lovely Professional University', 'Data Structures and Algorithms are among the few core concepts in Computer Science. Understanding them is the key to a better understanding of computation and programming. DSA goes through solutions to standard problems in detail and gives you an insight into how efficient it is to use each one of them. ');

-- --------------------------------------------------------

--
-- Table structure for table `section_control`
--

CREATE TABLE `section_control` (
  `id` int(11) NOT NULL,
  `home_section` varchar(11) NOT NULL,
  `about_section` varchar(11) NOT NULL,
  `resume_section` varchar(11) NOT NULL,
  `portfolio_section` varchar(11) NOT NULL,
  `contact_section` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section_control`
--

INSERT INTO `section_control` (`id`, `home_section`, `about_section`, `resume_section`, `portfolio_section`, `contact_section`) VALUES
(1, 'on', 'on', 'on', 'on', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `page_title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `siteicon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `page_title`, `keywords`, `description`, `siteicon`) VALUES
(1, 'Suman Moond', 'PHP Developer', 'I\'m a passionate PHP developer from India', '1649349234home.png');

-- --------------------------------------------------------

--
-- Table structure for table `site_background`
--

CREATE TABLE `site_background` (
  `id` int(11) NOT NULL,
  `background_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `site_background`
--

INSERT INTO `site_background` (`id`, `background_img`) VALUES
(1, '164934896316493466631649346640bg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL,
  `skill_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_name`, `skill_level`) VALUES
(7, 'Communication', 76),
(8, 'Problem-solving', 84),
(10, 'Critical thinking', 91),
(11, 'Project Management', 100),
(12, 'Self-motivated professional', 88);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `twitter`, `facebook`, `instagram`, `skype`, `linkedin`) VALUES
(1, '', 'new f', 'sumany_01', 'new s', 'sumanmoond');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_control`
--
ALTER TABLE `section_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_background`
--
ALTER TABLE `site_background`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_info`
--
ALTER TABLE `personal_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `resume`
--
ALTER TABLE `resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `section_control`
--
ALTER TABLE `section_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_background`
--
ALTER TABLE `site_background`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
