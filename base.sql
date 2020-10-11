-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2020 at 05:47 PM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scheduler`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) unsigned NOT NULL,
  `kid` varchar(255) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `country_code` int(4) NOT NULL,
  `mobile` int(10) NOT NULL,
  `password` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '0',
  `role` enum('Owner','Administrator','Manager','Seller') NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `reset_token` varchar(255) DEFAULT NULL,
  `otp` int(4) DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `kid`, `firstname`, `lastname`, `email`, `country_code`, `mobile`, `password`, `ip`, `role`, `status`, `reset_token`, `otp`, `reset_expires`, `date_added`) VALUES
(1, 'c45c83deeb77e75311b188155d2c96c7b510f6475a8f778d6bb5a928aad61142', 'admin', 'ali', 'a@a.com', 966, 503925556, '$2b$10$76fJKJulMS7R.SukpTM.2euPTWthkhQriaRPECqcD4iQVckffw5w.', '::1', 'Owner', 1, NULL, 7365, NULL, '2020-08-20 13:59:51'),
(2, '626aeb72c4af9212885075a1bcc721c545321e889fbba4556e2316e074bcd5dc', 'Eng.Raoof', 'الدبيل', 'ali.aldabil@gmail.com', 966, 507487620, '$2b$10$QKPxUtyPEH2rhTmVeLuK3ekoUlul9bnpuWnPgtap.KrGB2TvlXiBi', '0', 'Owner', 1, 'bff788370b59d27f9a97668d9fa7c0caa68a8a952c53cfe9f6dc4185b60cbb83', NULL, '2020-09-24 19:41:38', '2020-09-20 00:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `language_id` int(11) NOT NULL,
  `language` varchar(32) NOT NULL,
  `code` varchar(2) NOT NULL,
  `text` text,
  `is_primary` int(1) unsigned NOT NULL,
  `status` int(1) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `language`, `code`, `text`, `is_primary`, `status`) VALUES
(1, 'عربي', 'ar', NULL, 1, 1),
(2, 'English', 'en', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `setting_id` int(11) unsigned NOT NULL,
  `code` varchar(128) NOT NULL,
  `key_id` varchar(128) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `code`, `key_id`, `value`) VALUES
(1, 'config', 'site_name', 'توليب 1.0.0'),
(2, 'config', 'site_logo', 'uploads/45406836_220468155509019_8949296751924215808_n_20200923125910.jpg'),
(3, 'config', 'email_host', 'mail.mail.sa'),
(4, 'config', 'email_port', '465'),
(5, 'config', 'email_user', 'dev@mail.sa'),
(6, 'config', 'email_password', 'MAILPASS'),
(7, 'config', 'google_api', 'GOOGLEAPI');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) unsigned NOT NULL,
  `kid` varchar(255) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `country_code` int(4) NOT NULL,
  `mobile` int(10) NOT NULL,
  `password` varchar(64) NOT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `reset_token` varchar(255) DEFAULT NULL,
  `otp` int(4) DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`,`kid`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`,`language`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`,`kid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
