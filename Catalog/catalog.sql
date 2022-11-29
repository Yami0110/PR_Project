-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 08:15 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catalog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(75) NOT NULL,
  `message` text NOT NULL,
  `subject_id` int(11) NOT NULL,
  `get_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`, `subject_id`, `get_date`) VALUES
(12, 'Milan Velky', 'mvelky@ukf.sk', 'Ahooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooj!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 1, '2022-11-28 21:53:19'),
(13, 'Maria Cervena', 'mcervena@ukf.sk', 'Quisque eleifend mi et nisi eleifend pretium. Duis porttitor accumsan arcu id rhoncus. Praesent fermentum venenatis ipsum, eget vestibulum purus.\r\n\r\nNulla ut scelerisque elit, in fermentum ante. Aliquam congue mattis erat, eget iaculis enim posuere nec. Quisque risus turpis, tempus in iaculis.', 2, '2022-11-28 21:53:40'),
(14, 'Janko Hruska', 'jhruska@ukf.sk', 'Bye', 3, '2022-11-28 21:53:55');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `position` varchar(75) NOT NULL,
  `about` text NOT NULL,
  `image_link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`id`, `name`, `surname`, `position`, `about`, `image_link`) VALUES
(1, 'Ryan', 'White', 'Chief Executive Officer', 'Mauris ante tellus, feugiat nec metus non, bibendum semper velit. Praesent laoreet urna id tristique fermentum. Morbi venenatis dui quis diam mollis pellentesque.', 'img/people-1.jpg'),
(2, 'Catherine', 'Pinky', 'Chief Marketing Officer', 'Sed faucibus nec velit finibus accumsan. Sed varius augue et leo pharetra, in varius lacus eleifend. Quisque ut eleifend lacus.', 'img/people-2.jpg'),
(3, 'Johnny', 'Brief', 'Accounting Executive', 'Sed faucibus nec velit finibus accumsan. Sed varius augue et leo pharetra, in varius lacus eleifend. Quisque ut eleifend lacus.', 'img/people-3.jpg'),
(4, 'George', 'Nelson', 'Creative Art Director #C69', 'Nunc convallis facilisis congue. Curabitur gravida rutrum justo sed pulvinar. Pellentesque ac ante in erat bibendum dignissim.', 'img/people-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `image_link` text NOT NULL,
  `display_name` varchar(75) NOT NULL,
  `sys_name` varchar(75) NOT NULL,
  `views` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `video_link` text DEFAULT NULL,
  `dimension` varchar(20) NOT NULL,
  `format` varchar(10) NOT NULL,
  `duration` varchar(10) DEFAULT NULL,
  `type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `image_link`, `display_name`, `sys_name`, `views`, `created_at`, `updated_at`, `video_link`, `dimension`, `format`, `duration`, `type_id`) VALUES
