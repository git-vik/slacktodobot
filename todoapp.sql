-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2017 at 01:59 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todoapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `channel_id` int(11) NOT NULL,
  `channel_team` int(11) NOT NULL,
  `channel_public_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `channel_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channels`
--

INSERT INTO `channels` (`channel_id`, `channel_team`, `channel_public_id`, `channel_name`) VALUES
(1, 1, 'C4728HJBU', 'general');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('iortog1ec5q5e02ufs5jn4lggf1k7u7l', '47.247.14.47', 1504732493, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343733323336313b706f73747c613a303a7b7d),
('fclbd0pja58paqbnu18u2mf42eui1ku1', '54.161.187.202', 1504732394, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343733323339343b706f73747c613a31313a7b733a353a22746f6b656e223b733a32343a22454e4b654d737974697869484e6e377a4f33376b57304e39223b733a373a227465616d5f6964223b733a393a22543437344b4b544c34223b733a31313a227465616d5f646f6d61696e223b733a31333a22637572696f7573636f64657273223b733a31303a226368616e6e656c5f6964223b733a393a224334373238484a4255223b733a31323a226368616e6e656c5f6e616d65223b733a373a2267656e6572616c223b733a373a22757365725f6964223b733a393a22553437303752314b4d223b733a393a22757365725f6e616d65223b733a363a22766b67303931223b733a373a22636f6d6d616e64223b733a31303a222f6c697374746f646f73223b733a343a2274657874223b733a353a2268656c6c6f223b733a31323a22726573706f6e73655f75726c223b733a38303a2268747470733a2f2f686f6f6b732e736c61636b2e636f6d2f636f6d6d616e64732f543437344b4b544c342f3233373235373935393037342f61696841357372675473416a346775364466696133706963223b733a31303a22747269676765725f6964223b733a35383a223233363630373837333434302e3134333135353637333638342e6230313339663938653733646436616334323435363835363735653662346239223b7d),
('li7dq9aedrso8k3p6nrgf21405v9j99e', '47.247.14.47', 1504733498, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343733333439383b),
('lkso8d117knpn6qb2dk0j5kf0km8pg8l', '52.54.222.230', 1504732739, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343733323733393b706f73747c613a31313a7b733a353a22746f6b656e223b733a32343a22454e4b654d737974697869484e6e377a4f33376b57304e39223b733a373a227465616d5f6964223b733a393a22543437344b4b544c34223b733a31313a227465616d5f646f6d61696e223b733a31333a22637572696f7573636f64657273223b733a31303a226368616e6e656c5f6964223b733a393a224334373238484a4255223b733a31323a226368616e6e656c5f6e616d65223b733a373a2267656e6572616c223b733a373a22757365725f6964223b733a393a22553437303752314b4d223b733a393a22757365725f6e616d65223b733a363a22766b67303931223b733a373a22636f6d6d616e64223b733a383a222f616464746f646f223b733a343a2274657874223b733a31313a2268656c6c6f5f776f726c64223b733a31323a22726573706f6e73655f75726c223b733a38303a2268747470733a2f2f686f6f6b732e736c61636b2e636f6d2f636f6d6d616e64732f543437344b4b544c342f3233363631303834363732302f694239594c4e7a494e647a4c74537843434f664e54553651223b733a31303a22747269676765725f6964223b733a35383a223233373236303932313831302e3134333135353637333638342e3736613361353461303737623934346661316536393935386663643666626664223b7d6765747c613a303a7b7d),
('t9l6vbkfpkt4o9djd24e3q2fag69io28', '52.90.33.223', 1504733446, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343733333434363b),
('f8qgh98ogmj4e8u62t16tf847uuo074j', '47.247.14.47', 1504734592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343733343539323b),
('gan82901mn5c7ifegg6r3qrim50fs0f8', '52.90.146.42', 1504734587, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343733343538373b),
('fh8f108q4oha9c8hpjrn4j1jpv3qicg0', '47.247.14.47', 1504734592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343733343539323b),
('9g15m0pv3h3o2g3rnl9n25ge242bgemm', '::1', 1504735637, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343733353633373b),
('so3e0b711893bflumsedhi8elapo2cjm', '::1', 1504736526, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343733363332353b),
('1r33hecgeq3udd6p7ubod19bb4c0ji4p', '::1', 1504736838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343733363735393b),
('toqfd058616clrdfu0997j1rrtl5bvkd', '::1', 1504737341, 0x5f5f63695f6c6173745f726567656e65726174657c693a313530343733373332343b);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL,
  `task_status` varchar(10) NOT NULL DEFAULT 'undone' COMMENT 'done/undone',
  `task_channel` int(11) NOT NULL,
  `task_text` text NOT NULL,
  `task_user_id` varchar(20) NOT NULL,
  `task_user_name` varchar(100) NOT NULL,
  `task_request_data` text NOT NULL,
  `task_added_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task_id`, `task_status`, `task_channel`, `task_text`, `task_user_id`, `task_user_name`, `task_request_data`, `task_added_on`) VALUES
(1, 'undone', 1, 'This is my first todo', 'U4707R1KM', 'vkg091', 'a:11:{s:5:"token";s:6:"asdasd";s:7:"team_id";s:9:"T474KKTL4";s:11:"team_domain";s:13:"curiouscoders";s:10:"channel_id";s:9:"C4728HJBU";s:12:"channel_name";s:7:"general";s:7:"user_id";s:9:"U4707R1KM";s:9:"user_name";s:6:"vkg091";s:7:"command";s:8:"/addtodo";s:4:"text";s:21:"This is my first todo";s:12:"response_url";s:80:"https://hooks.slack.com/commands/T474KKTL4/238358342055/l2eAnRtQXQWa6fw7Mr2vukFg";s:10:"trigger_id";s:58:"236744654753.143155673684.9ae9d95d91140a786c45f7bd06105c44";}', '2017-09-07 03:51:31'),
(2, 'done', 1, 'This is my second todo', 'U4707R1KM', 'vkg091', 'a:11:{s:5:"token";s:6:"asdasd";s:7:"team_id";s:9:"T474KKTL4";s:11:"team_domain";s:13:"curiouscoders";s:10:"channel_id";s:9:"C4728HJBU";s:12:"channel_name";s:7:"general";s:7:"user_id";s:9:"U4707R1KM";s:9:"user_name";s:6:"vkg091";s:7:"command";s:8:"/addtodo";s:4:"text";s:22:"This is my second todo";s:12:"response_url";s:80:"https://hooks.slack.com/commands/T474KKTL4/238358342055/l2eAnRtQXQWa6fw7Mr2vukFg";s:10:"trigger_id";s:58:"236744654753.143155673684.9ae9d95d91140a786c45f7bd06105c44";}', '2017-09-07 03:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `team_public_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `team_domain` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_id`, `team_public_id`, `team_domain`) VALUES
(1, 'T474KKTL4', 'curiouscoders');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `test_id` int(11) NOT NULL,
  `test_data` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `test_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`test_id`, `test_data`, `test_time`) VALUES
