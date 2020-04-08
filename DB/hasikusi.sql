-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 08, 2020 at 08:38 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hasikusi`
--

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `score` int(11) NOT NULL,
  `remark` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `score`, `remark`) VALUES
(1, 'টিফিন পিরিয়ডে স্কুল পালায়ছেন ?', 3, NULL),
(2, 'পরীক্ষায় খারাপ রেজাল্ট করায় রেজাল্ট কার্ডে গার্ডিয়ানের সিগনেচার নকল করেছেন ?', 4, NULL),
(3, 'প্রাইভেট স্যারের বেতন মেরে দিয়েছেন ?', 2, NULL),
(4, 'পরীক্ষায় নকল করতে গিয়ে ধরা খেয়েছেন ?', 4, NULL),
(5, 'পরীক্ষায় নকল করেছেন ?', 3, NULL),
(6, 'টয়লেটের দেয়ালে শিল্প প্রতিভার বিকাশ ঘটিয়েছেন ?', 2, NULL),
(7, 'বন্ধুর ব্যাগ দিয়ে বেঞ্চ পরিষ্কার করেছেন ?', 2, NULL),
(8, 'প্র‍্যাকটিক্যাল করিয়ে নেয়ার জন্য ক্লাসমেটের সাথে প্রেমের অভিনয় করেছেন ?', 4, NULL),
(9, 'স্কুল ফাঁকি দিয়ে মাঠে খেলতে গেছেন ?', 3, NULL),
(10, 'নোট ফটোকপির নাম করে বাসা থেকে টাকা নিয়ে খেয়ে ফেলেছেন ?', 2, NULL),
(11, 'আব্বুর ওয়ালেট থেকে টাকা চুরি করেছেন ?', 3, NULL),
(12, 'চুরি করে হরলিক্স/গুঁড়ো দুধ খেয়েছেন ?', 2, NULL),
(13, 'বাসায় মেহমান আসলে শেষ পর্যন্ত অপেক্ষা করতেন কখন চলে যাওয়ার সময় টাকা দিয়ে যাবে ?', 4, NULL),
(14, 'অন্যের গাছের ফল চুরি করে খেয়েছেন ?', 4, NULL),
(15, 'পছন্দের খেলনা কিনে না দেয়ায় দোকানের মেঝেতে নাগিন ডান্স দিয়েছেন ?', 5, NULL),
(16, 'কৌতূহলে অন্যের ফেলে দেয়া সিগারেট টেনেছেন ?', 4, NULL),
(17, 'বন্ধু/বান্ধবীদের গার্লফ্রেন্ড/বয়ফ্রেন্ডের নাম ধরে ডেকে টিজ করেছেন ?', 3, NULL),
(18, 'দাওয়াত ছাড়া বিয়ে খেতে গেছেন ?', 4, NULL),
(19, 'পুকুরে গোসল করতে মেনে মূত্র বিসর্জন করেছেন ?', 3, NULL),
(20, 'কাজিনের বাসর রাতে দরজায় কান পেতে সারারাত জেগে ছিলেন ?', 4, NULL),
(21, 'কনডমকে বেলুন মনে করে ফুলিয়েছেন ?', 3, NULL),
(22, 'মুসলমানির সময় ডাক্তার/হাজামকে গালি দিয়েছেন ?', 3, NULL),
(23, ' আম্মু ঘুমানোর পর চুরি করে মাঠে খেলতে গেছেন ?', 3, NULL),
(24, 'লুকিয়ে লুকিয়ে আশিক বানায়া দেখতে গিয়ে বাপের কাছে ধরা খাইছেন ?', 4, NULL),
(25, 'স্কুল জীবনে পর্ণ দেখেছেন ?', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `minimum_score` int(11) NOT NULL,
  `maximum_score` int(11) NOT NULL,
  `statement` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `minimum_score`, `maximum_score`, `statement`) VALUES
(1, 1, 20, 'আপনি হইলেন ফার্মের মুরগী।\r\n'),
(2, 21, 40, 'আপনি তো দেখছি ডুবে ডুবে পানি খান? বাড়িতে কি জানে?'),
(3, 41, 55, 'আপনি তো ভদ্র পাপী। ভদ্র ও থাকতে ইচ্ছা করে আবার উল্টাপাল্টা কাজ ও করেন।\r\n'),
(4, 56, 65, 'আমি কি আপনাকে গালি দিয়েছি? দিয়ে থাকলে মাপ করে দিয়েন। আপনি তো মহামানব। '),
(5, 66, 75, 'ঈশ একটুর জন্য নোবেল টা পাইলেন না।'),
(6, 76, 100, 'আপনি তো মহাপাপী। যা করছেন জীবনে তার জন্য আপনি নিজে নিজেকে মাফ করতে পারবেন তো?');

-- --------------------------------------------------------

--
-- Table structure for table `user_score`
--

CREATE TABLE `user_score` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `score` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `note` int(11) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_score`
--
ALTER TABLE `user_score`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_score`
--
ALTER TABLE `user_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
