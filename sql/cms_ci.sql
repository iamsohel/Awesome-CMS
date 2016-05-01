-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2015 at 04:36 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `pubdate` date NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `pubdate`, `body`, `created`, `modified`) VALUES
(1, 'Sohel Blog', 'blog', '2015-11-23', 'In the asynchronous model, we can also solve the problem with the same time complexity,\nas follows. Choose G as in the synchronous case, except that all port nodes can send\nmessages to one another as well. The asynchronous algorithm is such that every port node\nperforms σ rounds of sending a message on its port and then sending a message to every\nother port node containing information that it has finished its participation in the current\nsession. The next round is only performed after similar messages have been received from\nall other port nodes. The reader should verify that the time complexity of this algorithm is O\n(σ) if N0 contains all port nodes.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Welcome to rime News', 'crime', '2015-11-21', 'The difficulty arises when in G we place a constant bound b on | Outi | (or | Inci |, in the\nundirected case), thereby limiting the number of messages that a node may send in a single\naction of Algorithm S-Template or Algorithm A-Template', '2015-11-21 18:55:40', '2015-11-21 18:55:40'),
(3, 'Boss is here', 'Boss', '2015-11-22', 'Solving the (μ, σ)-session problem is in general very simple. For the synchronous model, the\nproblem is solved by choosing G to be any graph with no more than one port per node, and\nthe synchronous algorithm to be such that every port node sends a message on its port at', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'bangladesh', 'bangla', '0000-00-00', '<p>ajflk afjlskf lkasfskf asis sif isf i IFiofs OIf OI I wroifen oie ff oif oif fhnfNC IFEFN</p>', '0000-00-00 00:00:00', '2015-11-24 06:18:00'),
(5, 'Future', 'future', '2015-11-24', 'In the following section we will present the results of applying the heuristic\nalgorithms for nugget discovery to some problems. Other algorithms available for\nclassification or for nugget discovery were applied to the same problems so that the\nsuitability of different approaches to the task of nugget discovery could be assessed.\nThe algorithms tested ranged from complete classification algorithms, to nugget\ndiscovery algorithms and association rule algorithms. A description of each\nalgorithm is not possible here due to space constraints, hence the reader is referred\nto appropriate papers. For each algorithm, extensive parameter experimentation\nwas carried out and a set of good parameters was chosen, but again this is not\nreported here; see de la Iglesia (2001) for details.\nThe classification algorithms chosen were:', '2015-11-24 02:03:14', '2015-11-24 02:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('578d1baf141253512a190f8a387c033d', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:31.0) Gecko/20100101 Firefox/31.0', 1448397380, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `version` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) unsigned NOT NULL,
  `template` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `body`, `order`, `parent_id`, `template`) VALUES
(1, 'Home', '', 'This is home page', 1, 0, 'homepage'),
(5, 'About', 'about', 'here about me', 2, 0, 'page'),
(7, 'Contct', 'contact', '<p>Its contact page .so hurry up.</p>', 3, 5, 'page'),
(8, 'News Archive', 'news-Archive', '<p>the body page</p>', 4, 0, 'news_archive');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(128) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`) VALUES
(1, 'sohel9001@yahoo.com', '998a43f24813acaa60cd16e50927f9c082e7fcfa974991088faeba9d957651b420f4b0892bc11d313d8e26617d7867d46132366c4d574877419c93a9646415fd', 'Sohel Rana'),
(3, 'sr@gmail.com', '184b1b668616684b8c25992b365878ca646a54ff5c6f7574eb6d559b888ba4ffdaf8f39dd72451926c060125ccf38cf15c47970f4592b7053200d81bc70a0dd0', 'Sohel'),
(4, 'kader@gmail.com', '652b2ef70f97d39abe322bf47b8b3c2fd6cd15ca3ef5c309dcd0eb7f2e7e879982f23e661a3265dc18072932a7ce6cf90d97e46362128a973890e491f02e398f', 'Kader');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