(1, 'a:11:{s:5:"token";s:24:"ENKeMsytixiHNn7zO37kW0N9";s:7:"team_id";s:9:"T474KKTL4";s:11:"team_domain";s:13:"curiouscoders";s:10:"channel_id";s:9:"C4728HJBU";s:12:"channel_name";s:7:"general";s:7:"user_id";s:9:"U4707R1KM";s:9:"user_name";s:6:"vkg091";s:7:"command";s:8:"/addtodo";s:4:"text";s:21:"This is my first todo";s:12:"response_url";s:80:"https://hooks.slack.com/commands/T474KKTL4/238358342055/l2eAnRtQXQWa6fw7Mr2vukFg";s:10:"trigger_id";s:58:"236744654753.143155673684.9ae9d95d91140a786c45f7bd06105c44";}', '2017-09-06 21:30:46'),
(2, 'a:11:{s:5:"token";s:24:"ENKeMsytixiHNn7zO37kW0N9";s:7:"team_id";s:9:"T474KKTL4";s:11:"team_domain";s:13:"curiouscoders";s:10:"channel_id";s:9:"C4728HJBU";s:12:"channel_name";s:7:"general";s:7:"user_id";s:9:"U4707R1KM";s:9:"user_name";s:6:"vkg091";s:7:"command";s:10:"/listtodos";s:4:"text";s:0:"";s:12:"response_url";s:80:"https://hooks.slack.com/commands/T474KKTL4/236625887648/daJ5pSeoIrbQdwrHFnngByBZ";s:10:"trigger_id";s:58:"237200827027.143155673684.0aaa7eb35175bacad7d3bb46c6202c76";}', '2017-09-06 21:49:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`channel_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`test_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `channel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
