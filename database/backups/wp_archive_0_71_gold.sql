-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: wp_archive_0_71_gold
-- ------------------------------------------------------
-- Server version	5.5.31-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `b2categories`
--

DROP TABLE IF EXISTS `b2categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2categories` (
  `cat_ID` int(4) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(55) NOT NULL DEFAULT '',
  PRIMARY KEY (`cat_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b2categories`
--

LOCK TABLES `b2categories` WRITE;
/*!40000 ALTER TABLE `b2categories` DISABLE KEYS */;
INSERT INTO `b2categories` VALUES (1,'General');
/*!40000 ALTER TABLE `b2categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b2comments`
--

DROP TABLE IF EXISTS `b2comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2comments` (
  `comment_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` int(11) NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(100) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b2comments`
--

LOCK TABLES `b2comments` WRITE;
/*!40000 ALTER TABLE `b2comments` DISABLE KEYS */;
INSERT INTO `b2comments` VALUES (1,1,'Mr WordPress','mr@wordpress.org','http://wordpress.org','127.0.0.1','2013-05-25 06:42:05','Hi, this is a comment.<br />To delete a comment, just log in, and view the posts\' comments, there you will have the option to edit or delete them.',0);
/*!40000 ALTER TABLE `b2comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b2linkcategories`
--

DROP TABLE IF EXISTS `b2linkcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2linkcategories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` tinytext NOT NULL,
  `auto_toggle` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b2linkcategories`
--

LOCK TABLES `b2linkcategories` WRITE;
/*!40000 ALTER TABLE `b2linkcategories` DISABLE KEYS */;
INSERT INTO `b2linkcategories` VALUES (1,'General','N');
/*!40000 ALTER TABLE `b2linkcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b2links`
--

DROP TABLE IF EXISTS `b2links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2links` (
  `link_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_category` int(11) NOT NULL DEFAULT '0',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` enum('Y','N') NOT NULL DEFAULT 'Y',
  `link_owner` int(11) NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b2links`
--

LOCK TABLES `b2links` WRITE;
/*!40000 ALTER TABLE `b2links` DISABLE KEYS */;
INSERT INTO `b2links` VALUES (1,'http://wordpress.org','WordPress','','',1,'','Y',1,0,'0000-00-00 00:00:00',''),(2,'http://cafelog.com','b2','','',1,'','Y',1,0,'0000-00-00 00:00:00',''),(3,'http://photomatt.net','Matt','','',1,'','Y',1,0,'0000-00-00 00:00:00',''),(4,'http://zed1.com/b2/','Mike','','',1,'','Y',1,0,'0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `b2links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b2posts`
--

DROP TABLE IF EXISTS `b2posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2posts` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` int(4) NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` text NOT NULL,
  `post_title` text NOT NULL,
  `post_category` int(4) NOT NULL DEFAULT '0',
  `post_excerpt` text NOT NULL,
  `post_status` enum('publish','draft','private') NOT NULL DEFAULT 'publish',
  `comment_status` enum('open','closed') NOT NULL DEFAULT 'open',
  `ping_status` enum('open','closed') NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `post_status` (`post_status`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b2posts`
--

LOCK TABLES `b2posts` WRITE;
/*!40000 ALTER TABLE `b2posts` DISABLE KEYS */;
INSERT INTO `b2posts` VALUES (1,1,'2013-05-25 06:42:05','Welcome to WordPress. This is the first post. Edit or delete it, then start blogging!','Hello world!',1,'','publish','open','open',''),(2,1,'2013-05-25 06:57:40','Here\\\'s my post','Test',1,'This is an excertp','publish','open','open',''),(3,1,'2013-05-25 18:11:27','<div class=\\\"storycontent\\\">\r\n	<p>We’re very proud to announce the <a href=\\\"/download\\\" title=\\\"Download it now\\\">immediate availability</a> of the 0.71 release of WordPress. Don’t let the small version bump fool you, this release is packed with new features. Without further ado:</p>\r\n<ul>\r\n<li><strong>300% speedup</strong> — We’re not kidding, this release will perform about three times (or more) faster than previous releases of WordPress and b2.</li>\r\n<li><strong>Post status</strong> — Every post can now have three states of being: publish, draft, and private. Publish is just like it was before, drafts are stored in the database and display in a special place on your edit screen, and private entries are viewable only by the author. This allows a degree of flexibility in workflow, allowing different people to work on the same post.</li>\r\n<li><strong>Comments status</strong> — Comments and pings can now be individually enabled or disabled on a per-post basis. The templates reflect this as well.</li>\r\n<li><strong>Combined Trackbacks, Pingbacks, and Comments</strong> — They’re all comments anyway, and now they display as such. This means cleaner templates and less software cruft crowding your beautiful design.</li>\r\n<li><strong>Security fixes</strong> — This release addresses a problem that could potentially allow SQL injection for users of MySQL 4 and above, as well as removes a vulnerable file. (If you overwrite your old installation, make sure to delete <code>links.all.php</code>)</li>\r\n<li><strong>OPML import</strong> — Import links into the link manager from OPML format, including from blogrolling.</li>\r\n<li><strong>ezSQL database functions</strong> — Using <a href=\\\"http://justinvincent.com/home/articles.php?articleId=2\\\" title=\\\"Information about the ezSQL database class\\\">ezSQL</a> has cleaned up the code quite a bit, sped it up a little, and will make it that much easier to add support for other databases beside MySQL in the future.</li>\r\n<li><strong>Cleaner, smoother administration</strong> — We’ve polished up all the administration screens to be even faster and easier to use, particularly the Links Manager.</li>\r\n<li><strong>Clean upgrades</strong> — Upgrading from b2 or a previous version of WordPress is a cinch, and we’re working on upgrade paths for users of other software.</li>\r\n<li><strong>Links weblogs.com checking</strong> — When checking for updated links it is now looser in what it matches so miniscule differences in the URL won’t prevent it from updating.</li>\r\n<li><strong>Bug fixes galore</strong> — Over twenty bugs have been smitten from the code.</li>\r\n</ul>\r\n<p>So upgrade while it’s hot. What better way to spend a slow Monday?</p>\r\n<div class=\\\"sharedaddy sd-sharing-enabled\\\"><div class=\\\"robots-nocontent sd-block sd-social sd-social-icon-text sd-sharing\\\"><h3 class=\\\"sd-title\\\">Share this:</h3><div class=\\\"sd-content\\\"><ul><li class=\\\"share-twitter\\\"><a rel=\\\"nofollow\\\" class=\\\"share-twitter sd-button share-icon\\\" href=\\\"http://wordpress.org/news/2003/06/wordpress-071-now-available/?share=twitter&amp;nb=1\\\" target=\\\"_blank\\\" title=\\\"Click to share on Twitter\\\" id=\\\"sharing-twitter-24\\\"><span>Twitter</span></a></li><li class=\\\"share-facebook\\\"><a rel=\\\"nofollow\\\" class=\\\"share-facebook sd-button share-icon\\\" href=\\\"http://wordpress.org/news/2003/06/wordpress-071-now-available/?share=facebook&amp;nb=1\\\" target=\\\"_blank\\\" title=\\\"Share on Facebook\\\" id=\\\"sharing-facebook-24\\\"><span>Facebook</span></a></li><li class=\\\"share-google-plus-1\\\"><a rel=\\\"nofollow\\\" class=\\\"share-google-plus-1 sd-button share-icon\\\" href=\\\"http://wordpress.org/news/2003/06/wordpress-071-now-available/?share=google-plus-1&amp;nb=1\\\" target=\\\"_blank\\\" title=\\\"Click to share on Google+\\\" id=\\\"sharing-google-24\\\"><span>Google +1</span></a></li><li class=\\\"share-email share-service-visible\\\"><a rel=\\\"nofollow\\\" class=\\\"share-email sd-button share-icon\\\" href=\\\"http://wordpress.org/news/2003/06/wordpress-071-now-available/?share=email&amp;nb=1\\\" target=\\\"_blank\\\" title=\\\"Click to email this to a friend\\\"><span>Email</span></a></li><li class=\\\"share-end\\\"></li></ul><div class=\\\"sharing-clear\\\"></div></div></div></div></div>','WordPress 0.71 Now Available',1,'','publish','open','open','');
/*!40000 ALTER TABLE `b2posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b2settings`
--

DROP TABLE IF EXISTS `b2settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2settings` (
  `ID` tinyint(3) NOT NULL DEFAULT '1',
  `posts_per_page` int(4) unsigned NOT NULL DEFAULT '7',
  `what_to_show` varchar(5) NOT NULL DEFAULT 'days',
  `archive_mode` varchar(10) NOT NULL DEFAULT 'weekly',
  `time_difference` tinyint(4) NOT NULL DEFAULT '0',
  `AutoBR` tinyint(1) NOT NULL DEFAULT '1',
  `time_format` varchar(20) NOT NULL DEFAULT 'H:i:s',
  `date_format` varchar(20) NOT NULL DEFAULT 'd.m.y',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b2settings`
--

LOCK TABLES `b2settings` WRITE;
/*!40000 ALTER TABLE `b2settings` DISABLE KEYS */;
INSERT INTO `b2settings` VALUES (1,20,'posts','monthly',0,1,'g:i a','n/j/Y');
/*!40000 ALTER TABLE `b2settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `b2users`
--

DROP TABLE IF EXISTS `b2users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b2users` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(20) NOT NULL DEFAULT '',
  `user_pass` varchar(20) NOT NULL DEFAULT '',
  `user_firstname` varchar(50) NOT NULL DEFAULT '',
  `user_lastname` varchar(50) NOT NULL DEFAULT '',
  `user_nickname` varchar(50) NOT NULL DEFAULT '',
  `user_icq` int(10) unsigned NOT NULL DEFAULT '0',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_ip` varchar(15) NOT NULL DEFAULT '',
  `user_domain` varchar(200) NOT NULL DEFAULT '',
  `user_browser` varchar(200) NOT NULL DEFAULT '',
  `dateYMDhour` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_level` int(2) unsigned NOT NULL DEFAULT '0',
  `user_aim` varchar(50) NOT NULL DEFAULT '',
  `user_msn` varchar(100) NOT NULL DEFAULT '',
  `user_yim` varchar(50) NOT NULL DEFAULT '',
  `user_idmode` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `user_login` (`user_login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `b2users`
--

LOCK TABLES `b2users` WRITE;
/*!40000 ALTER TABLE `b2users` DISABLE KEYS */;
INSERT INTO `b2users` VALUES (1,'admin','c92bbb','','','admin',0,'admin@wp-archive.local','','127.0.0.1','127.0.0.1','','2000-00-00 00:00:01',10,'','','','nickname');
/*!40000 ALTER TABLE `b2users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-25 19:34:53