(60, 'img/img-03.jpg', 'Clocks', 'clocks', 9906, '2022-11-28 22:05:32', '2022-11-28 22:05:32', 'NULL', '1920x1080', 'JPG', '', 2),
(61, 'img/img-04.jpg', 'Plants', 'plants', 16100, '2022-11-28 22:05:59', '2022-11-28 22:05:59', 'NULL', '1920x1080', 'JPG', '', 2),
(62, 'img/img-05.jpg', 'Morning', 'morning', 12460, '2022-11-28 22:06:20', '2022-11-28 22:06:20', 'NULL', '1920x1080', 'JPG', '', 2),
(63, 'img/img-06.jpg', 'Pinky', 'pinky', 11402, '2022-11-28 22:06:42', '2022-11-28 22:06:42', 'NULL', '1920x1080', 'JPG', '', 2),
(64, 'img/img-01.jpg', 'Hangers', 'hangers', 16008, '2022-11-28 22:07:00', '2022-11-28 22:07:00', 'NULL', '1920x1080', 'JPG', '', 2),
(65, 'img/img-02.jpg', 'Perfumes', 'perfumes', 12860, '2022-11-28 22:07:24', '2022-11-28 22:07:24', 'NULL', '1920x1080', 'JPG', '', 2),
(66, 'img/img-07.jpg', 'Bus', 'bus', 10900, '2022-11-28 22:07:46', '2022-11-28 22:07:46', 'NULL', '1920x1080', 'JPG', '', 2),
(67, 'img/img-08.jpg', 'New York', 'new_york', 11300, '2022-11-28 22:08:12', '2022-11-28 22:08:12', 'NULL', '1920x1080', 'JPG', '', 2),
(68, 'img/img-09.jpg', 'Abstract', 'abstract', 42700, '2022-11-28 22:08:35', '2022-11-28 22:08:35', 'NULL', '1920x1080', 'JPG', '', 2),
(69, 'img/img-10.jpg', 'Flowers', 'flowers', 11402, '2022-11-28 22:08:55', '2022-11-28 22:08:55', 'NULL', '1920x1080', 'JPG', '', 2),
(70, 'img/img-11.jpg', 'Rosy', 'rosy', 32906, '2022-11-28 22:09:13', '2022-11-28 22:09:13', 'NULL', '1920x1080', 'JPG', '', 2),
(71, 'img/img-12.jpg', 'Rocki', 'rocki', 50700, '2022-11-28 22:09:33', '2022-11-28 22:09:33', 'NULL', '1920x1080', 'JPG', '', 2),
(72, 'img/img-13.jpg', 'Purple', 'purple', 107510, '2022-11-28 22:09:58', '2022-11-28 22:09:58', 'NULL', '1920x1080', 'JPG', '', 2),
(73, 'img/img-14.jpg', 'Sea', 'sea', 118006, '2022-11-28 22:10:15', '2022-11-28 22:10:15', 'NULL', '1920x1080', 'JPG', '', 2),
(74, 'img/img-15.jpg', 'Turtle', 'turtle', 121300, '2022-11-28 22:10:35', '2022-11-28 22:10:35', 'NULL', '1920x1080', 'JPG', '', 2),
(75, 'img/img-16.jpg', 'Peace', 'peace', 21004, '2022-11-28 22:10:58', '2022-11-28 22:10:58', 'NULL', '1920x1080', 'JPG', '', 2),
(76, 'img/img-01.jpg', 'Hangers', 'hangers', 10460, '2022-11-28 22:14:20', '2022-11-28 22:14:20', 'video/hero.mp4', '1920x1080', 'MP4', '00:00:20', 1),
(77, 'img/img-02.jpg', 'Perfumes', 'perfumes', 14502, '2022-11-28 22:15:18', '2022-11-28 22:15:18', 'video/hero.mp4', '1920x1080', 'MP4', '00:00:20', 1),
(78, 'img/img-03.jpg', 'Clocks', 'clocks', 11906, '2022-11-28 22:15:46', '2022-11-28 22:15:46', 'video/hero.mp4', '1920x1080', 'MP4', '00:00:20', 1),
(79, 'img/img-04.jpg', 'Plants', 'plants', 16100, '2022-11-28 22:16:09', '2022-11-28 22:16:09', 'video/hero.mp4', '1920x1080', 'MP4', '00:00:20', 1),
(80, 'img/img-05.jpg', 'Morning', 'morning', 16008, '2022-11-28 22:17:45', '2022-11-28 22:17:45', 'video/hero.mp4', '1920x1080', 'MP4', '00:00:20', 1),
(81, 'img/img-06.jpg', 'Pinky', 'pinky', 12860, '2022-11-28 22:18:08', '2022-11-28 22:18:08', 'video/hero.mp4', '1920x1080', 'MP4', '00:00:20', 1),
(82, 'img/img-07.jpg', 'Bus', 'bus', 10900, '2022-11-28 22:18:37', '2022-11-28 22:18:37', 'video/hero.mp4', '1920x1080', 'MP4', '00:00:20', 1),
(83, 'img/img-08.jpg', 'New York', 'new_york', 10820, '2022-11-28 22:19:11', '2022-11-28 22:19:11', 'video/hero.mp4', '1920x1080', 'MP4', '00:00:20', 1),
(84, 'img/img-09.jpg', 'Abstract', 'abstract', 42700, '2022-11-28 22:19:34', '2022-11-28 22:19:34', 'video/hero.mp4', '1920x1080', 'MP4', '00:00:20', 1),
(85, 'img/img-10.jpg', 'Flowers', 'flowers', 11402, '2022-11-28 22:19:56', '2022-11-28 22:19:56', 'video/hero.mp4', '1920x1080', 'MP4', '00:00:20', 1),
(86, 'img/img-11.jpg', 'Rosy', 'rosy', 32906, '2022-11-28 22:20:19', '2022-11-28 22:20:19', 'video/hero.mp4', '1920x1080', 'MP4', '00:00:20', 1),
(87, 'img/img-12.jpg', 'Rocki', 'rocki', 50700, '2022-11-28 22:20:41', '2022-11-28 22:20:41', 'video/hero.mp4', '1920x1080', 'MP4', '00:00:20', 1),
(88, 'img/img-13.jpg', 'Purple', 'purple', 107510, '2022-11-28 22:21:08', '2022-11-28 22:21:08', 'video/hero.mp4', '1920x1080', 'MP4', '00:00:20', 1),
(89, 'img/img-14.jpg', 'Sea', 'sea', 118006, '2022-11-28 22:21:29', '2022-11-28 22:21:29', 'video/hero.mp4', '1920x1080', 'MP4', '00:00:20', 1),
(90, 'img/img-15.jpg', 'Turtle', 'turtle', 121300, '2022-11-28 22:21:53', '2022-11-28 22:21:53', 'video/hero.mp4', '1920x1080', 'MP4', '00:00:20', 1),
(91, 'img/img-16.jpg', 'Peace', 'peace', 21204, '2022-11-28 22:22:13', '2022-11-28 22:22:13', 'video/hero.mp4', '1920x1080', 'MP4', '00:00:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sns`
--

CREATE TABLE `sns` (
  `id` int(11) NOT NULL,
  `sns` varchar(45) NOT NULL,
  `icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sns`
--

INSERT INTO `sns` (`id`, `sns`, `icon`) VALUES
(1, 'Facebook', 'fab fa-facebook'),
(2, 'Twitter', 'fab fa-twitter'),
(3, 'LinkedIn', 'fab fa-linkedin');

-- --------------------------------------------------------

--
-- Table structure for table `sns_has_employer`
--

CREATE TABLE `sns_has_employer` (
  `sns_id` int(11) NOT NULL,
  `employer_id` int(11) NOT NULL,
  `sns_link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sns_has_employer`
--

INSERT INTO `sns_has_employer` (`sns_id`, `employer_id`, `sns_link`) VALUES
(1, 1, 'https://facebook.com'),
(1, 2, 'https://facebook.com'),
(1, 3, 'https://facebook.com'),
(1, 4, 'https://facebook.com'),
(2, 1, 'https://twitter.com'),
(2, 2, 'https://twitter.com'),
(2, 3, 'https://twitter.com'),
(2, 4, 'https://twitter.com'),
(3, 1, 'https://linkedin.com'),
(3, 2, 'https://linkedin.com'),
(3, 3, 'https://linkedin.com'),
(3, 4, 'https://linkedin.com');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `value` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subject`, `value`) VALUES
(1, 'Sales & Marketing', 'sales'),
(2, 'Creative Design', 'creative'),
(3, 'UI / UX', 'uiux');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `tag` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `tag`) VALUES
(1, 'Cloud'),
(2, 'Bluesky'),
(3, 'Nature'),
(4, 'Background'),
(5, 'Timelapse'),
(6, 'Night'),
(7, 'Real Estate');

-- --------------------------------------------------------

--
-- Table structure for table `tag_has_media`
--

CREATE TABLE `tag_has_media` (
  `tag_id` int(11) NOT NULL,
  `media_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tag_has_media`
--

INSERT INTO `tag_has_media` (`tag_id`, `media_id`) VALUES
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 67),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 89),
(1, 90),
(1, 91),
(2, 60),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(2, 67),
(2, 69),
(2, 70),
(2, 71),
(2, 72),
(2, 74),
(2, 75),
(2, 76),
(2, 77),
(2, 78),
(2, 79),
(2, 80),
(2, 81),
(2, 82),
(2, 83),
(2, 84),
(2, 85),
(2, 86),
(2, 87),
(2, 88),
(2, 89),
(2, 90),
(2, 91),
(3, 60),
(3, 61),
(3, 62),
(3, 63),
(3, 64),
(3, 67),
(3, 68),
(3, 70),
(3, 71),
(3, 72),
(3, 74),
(3, 75),
(3, 76),
(3, 77),
(3, 78),
(3, 79),
(3, 80),
(3, 81),
(3, 82),
(3, 83),
(3, 84),
(3, 85),
(3, 86),
(3, 87),
(3, 88),
(3, 89),
(3, 90),
(3, 91),
(4, 60),
(4, 61),
(4, 62),
(4, 63),
(4, 64),
(4, 67),
(4, 68),
(4, 70),
(4, 71),
(4, 72),
(4, 73),
(4, 75),
(4, 76),
(4, 77),
(4, 78),
(4, 79),
(4, 80),
(4, 81),
(4, 82),
(4, 83),
(4, 84),
(4, 85),
(4, 86),
(4, 87),
(4, 88),
(4, 89),
(4, 90),
(4, 91),
(5, 60),
(5, 61),
(5, 62),
(5, 63),
(5, 65),
(5, 68),
(5, 70),
(5, 71),
(5, 73),
(5, 75),
(5, 76),
(5, 77),
(5, 78),
(5, 79),
(5, 80),
(5, 81),
(5, 82),
(5, 83),
(5, 84),
(5, 85),
(5, 86),
(5, 87),
(5, 88),
(5, 89),
(5, 90),
(5, 91),
(6, 60),
(6, 61),
(6, 62),
(6, 63),
(6, 65),
(6, 66),
(6, 70),
(6, 71),
(6, 73),
(6, 75),
(6, 76),
(6, 77),
(6, 78),
(6, 79),
(6, 80),
(6, 81),
(6, 82),
(6, 83),
(6, 84),
(6, 85),
(6, 86),
(6, 87),
(6, 88),
(6, 89),
(6, 90),
(6, 91),
(7, 60),
(7, 61),
(7, 62),
(7, 63),
(7, 66);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `type`) VALUES
(1, 'video'),
(2, 'photo');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_contact_subject1_idx` (`subject_id`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_media_type1_idx` (`type_id`);

--
-- Indexes for table `sns`
--
ALTER TABLE `sns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sns_has_employer`
--
ALTER TABLE `sns_has_employer`
  ADD PRIMARY KEY (`sns_id`,`employer_id`),
  ADD KEY `fk_sns_has_employer_employer1_idx` (`employer_id`),
  ADD KEY `fk_sns_has_employer_sns1_idx` (`sns_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_has_media`
--
ALTER TABLE `tag_has_media`
  ADD PRIMARY KEY (`tag_id`,`media_id`),
  ADD KEY `fk_tag_has_media_media1_idx` (`media_id`),
  ADD KEY `fk_tag_has_media_tag1_idx` (`tag_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `sns`
--
ALTER TABLE `sns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
