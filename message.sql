-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: 2017-03-07 22:40:04
-- 服务器版本： 5.5.42
-- PHP Version: 5.4.42

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `message`
--

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `title`, `content`, `create_time`, `update_time`) VALUES
(17, '你们好好想一想吧，有什么觉得好的呀。', '我也这样认为，但好像不错的样子。', 1487923448, 1487923448),
(18, '你说吧，有你什么事', '我也不知道，想说爱你不容易。', 1487924287, 1487924287),
(22, 'thinkphp 留言本怎么用的', '我也不知道', 1487927024, 1487927024),
(26, '工木大工大木土', '你好不好呀。', 1487928251, 1487928251),
(27, '你好', '&lt;h1&gt;你好不好&lt;/h1&gt;', 1488641454, 1488641454),
(28, '你们好吧。', '我也好。你怎么样呢。', 1488897408, 1488897408),
(29, '大家好才是真的好吗', '我觉得有点像吧。', 1488897421, 1488897421);

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `username` varchar(32) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`id`, `article_id`, `username`, `content`, `create_time`, `update_time`) VALUES
(1, 17, '王先生', '你说好不好呀。', 1487924183, 1487924183),
(2, 17, '李大伯', '添加评论成功了。', 1487924240, 1487924240),
(3, 17, '刘华中', '你们杨说就说吧，我也不想对你们有便宜。', 1487925026, 1487925026),
(4, 18, '李连杰', '你们就是这样做的吗、不好吧。', 1487925051, 1487925051),
(5, 18, '棉被', '一种新型加工技术可以不。', 1487925173, 1487925173),
(6, 19, '明明白白的', '我们也不想', 1487926370, 1487926370),
(7, 27, '李连杰', '我想说一下你不是不', 1488641470, 1488641470),
(8, 28, '大家好', '你好不好呀', 1488897434, 1488897434);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
