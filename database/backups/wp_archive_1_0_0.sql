-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: wp_archive_1_0_0
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
-- Table structure for table `wp_categories`
--

DROP TABLE IF EXISTS `wp_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_categories` (
  `cat_ID` int(4) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(55) NOT NULL DEFAULT '',
  `category_nicename` varchar(200) NOT NULL,
  `category_description` text NOT NULL,
  `category_parent` int(4) NOT NULL,
  PRIMARY KEY (`cat_ID`),
  UNIQUE KEY `cat_name` (`cat_name`),
  KEY `category_nicename` (`category_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_categories`
--

LOCK TABLES `wp_categories` WRITE;
/*!40000 ALTER TABLE `wp_categories` DISABLE KEYS */;
INSERT INTO `wp_categories` VALUES (1,'General','general','',0);
/*!40000 ALTER TABLE `wp_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` int(11) NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(100) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` enum('0','1') NOT NULL DEFAULT '1',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_approved` (`comment_approved`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Mr WordPress','mr@wordpress.org','http://wordpress.org','127.0.0.1','2013-05-24 08:09:06','Hi, this is a comment.<br />To delete a comment, just log in, and view the posts\' comments, there you will have the option to edit or delete them.',0,'1');
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_linkcategories`
--

DROP TABLE IF EXISTS `wp_linkcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_linkcategories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` tinytext NOT NULL,
  `auto_toggle` enum('Y','N') NOT NULL DEFAULT 'N',
  `show_images` enum('Y','N') NOT NULL DEFAULT 'Y',
  `show_description` enum('Y','N') NOT NULL DEFAULT 'Y',
  `show_rating` enum('Y','N') NOT NULL DEFAULT 'Y',
  `show_updated` enum('Y','N') NOT NULL DEFAULT 'Y',
  `sort_order` varchar(64) NOT NULL DEFAULT 'name',
  `sort_desc` enum('Y','N') NOT NULL DEFAULT 'N',
  `text_before_link` varchar(128) NOT NULL DEFAULT '<li>',
  `text_after_link` varchar(128) NOT NULL DEFAULT '<br />',
  `text_after_all` varchar(128) NOT NULL DEFAULT '</li>',
  `list_limit` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_linkcategories`
--

LOCK TABLES `wp_linkcategories` WRITE;
/*!40000 ALTER TABLE `wp_linkcategories` DISABLE KEYS */;
INSERT INTO `wp_linkcategories` VALUES (1,'Links','N','Y','Y','Y','Y','name','N','<li>','<br />','</li>',-1);
/*!40000 ALTER TABLE `wp_linkcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
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
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
INSERT INTO `wp_links` VALUES (1,'http://wordpress.org/','WordPress','','',1,'','Y',1,0,'0000-00-00 00:00:00','','',''),(2,'http://photomatt.net/','Matt','','',1,'','Y',1,0,'0000-00-00 00:00:00','','',''),(3,'http://zed1.com/b2/','Mike','','',1,'','Y',1,0,'0000-00-00 00:00:00','','','');
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_optiongroup_options`
--

DROP TABLE IF EXISTS `wp_optiongroup_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_optiongroup_options` (
  `group_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `seq` int(11) NOT NULL,
  PRIMARY KEY (`group_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_optiongroup_options`
--

LOCK TABLES `wp_optiongroup_options` WRITE;
/*!40000 ALTER TABLE `wp_optiongroup_options` DISABLE KEYS */;
INSERT INTO `wp_optiongroup_options` VALUES (1,48,1),(1,49,2),(1,50,3),(1,51,4),(1,52,5),(1,53,6),(2,9,1),(2,11,3),(2,12,4),(2,13,5),(2,14,6),(2,15,7),(2,16,8),(2,17,9),(2,18,10),(2,19,11),(2,20,12),(2,88,13),(2,89,14),(2,91,5),(2,92,5),(3,21,1),(3,22,2),(3,23,3),(3,24,4),(3,25,5),(3,26,6),(3,27,7),(3,28,8),(3,29,9),(3,30,10),(4,31,1),(4,32,2),(4,33,3),(4,34,4),(4,35,5),(4,36,6),(4,37,7),(5,38,1),(5,39,2),(5,40,3),(5,41,4),(5,42,5),(5,43,6),(5,44,7),(5,45,8),(5,46,9),(5,47,10),(6,1,1),(6,2,2),(6,3,3),(6,4,4),(6,7,6),(6,8,7),(6,54,8),(7,55,1),(7,56,2),(7,57,3),(7,58,4),(7,59,5),(7,83,5),(8,60,1),(8,61,2),(8,62,3),(8,63,4),(8,64,5),(8,65,6),(8,66,7),(8,67,8),(8,68,9),(8,69,10),(8,70,11),(8,71,12),(8,72,13),(8,73,14),(8,74,15),(8,75,16),(8,76,17),(8,77,18),(8,78,19),(8,79,20),(8,80,21),(8,81,22),(8,82,23),(9,84,1),(9,85,1),(9,86,1),(9,87,1);
/*!40000 ALTER TABLE `wp_optiongroup_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_optiongroups`
--

DROP TABLE IF EXISTS `wp_optiongroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_optiongroups` (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(64) NOT NULL,
  `group_desc` varchar(255) DEFAULT NULL,
  `group_longdesc` tinytext,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_optiongroups`
--

LOCK TABLES `wp_optiongroups` WRITE;
/*!40000 ALTER TABLE `wp_optiongroups` DISABLE KEYS */;
INSERT INTO `wp_optiongroups` VALUES (1,'Other Options','Posts per page etc. Original options page',NULL),(2,'General blog settings','Things you\'ll probably want to tweak',NULL),(3,'RSS/RDF Feeds, Track/Ping-backs','Settings for RSS/RDF Feeds, Track/ping-backs',NULL),(4,'File uploads','Settings for file uploads',NULL),(5,'Blog-by-Email settings','Settings for blogging via email',NULL),(6,'Base settings','Basic settings required to get your blog working',NULL),(7,'Default post options','Default settings for new posts.',NULL),(8,'Link Manager Settings','Various settings for the link manager.',NULL),(9,'Geo Options','Settings which control the posting and display of Geo Options',NULL);
/*!40000 ALTER TABLE `wp_optiongroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_can_override` enum('Y','N') NOT NULL DEFAULT 'Y',
  `option_type` int(11) NOT NULL DEFAULT '1',
  `option_value` varchar(255) NOT NULL DEFAULT '',
  `option_width` int(11) NOT NULL DEFAULT '20',
  `option_height` int(11) NOT NULL DEFAULT '8',
  `option_description` tinytext NOT NULL,
  `option_admin_level` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`option_id`,`blog_id`,`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,0,'siteurl','Y',3,'http://wp-archive.local/1.0.0/',30,8,'siteurl is your blog\'s URL: for example, \'http://example.com/wordpress\' (no trailing slash !)',8),(2,0,'blogfilename','Y',3,'index.php',20,8,'blogfilename is the name of the default file for your blog',8),(3,0,'blogname','Y',3,'my weblog',20,8,'blogname is the name of your blog',8),(4,0,'blogdescription','Y',3,'babblings!',40,8,'blogdescription is the description of your blog',8),(7,0,'new_users_can_blog','Y',2,'0',20,8,'whether you want new users to be able to post entries once they have registered',8),(8,0,'users_can_register','Y',2,'1',20,8,'whether you want to allow users to register on your blog',8),(9,0,'start_of_week','Y',5,'1',20,8,'day at the start of the week',8),(11,0,'use_bbcode','Y',2,'0',20,8,'use BBCode, like [b]bold[/b]',8),(12,0,'use_gmcode','Y',2,'0',20,8,'use GreyMatter-styles: **bold** \\italic\\ __underline__',8),(13,0,'use_quicktags','Y',2,'1',20,8,'buttons for HTML tags (they won\'t work on IE Mac yet)',8),(14,0,'use_htmltrans','Y',2,'1',20,8,'IMPORTANT! set this to false if you are using Chinese, Japanese, Korean, or other double-bytes languages',8),(15,0,'use_balanceTags','Y',2,'1',20,8,'this could help balance your HTML code. if it gives bad results, set it to false',8),(16,0,'use_smilies','Y',2,'1',20,8,'set this to 1 to enable smiley conversion in posts (note: this makes smiley conversion in ALL posts)',8),(17,0,'smilies_directory','Y',3,'http://example.com/wp-images/smilies',40,8,'the directory where your smilies are (no trailing slash)',8),(18,0,'require_name_email','Y',2,'0',20,8,'set this to true to require e-mail and name, or false to allow comments without e-mail/name',8),(20,0,'comments_notify','Y',2,'1',20,8,'set this to true to let every author be notified about comments on their posts',8),(21,0,'posts_per_rss','Y',1,'10',20,8,'number of last posts to syndicate',8),(22,0,'rss_language','Y',3,'en',20,8,'the language of your blog ( see this: http://backend.userland.com/stories/storyReader$16 )',8),(23,0,'rss_encoded_html','Y',2,'0',20,8,'for b2rss.php: allow encoded HTML in &lt;description> tag?',8),(24,0,'rss_excerpt_length','Y',1,'50',20,8,'length (in words) of excerpts in the RSS feed? 0=unlimited note: in b2rss.php, this will be set to 0 if you use encoded HTML',8),(25,0,'rss_use_excerpt','Y',2,'1',20,8,'use the excerpt field for rss feed.',8),(26,0,'use_weblogsping','Y',2,'0',20,8,'set this to true if you want your site to be listed on http://weblogs.com when you add a new post',8),(27,0,'use_blodotgsping','Y',2,'0',20,8,'set this to true if you want your site to be listed on http://blo.gs when you add a new post',8),(28,0,'blodotgsping_url','Y',3,'http://wp-archive.local/1.0.0/',30,8,'You shouldn\'t need to change this.',8),(29,0,'use_trackback','Y',2,'1',20,8,'set this to 0 or 1, whether you want to allow your posts to be trackback\'able or not note: setting it to zero would also disable sending trackbacks',8),(30,0,'use_pingback','Y',2,'1',20,8,'set this to 0 or 1, whether you want to allow your posts to be pingback\'able or not note: setting it to zero would also disable sending pingbacks',8),(31,0,'use_fileupload','Y',2,'0',20,8,'set this to false to disable file upload, or true to enable it',8),(32,0,'fileupload_realpath','Y',3,'/home/your/site/wordpress/images',40,8,'enter the real path of the directory where you\'ll upload the pictures \nif you\'re unsure about what your real path is, please ask your host\'s support staff \nnote that the  directory must be writable by the webserver (chmod 766) \nnote for windows-servers us',8),(33,0,'fileupload_url','Y',3,'http://example.com/images',40,8,'enter the URL of that directory (it\'s used to generate the links to the uploded files)',8),(34,0,'fileupload_allowedtypes','Y',3,'jpg gif png',20,8,'accepted file types, separated by spaces. example: \'jpg gif png\'',8),(35,0,'fileupload_maxk','Y',1,'96',20,8,'by default, most servers limit the size of uploads to 2048 KB, if you want to set it to a lower value, here it is (you cannot set a higher value than your server limit)',8),(36,0,'fileupload_minlevel','Y',1,'1',20,8,'you may not want all users to upload pictures/files, so you can set a minimum level for this',8),(37,0,'fileupload_allowedusers','Y',3,'',30,8,'...or you may authorize only some users. enter their logins here, separated by spaces. if you leave this variable blank, all users who have the minimum level are authorized to upload. example: \'barbara anne george\'',8),(38,0,'mailserver_url','Y',3,'mail.example.com',20,8,'mailserver settings',8),(39,0,'mailserver_login','Y',3,'login@example.com',20,8,'mailserver settings',8),(40,0,'mailserver_pass','Y',3,'password',20,8,'mailserver settings',8),(41,0,'mailserver_port','Y',1,'110',20,8,'mailserver settings',8),(42,0,'default_category','Y',1,'1',20,8,'by default posts will have this category',8),(43,0,'subjectprefix','Y',3,'blog:',20,8,'subject prefix',8),(44,0,'bodyterminator','Y',3,'___',20,8,'body terminator string (starting from this string, everything will be ignored, including this string)',8),(45,0,'emailtestonly','Y',2,'0',20,8,'set this to true to run in test mode',8),(46,0,'use_phoneemail','Y',2,'0',20,8,'some mobile phone email services will send identical subject & content on the same line if you use such a service, set use_phoneemail to true, and indicate a separator string',8),(47,0,'phoneemail_separator','Y',3,':::',20,8,'when you compose your message, you\'ll type your subject then the separator string then you type your login:password, then the separator, then content',8),(48,0,'posts_per_page','Y',1,'20',20,8,'How many posts/days to show on the index page.',4),(49,0,'what_to_show','Y',5,'posts',20,8,'Posts, days, or posts paged',4),(50,0,'archive_mode','Y',5,'monthly',20,8,'Which \'unit\' to use for archives.',4),(51,0,'time_difference','Y',6,'0',20,8,'if you\'re not on the timezone of your server',4),(52,0,'date_format','Y',3,'n/j/Y',20,8,'see <a href=\"http://php.net/date\">help</a> for format characters',4),(53,0,'time_format','Y',3,'g:i a',20,8,'see <a href=\"http://php.net/date\">help</a> for format characters',4),(54,0,'admin_email','Y',3,'you@example.com',20,8,'Your email (obvious eh?)',8),(55,0,'default_post_status','Y',5,'publish',20,8,'The default state of each new post',8),(56,0,'default_comment_status','Y',5,'open',20,8,'The default state of comments for each new post',8),(57,0,'default_ping_status','Y',5,'open',20,8,'The default ping state for each new post',8),(58,0,'default_pingback_flag','Y',5,'1',20,8,'Whether the \'PingBack the URLs in this post\' checkbox should be checked by default',8),(59,0,'default_post_category','Y',7,'1',20,8,'The default category for each new post',8),(60,0,'links_minadminlevel','Y',1,'5',10,8,'The minimum admin level to edit links',8),(61,0,'links_use_adminlevels','Y',2,'1',20,8,'set this to false to have all links visible and editable to everyone in the link manager',8),(62,0,'links_rating_type','Y',5,'image',10,8,'Set this to the type of rating indication you wish to use',8),(63,0,'links_rating_char','Y',3,'*',5,8,'If we are set to \'char\' which char to use.',8),(64,0,'links_rating_ignore_zero','Y',2,'1',20,8,'What do we do with a value of zero? set this to true to output nothing, 0 to output as normal (number/image)',8),(65,0,'links_rating_single_image','Y',2,'1',20,8,'Use the same image for each rating point? (Uses links_rating_image[0])',8),(66,0,'links_rating_image0','Y',3,'wp-images/links/tick.png',40,8,'Image for rating 0 (and for single image)',8),(67,0,'links_rating_image1','Y',3,'wp-images/links/rating-1.gif',40,8,'Image for rating 1',8),(68,0,'links_rating_image2','Y',3,'wp-images/links/rating-2.gif',40,8,'Image for rating 2',8),(69,0,'links_rating_image3','Y',3,'wp-images/links/rating-3.gif',40,8,'Image for rating 3',8),(70,0,'links_rating_image4','Y',3,'wp-images/links/rating-4.gif',40,8,'Image for rating 4',8),(71,0,'links_rating_image5','Y',3,'wp-images/links/rating-5.gif',40,8,'Image for rating 5',8),(72,0,'links_rating_image6','Y',3,'wp-images/links/rating-6.gif',40,8,'Image for rating 6',8),(73,0,'links_rating_image7','Y',3,'wp-images/links/rating-7.gif',40,8,'Image for rating 7',8),(74,0,'links_rating_image8','Y',3,'wp-images/links/rating-8.gif',40,8,'Image for rating 8',8),(75,0,'links_rating_image9','Y',3,'wp-images/links/rating-9.gif',40,8,'Image for rating 9',8),(76,0,'weblogs_cache_file','Y',3,'weblogs.com.changes.cache',40,8,'path/to/cachefile needs to be writable by web server',8),(77,0,'weblogs_xml_url','Y',3,'http://www.weblogs.com/changes.xml',40,8,'Which file to grab from weblogs.com',8),(78,0,'weblogs_cacheminutes','Y',1,'60',10,8,'cache time in minutes (if it is older than this get a new copy)',8),(79,0,'links_updated_date_format','Y',3,'d/m/Y h:i',25,8,'The date format for the updated tooltip',8),(80,0,'links_recently_updated_prepend','Y',3,'&gt;&gt;',10,8,'The text to prepend to a recently updated link',8),(81,0,'links_recently_updated_append','Y',3,'&lt;&lt;',20,8,'The text to append to a recently updated link',8),(82,0,'links_recently_updated_time','Y',1,'120',20,8,'The time in minutes to consider a link recently updated',8),(83,0,'default_post_edit_rows','Y',1,'9',5,8,'The number of rows in the edit post form (min 3, max 100)',8),(84,0,'use_geo_positions','Y',2,'0',20,8,'Turns on the geo url features of WordPress',8),(85,0,'use_default_geourl','Y',2,'1',20,8,'enables placement of default GeoURL ICBM location even when no other specified',8),(86,0,'default_geourl_lat ','Y',8,'0.0',20,8,'The default Latitude ICBM value - <a href=\"http://www.geourl.org/resources.html\" target=\"_blank\">see here</a>',8),(87,0,'default_geourl_lon','Y',8,'0.0',20,8,'The default Longitude ICBM value',8),(88,0,'comment_moderation','Y',5,' none',20,8,'If enabled, comments will only be shown after they have been approved.',8),(89,0,'moderation_notify','Y',2,'1',20,8,'Set this to true if you want to be notified about new comments that wait for approval',8),(90,0,'permalink_structure','Y',3,'',20,8,'How the permalinks for your site are constructed. See <a href=\"options-permalink.php\">permalink options page</a> for necessary mod_rewrite rules and more information.',8),(91,0,'gzipcompression','Y',2,'0',20,8,'Whether your output should be gzipped or not. Enable this if you don&#8217;t already have mod_gzip running.',8),(92,0,'hack_file','Y',2,'0',20,8,'Set this to true if you plan to use a hacks file. This is a place for you to store code hacks that won&#8217;t be overwritten when you upgrade. The file must be in your wordpress root and called <code>my-hacks.php</code>',8);
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_optiontypes`
--

DROP TABLE IF EXISTS `wp_optiontypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_optiontypes` (
  `optiontype_id` int(11) NOT NULL AUTO_INCREMENT,
  `optiontype_name` varchar(64) NOT NULL,
  PRIMARY KEY (`optiontype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_optiontypes`
--

LOCK TABLES `wp_optiontypes` WRITE;
/*!40000 ALTER TABLE `wp_optiontypes` DISABLE KEYS */;
INSERT INTO `wp_optiontypes` VALUES (1,'integer'),(2,'boolean'),(3,'string'),(4,'date'),(5,'select'),(6,'range'),(7,'sqlselect'),(8,'float');
/*!40000 ALTER TABLE `wp_optiontypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_optionvalues`
--

DROP TABLE IF EXISTS `wp_optionvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_optionvalues` (
  `option_id` int(11) NOT NULL,
  `optionvalue` tinytext,
  `optionvalue_desc` varchar(255) DEFAULT NULL,
  `optionvalue_max` int(11) DEFAULT NULL,
  `optionvalue_min` int(11) DEFAULT NULL,
  `optionvalue_seq` int(11) DEFAULT NULL,
  UNIQUE KEY `option_id` (`option_id`,`optionvalue`(255)),
  KEY `option_id_2` (`option_id`,`optionvalue_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_optionvalues`
--

LOCK TABLES `wp_optionvalues` WRITE;
/*!40000 ALTER TABLE `wp_optionvalues` DISABLE KEYS */;
INSERT INTO `wp_optionvalues` VALUES (49,'days','days',NULL,NULL,1),(49,'posts','posts',NULL,NULL,2),(49,'paged','posts paged',NULL,NULL,3),(50,'daily','daily',NULL,NULL,1),(50,'weekly','weekly',NULL,NULL,2),(50,'monthly','monthly',NULL,NULL,3),(50,'postbypost','post by post',NULL,NULL,4),(51,'hours','hours',23,-23,NULL),(9,'0','Sunday',NULL,NULL,1),(9,'1','Monday',NULL,NULL,2),(9,'6','Saturday',NULL,NULL,3),(55,'publish','Publish',NULL,NULL,1),(55,'draft','Draft',NULL,NULL,2),(55,'private','Private',NULL,NULL,3),(56,'open','Open',NULL,NULL,1),(56,'closed','Closed',NULL,NULL,2),(57,'open','Open',NULL,NULL,1),(57,'closed','Closed',NULL,NULL,2),(58,'1','Checked',NULL,NULL,1),(58,'0','Unchecked',NULL,NULL,2),(59,'SELECT cat_id AS value, cat_name AS label FROM wp_categories order by cat_name','',NULL,NULL,1),(62,'number','Number',NULL,NULL,1),(62,'char','Character',NULL,NULL,2),(62,'image','Image',NULL,NULL,3),(88,'auto','Automatic',NULL,NULL,3),(88,'none','None',NULL,NULL,1),(88,'manual','Manual',NULL,NULL,2);
/*!40000 ALTER TABLE `wp_optionvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_post2cat`
--

DROP TABLE IF EXISTS `wp_post2cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_post2cat` (
  `rel_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`rel_id`),
  KEY `post_id` (`post_id`,`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_post2cat`
--

LOCK TABLES `wp_post2cat` WRITE;
/*!40000 ALTER TABLE `wp_post2cat` DISABLE KEYS */;
INSERT INTO `wp_post2cat` VALUES (1,1,1),(2,2,1),(3,3,1);
/*!40000 ALTER TABLE `wp_post2cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` int(4) NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` text NOT NULL,
  `post_title` text NOT NULL,
  `post_category` int(4) NOT NULL DEFAULT '0',
  `post_excerpt` text NOT NULL,
  `post_lat` float DEFAULT NULL,
  `post_lon` float DEFAULT NULL,
  `post_status` enum('publish','draft','private') NOT NULL DEFAULT 'publish',
  `comment_status` enum('open','closed') NOT NULL DEFAULT 'open',
  `ping_status` enum('open','closed') NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL,
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL,
  `post_content_filtered` text NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `post_status` (`post_status`),
  KEY `post_name` (`post_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2013-05-24 08:09:06','Welcome to WordPress. This is the first post. Edit or delete it, then start blogging!','Hello world!',1,'',NULL,NULL,'publish','open','open','','hello-world','','','0000-00-00 00:00:00',''),(2,1,'2013-05-25 07:07:58','This is a test post','Test',0,'',NULL,NULL,'publish','','','','test','','','0000-00-00 00:00:00',''),(3,1,'2013-05-25 18:09:47','<div class=\\\"storycontent\\\">\r\n	<p>I am proud to announce that WordPress 1.0 is <a href=\\\"http://wordpress.org/download/\\\">now available</a>. As the version number indicates, this is a major step for us and a great deal of effort has gone into it.</p>\r\n<dl>\r\n<dt>Search engine friendly permalinks</dt>\r\n<dd>You may now structure your permalinks in a manner that is not only more meaningful, semantic, and \\\"cruft-free,\\\" but also friendlier to search engines. And all it takes is <a href=\\\"http://wordpress.org/development/archives/67/\\\">three steps</a>. A common server module called <code>mod_rewrite</code> is currently required for this functionality. </dd>\r\n<dt>Multiple Categories </dt>\r\n<dd>WordPress now supports true multiple categories per post. This means that you could have one post in twenty different categories, if you wanted. Categories  also now have a nice URI such as <code>/category/category-name</code> if you have the new permalink option enabled. </dd>\r\n<dt>Dead simple installation and upgrade</dt>\r\n<dd>One of the things we most frequently receive feedback about is how easy our installation process is. Well, it got easier. The one configuration file you have to edit, <code>wp-config.php</code>, is now able to be set up through the browser. If you don&#8217;t have the proper permissions for that, we have improved instructions to make everything easy for you. Also vastly improved is our new <strong>intelligent upgrade code</strong>. If you&#8217;re upgrading from any previous version of WordPress you can just run <code>upgrade.php</code> and it will intelligently update the database.</dd>\r\n<dt>Comment moderation</dt>\r\n<dd>You can now set up comments to be approved before they are displayed on your main site. This in addition to the control you have over whether comments are open or closed from previous versions. We&#8217;ve made this system very easy to use and edit hundreds of comments at a time.</dd>\r\n<dt><a href=\\\"http://gmpg.org/xfn/\\\">XFN</a> Support</dt>\r\n<dd>XFN is a simple way to reperesent human relationships in hyperlinks. WordPress now allows editing of <code>rel</code> values through an easy interface very similar to the <a href=\\\"http://gmpg.org/xfn/creator\\\">XFN Creator</a>. </dd>\r\n<dt>Atom Support</dt>\r\n<dd>WordPress 1.0 supports Atom .3 syndication and auto-discovery.</dd>\r\n<dt>Edit this page/comment</dt>\r\n<dd>There is a new template tag (included in the new default template) that shows an link directly to the admin page for editing a post or comment but only if you have the permission to edit it. This means it makes easy for you, but your site visitors never see it.</dd>\r\n<dt>Major admin interface changes</dt>\r\n<dd>\r\n<dl>\r\n<dt>Ping/TrackBack on edit</dt>\r\n<dt>New, faster posting interface</dt>\r\n<dt>Create users from admin page </dt>\r\n</dl>\r\n</dd>\r\n<dt>Cleaned up structure and naming scheme</dt>\r\n<dd>WordPress now has a consistent and future-minded naming scheme that has cleaned up the file and directory structure considerably.</dd>\r\n<dt>New OPML import support </dt>\r\n<dd>You can now import OPML files from blogrolling.com or blo.gs.</dd>\r\n<dt>Store XML feed URIs with your links</dt>\r\n<dd>Associate an XML feed with any link, which may later be used for integrated aggregator functionality.</dd>\r\n<dt>Trackback on edit</dt>\r\n<dd>You can now send trackback pings when editing a post.</dd>\r\n<dt>Additional template tags</dt>\r\n<dd>We&#8217;ve added a few template tags for addressing the new fields, such as author and category descriptions, link XML links, et cetera.</dd>\r\n<dt>Movable Type and Textpattern import tools</dt>\r\n<dd>You can now easily upgrade to WordPress from any of the following tools: Blogger, Movable Type, Textpattern, b2, and Greymatter. Just run the proper import script in your <code>wp-admin</code> directory and you&#8217;re good to go.</dd>\r\n</dl>\r\n<div class=\\\"sharedaddy sd-sharing-enabled\\\"><div class=\\\"robots-nocontent sd-block sd-social sd-social-icon-text sd-sharing\\\"><h3 class=\\\"sd-title\\\">Share this:</h3><div class=\\\"sd-content\\\"><ul><li class=\\\"share-twitter\\\"><a rel=\\\"nofollow\\\" class=\\\"share-twitter sd-button share-icon\\\" href=\\\"http://wordpress.org/news/2004/01/wordpress-10/?share=twitter&amp;nb=1\\\" target=\\\"_blank\\\" title=\\\"Click to share on Twitter\\\" id=\\\"sharing-twitter-65\\\"><span>Twitter</span></a></li><li class=\\\"share-facebook\\\"><a rel=\\\"nofollow\\\" class=\\\"share-facebook sd-button share-icon\\\" href=\\\"http://wordpress.org/news/2004/01/wordpress-10/?share=facebook&amp;nb=1\\\" target=\\\"_blank\\\" title=\\\"Share on Facebook\\\" id=\\\"sharing-facebook-65\\\"><span>Facebook</span></a></li><li class=\\\"share-google-plus-1\\\"><a rel=\\\"nofollow\\\" class=\\\"share-google-plus-1 sd-button share-icon\\\" href=\\\"http://wordpress.org/news/2004/01/wordpress-10/?share=google-plus-1&amp;nb=1\\\" target=\\\"_blank\\\" title=\\\"Click to share on Google+\\\" id=\\\"sharing-google-65\\\"><span>Google +1</span></a></li><li class=\\\"share-email share-service-visible\\\"><a rel=\\\"nofollow\\\" class=\\\"share-email sd-button share-icon\\\" href=\\\"http://wordpress.org/news/2004/01/wordpress-10/?share=email&amp;nb=1\\\" target=\\\"_blank\\\" title=\\\"Click to email this to a friend\\\"><span>Email</span></a></li><li class=\\\"share-end\\\"></li></ul><div class=\\\"sharing-clear\\\"></div></div></div></div></div>','WordPress 1.0',0,'',NULL,NULL,'publish','','','','wordpress-10','','','0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
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
  `user_description` text NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `user_login` (`user_login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','4cdbfb','','','admin',0,'you@example.com','','127.0.0.1','127.0.0.1','','2000-00-00 00:00:01',10,'','','','nickname','');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-25 19:35:28
