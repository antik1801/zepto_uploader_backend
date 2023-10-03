-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 11:24 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dragdrop`
--

-- --------------------------------------------------------

--
-- Table structure for table `fonts`
--

CREATE TABLE `fonts` (
  `id` int(11) NOT NULL,
  `fontUrl` varchar(200) NOT NULL,
  `fontName` varchar(50) NOT NULL,
  `upload_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fonts`
--

INSERT INTO `fonts` (`id`, `fontUrl`, `fontName`, `upload_at`) VALUES
(5, 'Raleway-Bold.ttf', 'Raleway-Bold', '2023-08-31 00:00:00'),
(13, 'Raleway-Italic.ttf', 'Raleway-Italic', '2023-08-31 00:00:00'),
(19, 'Raleway-MediumItalic.ttf', 'Raleway-MediumItalic', '2023-08-31 00:00:00'),
(21, 'Roboto-Medium.ttf', 'Roboto-Medium', '2023-08-31 00:00:00'),
(51, 'Raleway-Light.ttf', 'Raleway-Light', '2023-09-07 00:00:00'),
(56, 'Roboto-ThinItalic.ttf', 'Roboto-ThinItalic', '2023-09-08 00:00:00'),
(57, 'Roboto-ThinItalic.ttf', 'Roboto-ThinItalic', '2023-09-08 00:00:00'),
(58, 'Roboto-Thin.ttf', 'Roboto-Thin', '2023-09-08 00:00:00'),
(59, 'Roboto-Regular.ttf', 'Roboto-Regular', '2023-09-08 00:00:00'),
(60, 'Roboto-MediumItalic.ttf', 'Roboto-MediumItalic', '2023-09-08 00:00:00'),
(61, 'Raleway-Thin.ttf', 'Raleway-Thin', '2023-09-08 00:00:00'),
(62, 'Raleway-SemiBoldItalic.ttf', 'Raleway-SemiBoldItalic', '2023-09-08 00:00:00'),
(63, 'Raleway-Regular.ttf', 'Raleway-Regular', '2023-09-08 00:00:00'),
(64, 'Raleway-ExtraLightItalic.ttf', 'Raleway-ExtraLightItalic', '2023-09-08 00:00:00'),
(65, 'Raleway-Medium.ttf', 'Raleway-Medium', '2023-09-08 00:00:00'),
(66, 'Raleway-BoldItalic.ttf', 'Raleway-BoldItalic', '2023-09-10 00:00:00'),
(67, 'Raleway-ExtraBold.ttf', 'Raleway-ExtraBold', '2023-09-10 00:00:00'),
(68, 'Raleway-ExtraBold.ttf', 'Raleway-ExtraBold', '2023-09-10 00:00:00'),
(73, 'Raleway-BlackItalic.ttf', 'Raleway-BlackItalic', '2023-09-11 00:00:00'),
(76, 'PFAgoraSlabPro Bold.ttf', 'PFAgoraSlabPro Bold', '2023-09-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `groupname`
--

CREATE TABLE `groupname` (
  `id` int(11) NOT NULL,
  `groupName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groupname`
--

INSERT INTO `groupname` (`id`, `groupName`) VALUES
(7, 'charm'),
(13, 'dddd'),
(14, 'Group-4'),
(15, 'Group-5'),
(16, 'group6'),
(19, 'Group-7');

-- --------------------------------------------------------

--
-- Table structure for table `selectedfonts`
--

CREATE TABLE `selectedfonts` (
  `id` int(11) NOT NULL,
  `fontUrl` varchar(200) NOT NULL,
  `fontName` varchar(50) NOT NULL,
  `upload_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL,
  `fontId` int(10) DEFAULT NULL,
  `groupName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `selectedfonts`
--

INSERT INTO `selectedfonts` (`id`, `fontUrl`, `fontName`, `upload_at`, `status`, `fontId`, `groupName`) VALUES
(208, 'PFAgoraSlabPro Bold.ttf', 'PFAgoraSlabPro Bold', '2023-09-07 00:00:00', 'Selected', 39, 'Group-4'),
(210, 'RobotoCondensed-Italic.ttf', 'RobotoCondensed-Italic', '2023-09-10 00:00:00', 'Selected', 52, 'Group-5'),
(218, 'Roboto-Medium.ttf', 'Roboto-Medium', '2023-09-10 00:00:00', 'Selected', 21, 'charm'),
(220, 'Raleway-ExtraBold.ttf', 'Raleway-ExtraBold', '2023-09-10 00:00:00', 'Selected', 67, 'Group-5'),
(222, 'Raleway-MediumItalic.ttf', 'Raleway-MediumItalic', '2023-09-10 00:00:00', 'Selected', 19, 'Group-7'),
(223, 'Raleway-Bold.ttf', 'Raleway-Bold', '2023-09-10 00:00:00', 'Selected', 5, 'Group-7'),
(224, 'Raleway-Italic.ttf', 'Raleway-Italic', '2023-09-10 00:00:00', 'Selected', 13, 'Group-7'),
(225, 'Raleway-Light.ttf', 'Raleway-Light', '2023-09-10 00:00:00', 'Selected', 51, 'Group-4'),
(226, 'Roboto-ThinItalic.ttf', 'Roboto-ThinItalic', '2023-09-10 00:00:00', 'Selected', 56, 'Group-4'),
(227, 'Roboto-Regular.ttf', 'Roboto-Regular', '2023-09-10 00:00:00', 'Selected', 59, 'Group-4'),
(228, 'Raleway-ExtraLightItalic.ttf', 'Raleway-ExtraLightItalic', '2023-09-10 00:00:00', 'Selected', 64, 'Group-5'),
(229, 'Raleway-Thin.ttf', 'Raleway-Thin', '2023-09-10 00:00:00', 'Selected', 61, 'Group-5'),
(230, 'Raleway-BoldItalic.ttf', 'Raleway-BoldItalic', '2023-09-10 00:00:00', 'Selected', 66, 'Group-5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fonts`
--
ALTER TABLE `fonts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groupname`
--
ALTER TABLE `groupname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selectedfonts`
--
ALTER TABLE `selectedfonts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fonts`
--
ALTER TABLE `fonts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `groupname`
--
ALTER TABLE `groupname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `selectedfonts`
--
ALTER TABLE `selectedfonts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
