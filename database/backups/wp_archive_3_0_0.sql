-- MySQL dump 10.13  Distrib 5.5.31, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: wp_archive_3_0_0
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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_approved` (`comment_approved`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Mr WordPress','','http://wordpress.org/','','2013-05-24 08:37:18','2013-05-24 08:37:18','Hi, this is a comment.<br />To delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
INSERT INTO `wp_links` VALUES (1,'http://codex.wordpress.org/','Documentation','','','','Y',1,0,'0000-00-00 00:00:00','','',''),(2,'http://wordpress.org/development/','WordPress Blog','','','','Y',1,0,'0000-00-00 00:00:00','','','http://wordpress.org/development/feed/'),(3,'http://wordpress.org/extend/ideas/','Suggest Ideas','','','','Y',1,0,'0000-00-00 00:00:00','','',''),(4,'http://wordpress.org/support/','Support Forum','','','','Y',1,0,'0000-00-00 00:00:00','','',''),(5,'http://wordpress.org/extend/plugins/','Plugins','','','','Y',1,0,'0000-00-00 00:00:00','','',''),(6,'http://wordpress.org/extend/themes/','Themes','','','','Y',1,0,'0000-00-00 00:00:00','','',''),(7,'http://planet.wordpress.org/','WordPress Planet','','','','Y',1,0,'0000-00-00 00:00:00','','','');
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,0,'siteurl','http://wp-archive.local/3.0.0','yes'),(2,0,'blogname','WordPress 3.0 Thelonious','yes'),(3,0,'blogdescription','Just another WordPress site','yes'),(4,0,'users_can_register','0','yes'),(5,0,'admin_email','admin@wp-archive.local','yes'),(6,0,'start_of_week','1','yes'),(7,0,'use_balanceTags','0','yes'),(8,0,'use_smilies','1','yes'),(9,0,'require_name_email','1','yes'),(10,0,'comments_notify','1','yes'),(11,0,'posts_per_rss','10','yes'),(12,0,'rss_use_excerpt','0','yes'),(13,0,'mailserver_url','mail.example.com','yes'),(14,0,'mailserver_login','login@example.com','yes'),(15,0,'mailserver_pass','password','yes'),(16,0,'mailserver_port','110','yes'),(17,0,'default_category','1','yes'),(18,0,'default_comment_status','open','yes'),(19,0,'default_ping_status','open','yes'),(20,0,'default_pingback_flag','0','yes'),(21,0,'default_post_edit_rows','10','yes'),(22,0,'posts_per_page','10','yes'),(23,0,'date_format','F j, Y','yes'),(24,0,'time_format','g:i a','yes'),(25,0,'links_updated_date_format','F j, Y g:i a','yes'),(26,0,'links_recently_updated_prepend','<em>','yes'),(27,0,'links_recently_updated_append','</em>','yes'),(28,0,'links_recently_updated_time','120','yes'),(29,0,'comment_moderation','0','yes'),(30,0,'moderation_notify','1','yes'),(31,0,'permalink_structure','','yes'),(32,0,'gzipcompression','0','yes'),(33,0,'hack_file','0','yes'),(34,0,'blog_charset','UTF-8','yes'),(35,0,'moderation_keys','','no'),(36,0,'active_plugins','a:0:{}','yes'),(37,0,'home','http://wp-archive.local/3.0.0','yes'),(38,0,'category_base','','yes'),(39,0,'ping_sites','http://rpc.pingomatic.com/','yes'),(40,0,'advanced_edit','0','yes'),(41,0,'comment_max_links','2','yes'),(42,0,'gmt_offset','0','yes'),(43,0,'default_email_category','1','yes'),(44,0,'recently_edited','','no'),(45,0,'template','twentyten','yes'),(46,0,'stylesheet','twentyten','yes'),(47,0,'comment_whitelist','1','yes'),(48,0,'blacklist_keys','','no'),(49,0,'comment_registration','0','yes'),(50,0,'rss_language','en','yes'),(51,0,'html_type','text/html','yes'),(52,0,'use_trackback','0','yes'),(53,0,'default_role','subscriber','yes'),(54,0,'db_version','15260','yes'),(55,0,'uploads_use_yearmonth_folders','1','yes'),(56,0,'upload_path','','yes'),(57,0,'blog_public','0','yes'),(58,0,'default_link_category','2','yes'),(59,0,'show_on_front','posts','yes'),(60,0,'tag_base','','yes'),(61,0,'show_avatars','1','yes'),(62,0,'avatar_rating','G','yes'),(63,0,'upload_url_path','','yes'),(64,0,'thumbnail_size_w','150','yes'),(65,0,'thumbnail_size_h','150','yes'),(66,0,'thumbnail_crop','1','yes'),(67,0,'medium_size_w','300','yes'),(68,0,'medium_size_h','300','yes'),(69,0,'avatar_default','mystery','yes'),(70,0,'enable_app','0','yes'),(71,0,'enable_xmlrpc','0','yes'),(72,0,'large_size_w','1024','yes'),(73,0,'large_size_h','1024','yes'),(74,0,'image_default_link_type','file','yes'),(75,0,'image_default_size','','yes'),(76,0,'image_default_align','','yes'),(77,0,'close_comments_for_old_posts','0','yes'),(78,0,'close_comments_days_old','14','yes'),(79,0,'thread_comments','1','yes'),(80,0,'thread_comments_depth','5','yes'),(81,0,'page_comments','0','yes'),(82,0,'comments_per_page','50','yes'),(83,0,'default_comments_page','newest','yes'),(84,0,'comment_order','asc','yes'),(85,0,'sticky_posts','a:0:{}','yes'),(86,0,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(87,0,'widget_text','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(88,0,'widget_rss','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(89,0,'timezone_string','','yes'),(90,0,'embed_autourls','1','yes'),(91,0,'embed_size_w','','yes'),(92,0,'embed_size_h','600','yes'),(93,0,'page_for_posts','0','yes'),(94,0,'page_on_front','0','yes'),(95,0,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(96,0,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(97,0,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(98,0,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(99,0,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(100,0,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(101,0,'sidebars_widgets','a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:19:\"primary-widget-area\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:21:\"secondary-widget-area\";a:0:{}s:24:\"first-footer-widget-area\";a:0:{}s:25:\"second-footer-widget-area\";a:0:{}s:24:\"third-footer-widget-area\";a:0:{}s:25:\"fourth-footer-widget-area\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(102,0,'cron','a:4:{i:1369384640;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1369384646;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1369507846;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}s:7:\"version\";i:2;}','yes'),(103,0,'_transient_doing_cron','1369509608','yes'),(106,0,'_transient_random_seed','fbb5ed26e2ecefcfbb09455429d3475f','yes'),(107,0,'auth_salt','P!:C+>kvq(*rK@zcJ7za2}..z8EG-XSI,l)13^.?Y;#M$UBMG<*1$1XS{x}inW.U','yes'),(108,0,'logged_in_salt','xy CQW`]4/SR}&XlmxE%Ohu6.[go!;+AO+K<G*&&B:hiQSn4Y`Wv1L*{JWR|j,@5','yes'),(109,0,'widget_pages','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(110,0,'widget_calendar','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(111,0,'widget_links','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(112,0,'widget_tag_cloud','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(113,0,'widget_nav_menu','a:2:{i:2;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(114,0,'_site_transient_update_core','O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:3:\"3.0\";s:12:\"last_checked\";i:1369507789;}','yes'),(115,0,'_site_transient_update_plugins','O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1369507789;}','yes'),(116,0,'_site_transient_update_themes','O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1369507789;}','yes'),(117,0,'dashboard_widget_options','a:4:{s:25:\"dashboard_recent_comments\";a:1:{s:5:\"items\";i:5;}s:24:\"dashboard_incoming_links\";a:5:{s:4:\"home\";s:29:\"http://wp-archive.local/3.0.0\";s:4:\"link\";s:105:\"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://wp-archive.local/3.0.0/\";s:3:\"url\";s:138:\"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://wp-archive.local/3.0.0/\";s:5:\"items\";i:10;s:9:\"show_date\";b:0;}s:17:\"dashboard_primary\";a:7:{s:4:\"link\";s:33:\"http://wordpress.org/development/\";s:3:\"url\";s:38:\"http://wordpress.org/development/feed/\";s:5:\"title\";s:14:\"WordPress Blog\";s:5:\"items\";i:2;s:12:\"show_summary\";i:1;s:11:\"show_author\";i:0;s:9:\"show_date\";i:1;}s:19:\"dashboard_secondary\";a:7:{s:4:\"link\";s:28:\"http://planet.wordpress.org/\";s:3:\"url\";s:33:\"http://planet.wordpress.org/feed/\";s:5:\"title\";s:20:\"Other WordPress News\";s:5:\"items\";i:5;s:12:\"show_summary\";i:0;s:11:\"show_author\";i:0;s:9:\"show_date\";i:0;}}','yes'),(118,0,'nonce_salt','#qyL%#=4nb2SIdnO$o(.<Cv0tiv7d&+|;_y9>dNO_ad)WIh+Kdh((PdxX`!~T:1V','yes'),(119,0,'current_theme','Twenty Ten','yes'),(120,0,'can_compress_scripts','1','yes'),(123,0,'_site_transient_timeout_theme_roots','1369514981','yes'),(124,0,'_site_transient_theme_roots','a:1:{s:9:\"twentyten\";s:7:\"/themes\";}','yes'),(125,0,'_transient_timeout_plugin_slugs','1369594191','no'),(126,0,'_transient_plugin_slugs','a:2:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,4,'_edit_last','1'),(3,4,'_edit_lock','1369507846'),(4,4,'_encloseme','1'),(5,4,'_wp_old_slug','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` text NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2013-05-24 08:37:18','2013-05-24 08:37:18','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','publish','open','open','','hello-world','','','2013-05-24 08:37:18','2013-05-24 08:37:18','',0,'http://wp-archive.local/3.0.0/?p=1',0,'post','',1),(2,1,'2013-05-24 08:37:18','2013-05-24 08:37:18','This is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of WordPress.','About','','publish','open','open','','about','','','2013-05-24 08:37:18','2013-05-24 08:37:18','',0,'http://wp-archive.local/3.0.0/?page_id=2',0,'page','',0),(3,1,'2013-05-24 08:37:29','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2013-05-24 08:37:29','0000-00-00 00:00:00','',0,'http://wp-archive.local/3.0.0/?p=3',0,'post','',0),(4,1,'2013-05-25 18:50:46','2013-05-25 18:50:46','<div class=\"storycontent\">\r\n	<p>Arm your vuvuzelas: WordPress 3.0, the thirteenth major release of WordPress and the culmination of half a year of work by 218 contributors, is <a href=\"http://wordpress.org/download/\">now available for download</a> (or <a href=\"http://codex.wordpress.org/Dashboard_Updates_SubPanel\">upgrade within your dashboard</a>). Major new features in this release include a sexy <strong>new default theme called Twenty Ten</strong>. Theme developers have new APIs that allow them to easily implement custom backgrounds, headers, shortlinks, <a href=\"http://codex.wordpress.org/Appearance_Menus_SubPanel\">menus</a> (no more file editing), <a href=\"http://codex.wordpress.org/Custom_Post_Types\">post types</a>, and <a href=\"http://codex.wordpress.org/Custom_Taxonomies\">taxonomies</a>. (Twenty Ten theme shows all of that off.) Developers and network admins will appreciate the long-awaited <strong>merge of MU and WordPress</strong>, creating the new multi-site functionality which makes it possible to run one blog or ten million from the same installation. As a user, you will love the new <strong>lighter interface</strong>, the contextual help on every screen, the <strong>1,217 bug fixes and feature enhancements</strong>, bulk updates so you can upgrade 15 plugins at once with a single click, and blah blah blah just watch the video. <img src=\"http://wordpress.org/news/wp-includes/images/smilies/icon_smile.gif\" alt=\":)\" class=\"wp-smiley\">   <em>(In HD, if you can, so you can catch the Easter eggs.)</em></p>\r\n<p><object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" width=\"640\" height=\"360\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0\"><param name=\"flashvars\" value=\"guid=BQtfIEY1&amp;width=640&amp;height=360&amp;locksize=no&amp;dynamicseek=false&amp;qc_publisherId=p-18-mFEk4J448M\"><param name=\"src\" value=\"http://v.wordpress.com/wp-content/plugins/video/flvplayer.swf?ver=1.21\"><param name=\"wmode\" value=\"transparent\"><param name=\"allowfullscreen\" value=\"true\"><embed type=\"application/x-shockwave-flash\" width=\"640\" height=\"360\" src=\"http://v.wordpress.com/wp-content/plugins/video/flvplayer.swf?ver=1.21\" allowfullscreen=\"true\" wmode=\"transparent\" flashvars=\"guid=BQtfIEY1&amp;width=640&amp;height=360&amp;locksize=no&amp;dynamicseek=false&amp;qc_publisherId=p-18-mFEk4J448M\"></object></p>\r\n<p>If you’d like to embed the WordPress 3.0 video tour in your blog, copy and paste this code for the high quality version:</p>\r\n<div><div id=\"highlighter_533656\" class=\"syntaxhighlighter  xml\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\"><tbody><tr><td class=\"gutter\"><div class=\"line number1 index0 alt2\">1</div></td><td class=\"code\"><div class=\"container\"><div class=\"line number1 index0 alt2\"><code class=\"xml plain\">&lt;</code><code class=\"xml keyword\">embed</code> <code class=\"xml color1\">src</code><code class=\"xml plain\">=</code><code class=\"xml string\">\"<a href=\"http://v.wordpress.com/wp-content/plugins/video/flvplayer.swf?ver=1.21\">http://v.wordpress.com/wp-content/plugins/video/flvplayer.swf?ver=1.21</a>\"</code> <code class=\"xml color1\">type</code><code class=\"xml plain\">=</code><code class=\"xml string\">\"application/x-shockwave-flash\"</code> <code class=\"xml color1\">width</code><code class=\"xml plain\">=</code><code class=\"xml string\">\"640\"</code> <code class=\"xml color1\">height</code><code class=\"xml plain\">=</code><code class=\"xml string\">\"360\"</code> <code class=\"xml color1\">wmode</code><code class=\"xml plain\">=</code><code class=\"xml string\">\"transparent\"</code> <code class=\"xml color1\">seamlesstabbing</code><code class=\"xml plain\">=</code><code class=\"xml string\">\"true\"</code> <code class=\"xml color1\">allowfullscreen</code><code class=\"xml plain\">=</code><code class=\"xml string\">\"true\"</code> <code class=\"xml color1\">allowscriptaccess</code><code class=\"xml plain\">=</code><code class=\"xml string\">\"always\"</code> <code class=\"xml color1\">overstretch</code><code class=\"xml plain\">=</code><code class=\"xml string\">\"true\"</code> <code class=\"xml color1\">flashvars</code><code class=\"xml plain\">=</code><code class=\"xml string\">\"guid=BQtfIEY1&amp;amp;width=640&amp;amp;height=360&amp;amp;locksize=no&amp;amp;dynamicseek=false&amp;amp;qc_publisherId=p-18-mFEk4J448M\"</code> <code class=\"xml color1\">title</code><code class=\"xml plain\">=</code><code class=\"xml string\">\"Introducing WordPress 3.0 &amp;quot;Thelonious&amp;quot;\"</code><code class=\"xml plain\">&gt;&lt;/</code><code class=\"xml keyword\">embed</code><code class=\"xml plain\">&gt;</code></div></div></td></tr></tbody></table></div></div>\r\n<p>For a more comprehensive look at everything that has improved in 3.0 check out <a href=\"http://codex.wordpress.org/Version_3.0\">3.0′s Codex page</a> or the <a href=\"http://core.trac.wordpress.org/query?group=status&amp;milestone=3.0&amp;desc=1&amp;order=priority\">long list of issues in Trac</a>. (We’re trying to keep these announcement posts shorter.) Whew! That’s a lot packed into one release. I can’t think of a better  way to kick off the 3.X cycle we’ll be in for the next two and a half  years.</p>\r\n<h3>The Future</h3>\r\n<p>Normally this is where I’d say we’re about to start work on 3.1, but we’re actually not. We’re going to take a release cycle off to focus on all of the things around WordPress. The growth of the community has been breathtaking, including over 10.3 million downloads of version 2.9, but so much of our effort has been focused on the core software it hasn’t left much time for anything else. Over the next three months we’re going to split into ninja/pirate teams focused on different areas of the around-WordPress experience, including the showcase, Codex, forums, profiles, update and compatibility APIs, theme directory, plugin directory, mailing lists, core plugins, wordcamp.org… the possibilities are endless. The goal of the teams isn’t going to be to make things perfect all at once, just better than they are today. We think this investment of time will give us a much stronger infrastructure to grow WordPress.org for the many tens of millions of users that will join us during the 3.X release cycle.</p>\r\n<h3>It Takes a Village</h3>\r\n<p>I’m proud to acknowledge the contributions of the following <strong>218</strong> people to the 3.0 release cycle. These are the folks that make WordPress what it is, whose collaboration and hard work enable us to build something greater than the sum of our parts. In alphabetical order, of course.</p>\r\n<p><strong>Committers:</strong> <a href=\"http://www.laptoptips.ca/\">azaozz (Andrew  Ozz)</a> (<a title=\"azaozz at WP Profiles\" href=\"http://profiles.wordpress.org/azaozz\">prof</a>), <a href=\"http://dd32.id.au/\">dd32 (Dion Hulse)</a> (<a title=\"dd32 at WP Profiles\" href=\"http://profiles.wordpress.org/dd32\">prof</a>), <a href=\"http://ocaoimh.ie/\">donncha (Donncha O Caoimh)</a> (<a title=\"donncha at WP Profiles\" href=\"http://profiles.wordpress.org/donncha\">prof</a>), <a href=\"http://iammattthomas.com/\">iammattthomas (Matt Thomas)</a> (<a title=\"iammattthomas at WP Profiles\" href=\"http://profiles.wordpress.org/iammattthomas\">prof</a>), <a href=\"http://josephscott.org/\">josephscott (Joseph Scott)</a> (<a title=\"josephscott at WP Profiles\" href=\"http://profiles.wordpress.org/josephscott\">prof</a>), <a href=\"http://txfx.net/\">markjaquith (Mark Jaquith)</a> (<a title=\"markjaquith at WP Profiles\" href=\"http://profiles.wordpress.org/markjaquith\">prof</a>), <a href=\"http://ma.tt/\">matt (Matt  Mullenweg)</a> (<a title=\"matt at WP Profiles\" href=\"http://profiles.wordpress.org/matt\">prof</a>), <a href=\"http://andrewnacin.com/\">nacin (Andrew Nacin)</a> (<a title=\"nacin at WP Profiles\" href=\"http://profiles.wordpress.org/nacin\">prof</a>), <a href=\"http://nikolay.bg/\">nbachiyski (Николай Бачийски)</a> (<a title=\"nbachiyski at WP Profiles\" href=\"http://profiles.wordpress.org/nbachiyski\">prof</a>), <a href=\"http://boren.nu/\">ryan (Ryan Boren)</a> (<a title=\"ryan at WP Profiles\" href=\"http://profiles.wordpress.org/ryan\">prof</a>), <a href=\"http://blog.ftwr.co.uk/\">westi (Peter Westwood)</a> (<a title=\"westi at WP Profiles\" href=\"http://profiles.wordpress.org/westi\">prof</a>), and <a href=\"http://wpmututorials.com/\">wpmuguru (Ron Rennick)</a> (<a title=\"wpmuguru at WP Profiles\" href=\"http://profiles.wordpress.org/wpmuguru\">prof</a>). <strong>Contributors:</strong> <a href=\"http://xavisys.com/\">aaroncampbell (Aaron Campbell)</a> (<a title=\"aaroncampbell at WP Profiles\" href=\"http://profiles.wordpress.org/aaroncampbell\">prof</a>), akerem (<a title=\"akerem at WP Profiles\" href=\"http://profiles.wordpress.org/akerem\">prof</a>), <a href=\"http://alexking.org/\">alexkingorg (Alex King)</a> (<a title=\"alexkingorg at WP Profiles\" href=\"http://profiles.wordpress.org/alexkingorg\">prof</a>), amattie (<a title=\"amattie at WP Profiles\" href=\"http://profiles.wordpress.org/amattie\">prof</a>), <a href=\"http://notfornoone.com/\">ampt (Luke Gallagher)</a> (<a title=\"ampt at WP Profiles\" href=\"http://profiles.wordpress.org/ampt\">prof</a>), <a href=\"http://wpmututorials.com/\">andrea_r</a> (<a title=\"andrea_r at WP Profiles\" href=\"http://profiles.wordpress.org/andrea_r\">prof</a>), <a href=\"http://andreasnurbo.com/\">andreasnrb (Andreas Nurbo)</a> (<a title=\"andreasnrb at WP Profiles\" href=\"http://profiles.wordpress.org/andreasnrb\">prof</a>), <a href=\"http://twitter.com/anilo4ever\">anilo4ever (Angelo Verona)</a> (<a title=\"anilo4ever at WP Profiles\" href=\"http://profiles.wordpress.org/anilo4ever\">prof</a>), <a href=\"http://apeatling.wordpress.com/\">apeatling (Andy Peatling)</a> (<a title=\"apeatling at WP Profiles\" href=\"http://profiles.wordpress.org/apeatling\">prof</a>), <a href=\"http://blog.apokalyptik.com/\">apokalyptik (Demitrious Kelly)</a> (<a title=\"apokalyptik at WP Profiles\" href=\"http://profiles.wordpress.org/apokalyptik\">prof</a>), <a href=\"http://www.mailpress.org/\">arena (André Renaut)</a> (<a title=\"arena at WP Profiles\" href=\"http://profiles.wordpress.org/arena\">prof</a>), <a href=\"http://barry.wordpress.com/\">barry (Barry Abrahamson)</a> (<a title=\"barry at WP Profiles\" href=\"http://profiles.wordpress.org/barry\">prof</a>), <a href=\"http://digitalize.ca/\">batmoo (Mohammad Jangda)</a> (<a title=\"batmoo at WP Profiles\" href=\"http://profiles.wordpress.org/batmoo\">prof</a>), <a href=\"http://dentedreality.com.au/\">beaulebens (Beau Lebens)</a> (<a title=\"beaulebens at WP Profiles\" href=\"http://profiles.wordpress.org/beaulebens\">prof</a>), <a href=\"http://use.perl.org/~belg4mit/\">belg4mit</a> (<a title=\"belg4mit at WP Profiles\" href=\"http://profiles.wordpress.org/belg4mit\">prof</a>), <a href=\"http://matthewgrichmond.com/dev/\">bigdawggi (Matthew G. Richmond)</a> (<a title=\"blepoxp at WP Profiles\" href=\"http://profiles.wordpress.org/blepoxp\">prof</a>), <a href=\"http://fullthrottledevelopment.com/\">blepoxp (Glenn Ansley)</a> (<a title=\"blepoxp at WP Profiles\" href=\"http://profiles.wordpress.org/blepoxp\">prof</a>), <a href=\"http://twitter.com/thenbrent\">brentes (Brent Shepherd)</a> (<a title=\"brentes at WP Profiles\" href=\"http://profiles.wordpress.org/brentes\">prof</a>), <a href=\"http://colinger.com/\">briancolinger (Brian Colinger)</a> (<a title=\"briancolinger at WP Profiles\" href=\"http://profiles.wordpress.org/briancolinger\">prof</a>), <a href=\"http://www.bumbu.ru/\">bumbu</a> (<a title=\"bumbu at WP Profiles\" href=\"http://profiles.wordpress.org/bumbu\">prof</a>), <a href=\"http://www.caesarsgrunt.com/\">caesarsgrunt (Caesar Schinas)</a> (<a title=\"caesarsgrunt at WP Profiles\" href=\"http://profiles.wordpress.org/caesarsgrunt\">prof</a>), camiloclc (<a title=\"camiloclc at WP Profiles\" href=\"http://profiles.wordpress.org/camiloclc\">prof</a>), CAMWebDesign (<a title=\"CAMWebDesign at WP Profiles\" href=\"http://profiles.wordpress.org/CAMWebDesign\">prof</a>), carbolineum (<a title=\"carbolineum at WP Profiles\" href=\"http://profiles.wordpress.org/carbolineum\">prof</a>), <a href=\"http://blog.caspie.net/\">caspie</a> (<a title=\"caspie at WP Profiles\" href=\"http://profiles.wordpress.org/caspie\">prof</a>), <a href=\"http://www.catiakitahara.com.br/\">catiakitahara (Cátia Kitahara)</a> (<a title=\"catiakitahara at WP Profiles\" href=\"http://profiles.wordpress.org/catiakitahara\">prof</a>), <a href=\"http://www.clarksonenergyhomes.com/wordpress/\">CharlesClarkson (Charles Clarkson)</a> (<a title=\"CharlesClarkson at WP Profiles\" href=\"http://profiles.wordpress.org/CharlesClarkson\">prof</a>), <a href=\"http://chdorner.com/\">chdorner (Christof Dorner)</a> (<a title=\"chdorner at WP Profiles\" href=\"http://profiles.wordpress.org/chdorner\">prof</a>), <a href=\"http://gaarai.com/\">chrisbliss18 (Chris Jean)</a> (<a title=\"chrisbliss18 at WP Profiles\" href=\"http://profiles.wordpress.org/chrisbliss18\">prof</a>), <a href=\"http://vocecommunications.com/\">chrisscott (Chris Scott)</a> (<a title=\"chrisscott at WP Profiles\" href=\"http://profiles.wordpress.org/chrisscott\">prof</a>), <a href=\"http://brandonallen.org/\">cnorris23 (Brandon Allen)</a> (<a title=\"cnorris23 at WP Profiles\" href=\"http://profiles.wordpress.org/cnorris23\">prof</a>), <a href=\"http://coffee2code.com/\">coffee2code (Scott Reilly)</a> (<a title=\"coffee2code at WP Profiles\" href=\"http://profiles.wordpress.org/coffee2code\">prof</a>), computerwiz908 (<a title=\"computerwiz908 at WP Profiles\" href=\"http://profiles.wordpress.org/computerwiz908\">prof</a>), <a href=\"http://www.cyberhobo.net/\">cyberhobo (Dylan Kuhn)</a> (<a title=\"cyberhobo at WP Profiles\" href=\"http://profiles.wordpress.org/cyberhobo\">prof</a>), <a href=\"http://dan-cole.com/\">dancole (Dan Cole)</a> (<a title=\"dancole at WP Profiles\" href=\"http://profiles.wordpress.org/dancole\">prof</a>), <a href=\"http://danielkoskinen.com/\">Daniel Koskinen</a> <!--PROF?-->, <a href=\"http://gsocdk.wordpress.com/\">deepak.seth (Deepak Seth)</a>, <a href=\"http://op111.net/\">demetris (Δημήτρης Κίκιζας)</a> (<a title=\"demetris at WP Profiles\" href=\"http://profiles.wordpress.org/demetris\">prof</a>), <a href=\"http://www.semiologic.com/\">Denis-de-Bernardy</a> (<a title=\"Denis-de-Bernardy at WP Profiles\" href=\"http://profiles.wordpress.org/Denis-de-Bernardy\">prof</a>), <a href=\"http://www.milandinic.com/\">dimadin (Milan Dinić)</a> (<a title=\"dimadin at WP Profiles\" href=\"http://profiles.wordpress.org/dimadin\">prof</a>), <a href=\"http://twitter.com/dndrnkrd\">dndrnkrd (Dan Drinkard)</a> (<a title=\"dndrnkrd at WP Profiles\" href=\"http://profiles.wordpress.org/dndrnkrd\">prof</a>), <a href=\"http://docwhat.org/\">docwhat</a> (<a title=\"docwhat at WP Profiles\" href=\"http://profiles.wordpress.org/docwhat\">prof</a>), <a href=\"http://twitter.com/dougwrites\">dougwrites</a> (<a title=\"dougwrites at WP Profiles\" <br=\"\">\r\n href=”http://profiles.wordpress.org/dougwrites”&gt;prof</a>), <a href=\"http://phiffer.org/\">dphiffer (Dan Phiffer)</a> (<a title=\"dphiffer at WP Profiles\" href=\"http://profiles.wordpress.org/dphiffer\">prof</a>), dragoonis (<a title=\"dragoonis at WP Profiles\" href=\"http://profiles.wordpress.org/dragoonis\">prof</a>), <a href=\"http://wpvibe.com/\">dremeda (Dre Armeda)</a> (<a title=\"dremeda at WP Profiles\" href=\"http://profiles.wordpress.org/dremeda\">prof</a>), dtoj <!--PROF?-->, <a href=\"http://dougal.gunters.org/\">dougal (Dougal Campbell)</a> (<a title=\"dougal at WP Profiles\" href=\"http://profiles.wordpress.org/dougal\">prof</a>), <a href=\"http://lionsgoroar.co.uk/\">duck_ (Jon Cave)</a> (<a title=\"duck_ at WP Profiles\" href=\"http://profiles.wordpress.org/duck_\">prof</a>), <a href=\"http://dxjones.com/\">dxjones (David Jones)</a> (<a title=\"dxjones at WP Profiles\" href=\"http://profiles.wordpress.org/dxjones\">prof</a>), <a href=\"http://eddieringle.com/\">eddieringle (Eddie Ringle)</a> (<a title=\"eddieringle at WP Profiles\" href=\"http://profiles.wordpress.org/eddieringle\">prof</a>), <a href=\"http://mindreantre.se/\">edward mindreantre (Edward Hevlund)</a>, eoinomurchu (<a title=\"eoinomurchu at WP Profiles\" href=\"http://profiles.wordpress.org/eoinomurchu\">prof</a>), <a href=\"http://field2.com/\">empireoflight/Ben Dunkle</a> (<a title=\"empireoflight at WP Profiles\" href=\"http://profiles.wordpress.org/empireoflight\">prof</a>), <a href=\"http://www.mindsharestrategy.com/\">ericmann (Eric Mann)</a> (<a title=\"ericmann at WP Profiles\" href=\"http://profiles.wordpress.org/ericmann\">prof</a>), <a href=\"http://www.eddiemonge.com/\">etiger13 (Eddie Monge Jr.)</a> (<a title=\"etiger13 at WP Profiles\" href=\"http://profiles.wordpress.org/etiger13\">prof</a>), <a href=\"http://www.ilfilosofo.com/\">filosofo (Austin Matzko)</a> (<a title=\"filosofo at WP Profiles\" href=\"http://profiles.wordpress.org/filosofo\">prof</a>), firebird75 (<a title=\"firebird75 at WP Profiles\" href=\"http://profiles.wordpress.org/firebird75\">prof</a>), <a href=\"http://www.frankieroberto.com/\">frankieroberto (Frankie Roberto)</a> (<a title=\"frankieroberto at WP Profiles\" href=\"http://profiles.wordpress.org/frankieroberto\">prof</a>), <a href=\"http://frumph.net/\">Frumph (Philip M. Hofer)</a> (<a title=\"Frumph at WP Profiles\" href=\"http://profiles.wordpress.org/Frumph\">prof</a>), <a href=\"http://www.garyc40.com/\">garyc40 (Gary Cao)</a> (<a title=\"garyc40 at WP Profiles\" href=\"http://profiles.wordpress.org/garyc40\">prof</a>), <a href=\"http://gaut.am/\">gautam2011</a> (<a title=\"gautam2011 at WP Profiles\" href=\"http://profiles.wordpress.org/gautam2011\">prof</a>), <a href=\"http://twitter.com/garymross\">Gary Ross (Gazzer)</a> <!--PROF?-->, <a href=\"http://www.dev4press.com/\">GDragoN (Milan Petrovic)</a> (<a title=\"GDragoN at WP Profiles\" href=\"http://profiles.wordpress.org/GDragoN\">prof</a>), <a href=\"http://justintadlock.com/\">greenshady (Justin Tadlock)</a> (<a title=\"greenshady at WP Profiles\" href=\"http://profiles.wordpress.org/greenshady\">prof</a>), <a href=\"http://www.dennismorhardt.de/\">GIGALinux (Dennis Morhardt)</a> (<a title=\"GIGALinux at WP Profiles\" href=\"http://profiles.wordpress.org/GIGALinux\">prof</a>), <a href=\"http://hakre.wordpress.com/\">hakre</a> (<a title=\"hakre at WP Profiles\" href=\"http://profiles.wordpress.org/hakre\">prof</a>), husky (<a title=\"husky at WP Profiles\" href=\"http://profiles.wordpress.org/husky\">prof</a>), <a href=\"http://themeshaper.com/\">iandstewart (Ian Stewart)</a> (<a title=\"iandstewart at WP Profiles\" href=\"http://profiles.wordpress.org/iandstewart\">prof</a>), <a href=\"http://ipstenu.org/\">ipstenu (Mika Epstein)</a> (<a title=\"ipstenu at WP Profiles\" href=\"http://profiles.wordpress.org/ipstenu\">prof</a>), <a href=\"http://jacobsantos.com/\">jacobsantos (Jacob Santos)</a> (<a title=\"jacobsantos at WP Profiles\" href=\"http://profiles.wordpress.org/jacobsantos\">prof</a>), <a href=\"http://om4.com.au/\">jamescollins (James Collins)</a> (<a title=\"jamescollins at WP Profiles\" href=\"http://profiles.wordpress.org/jamescollins\">prof</a>), <a href=\"http://jane.wordpress.com\">jane (Jane Wells)</a> (<a title=\"jane at WP Profiles\" href=\"http://profiles.wordpress.org/jane\">prof</a>), <a href=\"http://blog.trailmeme.com/\">jbsil (Jesse Silverstein)</a> (<a title=\"jbsil at WP Profiles\" href=\"http://profiles.wordpress.org/jbsil\">prof</a>), <a href=\"http://bethesignal.org/\">jdub (Jeff Waugh)</a> (<a title=\"jdub at WP Profiles\" href=\"http://profiles.wordpress.org/jdub\">prof</a>), <a href=\"http://www.jeffikus.com/\">jeffikus (Jeffrey Pearce)</a> (<a title=\"jeffikus at WP Profiles\" href=\"http://profiles.wordpress.org/jeffikus\">prof</a>), <a href=\"http://blog.jeffstieler.com/\">jeffstieler (Jeff Stieler)</a> (<a title=\"jeffstieler at WP Profiles\" href=\"http://profiles.wordpress.org/jeffstieler\">prof</a>), <a href=\"http://simianuprising.com/\">jeremyclarke (Jeremy Clarke)</a> (<a title=\"jeremyclarke at WP Profiles\" href=\"http://profiles.wordpress.org/jeremyclarke\">prof</a>), <a href=\"http://www.jfarthing.com/\">jfarthing84 (Jeff Farthing)</a> (<a title=\"jfarthing84 at WP Profiles\" href=\"http://profiles.wordpress.org/jfarthing84\">prof</a>), <a href=\"http://www.jamesdimick.com/\">Jick (James Dimick)</a> (<a title=\"Jick at WP Profiles\" href=\"http://profiles.wordpress.org/Jick\">prof</a>), <a href=\"http://jonsview.com/\">jmstacey (Jon Stacey)</a> (<a title=\"jmstacey at WP Profiles\" href=\"http://profiles.wordpress.org/jmstacey\">prof</a>), <a href=\"http://jobjorn.se/\">jobjorn (Jobjörn Folkesson)</a> (<a title=\"jobjorn at WP Profiles\" href=\"http://profiles.wordpress.org/jobjorn\">prof</a>), <a href=\"http://devel.kostdoktorn.se/\">johanee (Johan Eenfeldt)</a> (<a title=\"johanee at WP Profiles\" href=\"http://profiles.wordpress.org/johanee\">prof</a>), <a href=\"http://lud.icro.us/\">johnbillion (John Blackbourn)</a> (<a title=\"johnbillion at WP Profiles\" href=\"http://profiles.wordpress.org/johnbillion\">prof</a>), <a href=\"http://johnjamesjacoby.com/\">johnjamesjacoby/jjj (John James Jacoby)</a> (<a title=\"johnjamesjacoby at WP Profiles\" href=\"http://profiles.wordpress.org/johnjamesjacoby\">prof</a>), <a href=\"http://johnjosephbachir.org/\">johnjosephbachir (John Joseph Bachir)</a> (<a title=\"johnjosephbachir at WP Profiles\" href=\"http://profiles.wordpress.org/johnjosephbachir\">prof</a>), <a href=\"http://johnluetke.net/\">johnl1479 (John Luetke)</a> (<a title=\"johnl1479 at WP Profiles\" href=\"http://profiles.wordpress.org/johnl1479\">prof</a>), <a href=\"http://john.onolan.org/\">johnonolan (John O’Nolan)</a> (<a title=\"johnonolan at WP Profiles\" href=\"http://profiles.wordpress.org/johnonolan\">prof</a>), <a href=\"http://www.johnpbloch.com/\">JohnPBloch/wmrom (John Bloch)</a> (<a title=\"JohnPBloch at WP Profiles\" href=\"http://profiles.wordpress.org/JohnPBloch\">prof</a>), <a href=\"http://yoast.com/\">joostdevalk/yoast (Joost de Valk)</a> (<a title=\"joostdevalk at WP Profiles\" href=\"http://profiles.wordpress.org/joostdevalk\">prof</a>), <a href=\"http://aaron.jorb.in/\">jorbin (Aaron Jorbin)</a> (<a title=\"jorbin at WP Profiles\" href=\"http://profiles.wordpress.org/jorbin\">prof</a>), joshtime (<a title=\"joshtime at WP Profiles\" href=\"http://profiles.wordpress.org/joshtime\">prof</a>), <a href=\"http://serenelabs.com/\">jshreve</a> (<a title=\"jshreve at WP Profiles\" href=\"http://profiles.wordpress.org/jshreve\">prof</a>), <a href=\"http://tyco.ws/\">junsuijin</a> (<a title=\"junsuijin at WP Profiles\" href=\"http://profiles.wordpress.org/junsuijin\">prof</a>), <a href=\"http://www.wangstedt.net/\">kallewangstedt (Karl Wångstedt)</a> (<a title=\"kallewangstedt at WP Profiles\" href=\"http://profiles.wordpress.org/kallewangstedt\">prof</a>), <a href=\"http://www.keighl.com/\">keighl (Kyle Truscott)</a> (<a title=\"keighl at WP Profiles\" href=\"http://profiles.wordpress.org/keighl\">prof</a>), <a href=\"http://agapetry.net/\">kevinB (Kevin Behrens)</a> (<a title=\"kevinB at WP Profiles\" href=\"http://profiles.wordpress.org/kevinB\">prof</a>), <a href=\"http://drylk.com/\">koopersmith (Daryl Koopersmith)</a> (<a title=\"koopersmith at WP Profiles\" href=\"http://profiles.wordpress.org/koopersmith\">prof</a>), <a href=\"http://www.kpdesign.net/\">kpdesign (Kim Parsell)<br>\r\n</a> (<a title=\"kpdesign at WP Profiles\" href=\"http://profiles.wordpress.org/kpdesign\">prof</a>), <a href=\"http://www.ktdreyer.com/\">ktdreyer (Ken Dreyer)</a> (<a title=\"ktdreyer at WP Profiles\" href=\"http://profiles.wordpress.org/ktdreyer\">prof</a>), <a href=\"http://kurtmckee.livejournal.com/\">kurtmckee (Kurt McKee)</a> (<a title=\"kurtmckee at WP Profiles\" href=\"http://profiles.wordpress.org/kurtmckee\">prof</a>), <a href=\"http://moggy.laceous.com/\">laceous</a> (<a title=\"laceous at WP Profiles\" href=\"http://profiles.wordpress.org/laceous\">prof</a>), <a href=\"http://simpledream.net/\">lancewillett (Lance Willett)</a> (<a title=\"lancewillett at WP Profiles\" href=\"http://profiles.wordpress.org/lancewillett\">prof</a>), <a href=\"http://lloydbudd.com/\">lloydbudd (Lloyd Budd)</a> (<a title=\"lloydbudd at WP Profiles\" href=\"http://profiles.wordpress.org/lloydbudd\">prof</a>), lriggle (<a title=\"lriggle at WP Profiles\" href=\"http://profiles.wordpress.org/lriggle\">prof</a>), markauk (<a title=\"markauk at WP Profiles\" href=\"http://profiles.wordpress.org/markauk\">prof</a>), <a href=\"http://www.mark-mcwilliams.com/\">markmcwilliams (Mark McWilliams)</a> (<a title=\"markmcwilliams at WP Profiles\" href=\"http://profiles.wordpress.org/markmcwilliams\">prof</a>), <a href=\"http://markoheijnen.com/\">markoheijnen (Marko Heijnen)</a> (<a title=\"markoheijnen at WP Profiles\" href=\"http://profiles.wordpress.org/markoheijnen\">prof</a>), <a href=\"http://markup.com.ua/\">markup (Sasha Mukhin)</a> (<a title=\"markup at WP Profiles\" href=\"http://profiles.wordpress.org/markup\">prof</a>), mattsains (<a title=\"mattsains at WP Profiles\" href=\"http://profiles.wordpress.org/mattsains\">prof</a>), <a href=\"http://matiasventura.com/\">matveb (Matias Ventura)</a> (<a title=\"matveb at WP Profiles\" href=\"http://profiles.wordpress.org/matveb\">prof</a>), <a href=\"http://blogwaffe.com/\">mdawaffe (Michael Adams)</a> (<a title=\"mdawaffe at WP Profiles\" href=\"http://profiles.wordpress.org/mdawaffe\">prof</a>) <!--mdwaffe on r12524-->, mentel_br (<a title=\"mentel_br at WP Profiles\" href=\"http://profiles.wordpress.org/mentel_br\">prof</a>), <a href=\"http://webdevstudios.com/about/brian-messenlehner/\">messenlehner (Brian Messenlehner)</a> (<a title=\"messenlehner at WP Profiles\" href=\"http://profiles.wordpress.org/messenlehner\">prof</a>), <a href=\"http://twitter.com/miau_jp\">miau_jp</a> (<a title=\"miau_jp at WP Profiles\" href=\"http://profiles.wordpress.org/miau_jp\">prof</a>), <a href=\"http://binarybonsai.com/\">Michael (Michael Heilemann)</a> (<a title=\"Michael at WP Profiles\" href=\"http://profiles.wordpress.org/Michael\">prof</a>), <a href=\"http://codex.wordpress.org/User:MichaelH\">MichaelH</a> (<a title=\"MichaelH at WP Profiles\" href=\"http://profiles.wordpress.org/MichaelH\">prof</a>), <a href=\"http://mikeschinkel.com/\">mikeschinkel (Mike Schinkel)</a> (<a title=\"mikeschinkel at WP Profiles\" href=\"http://profiles.wordpress.org/mikeschinkel\">prof</a>), Miloslav Beňo <!--r14540, r14545-->, <a href=\"http://www.minusfive.com/\">minusfive</a> (<a title=\"minusfive at WP Profiles\" href=\"http://profiles.wordpress.org/minusfive\">prof</a>), <a href=\"http://blogyul.miqrogroove.com/\">miqrogroove (Robert Chapin)</a> (<a title=\"miqrogroove at WP Profiles\" href=\"http://profiles.wordpress.org/miqrogroove\">prof</a>), <a href=\"http://maisonbisson.com/\">misterbisson (Casey Bisson)</a> (<a title=\"misterbisson at WP Profiles\" href=\"http://profiles.wordpress.org/misterbisson\">prof</a>), <a href=\"http://mitcho.com/\">mitchoyoshitaka (mitcho (Michael 芳貴 Erlewine))</a> (<a title=\"mitchoyoshitaka at WP Profiles\" href=\"http://profiles.wordpress.org/mitchoyoshitaka\">prof</a>), <a href=\"http://blog.mmn-o.se/\">MMN-o</a> (<a title=\"MMN-o at WP Profiles\" href=\"http://profiles.wordpress.org/MMN-o\">prof</a>), <a href=\"http://www.herewithme.fr/a-propos\">momo360modena (Amaury Balmer)</a> (<a title=\"momo360modena at WP Profiles\" href=\"http://profiles.wordpress.org/momo360modena\">prof</a>), <a href=\"http://morganestes.wordpress.com/\">morganestes (Morgan Estes)</a> (<a title=\"morganestes at WP Profiles\" href=\"http://profiles.wordpress.org/morganestes\">prof</a>), <a href=\"http://www.misthaven.org.uk/blog/\">mrmist (David McFarlane)</a> (<a title=\"mrmist at WP Profiles\" href=\"http://profiles.wordpress.org/mrmist\">prof</a>), <a href=\"http://nickmomrik.com/\">mtdewvirus (Nick Momrik)</a> (<a title=\"mtdewvirus at WP Profiles\" href=\"http://profiles.wordpress.org/mtdewvirus\">prof</a>), nadavvin (<a title=\"nadavvin at WP Profiles\" href=\"http://profiles.wordpress.org/nadavvin\">prof</a>), <a href=\"http://blog.detlog.org/\">Nao (Naoko  McCracken)</a> (<a title=\"Nao at WP Profiles\" href=\"http://profiles.wordpress.org/Nao\">prof</a>), <a href=\"http://www.nathanrice.net/\">nathanrice (Nathan Rice)</a> (<a title=\"nathanrice at WP Profiles\" href=\"http://profiles.wordpress.org/nathanrice\">prof</a>), <a href=\"http://www.neotrinity.at/\">neoxx (Bernhard Riedl)</a> (<a title=\"neoxx at WP Profiles\" href=\"http://profiles.wordpress.org/nathanrice\">prof</a>), <a href=\"http://www.niallkennedy.com/\">niallkennedy (Niall Kennedy)</a> (<a title=\"niallkennedy at WP Profiles\" href=\"http://profiles.wordpress.org/niallkennedy\">prof</a>), <a href=\"http://www.rpmurphy.com/\">ninjaWR (Ryan Murphy)</a> (<a title=\"ninjaWR at WP Profiles\" href=\"http://profiles.wordpress.org/ninjaWR\">prof</a>), <a href=\"http://noel.io/\">noel (Noël Jackson)</a> (<a title=\"noel at WP Profiles\" href=\"http://profiles.wordpress.org/noel\">prof</a>), <a href=\"http://nomulous.com/\">nomulous (Fletcher Tomalty)</a> (<a title=\"nomulous at WP Profiles\" href=\"http://profiles.wordpress.org/nomulous\">prof</a>), <a href=\"http://ocean90.wphelper.de/\">ocean90 (Dominik Schilling)</a> (<a title=\"ocean90 at WP Profiles\" href=\"http://profiles.wordpress.org/ocean90\">prof</a>), <a href=\"http://ottodestruct.com/\">Otto42 (Samuel Wood)</a> (<a title=\"Otto42 at WP Profiles\" href=\"http://profiles.wordpress.org/Otto42\">prof</a>), pedger (<a title=\"pedger at WP Profiles\" href=\"http://profiles.wordpress.org/pedger\">prof</a>), <a href=\"http://developersmind.com/\">PeteMall</a> (<a title=\"PeteMall at WP Profiles\" href=\"http://profiles.wordpress.org/PeteMall\">prof</a>), pampfelimetten (<a title=\"pampfelimetten at WP Profiles\" href=\"http://profiles.wordpress.org/pampfelimetten\">prof</a>), pnettle (<a title=\"pnettle at WP Profiles\" href=\"http://profiles.wordpress.org/pnettle\">prof</a>), <a href=\"http://www.pslabs.cl/\">PotterSys (Juan)</a> (<a title=\"PotterSys at WP Profiles\" href=\"http://profiles.wordpress.org/PotterSys\">prof</a>), <a href=\"http://cnpstudio.com/\">prettyboymp (Michael Pretty)</a> (<a title=\"prettyboymp at WP Profiles\" href=\"http://profiles.wordpress.org/prettyboymp\">prof</a>), <a href=\"http://ptahdunbar.com/\">ptahdunbar (Ptah Dunbar)</a> (<a title=\"ptahdunbar at WP Profiles\" href=\"http://profiles.wordpress.org/ptahdunbar\">prof</a>), <a href=\"http://www.bdihot.co.il/\">ramiy</a> (<a title=\"ramiy at WP Profiles\" href=\"http://profiles.wordpress.org/ramiy\">prof</a>), <a href=\"http://ranh.co.il/\">RanYanivHartstein (Ran Yaniv Hartstein)</a> (<a title=\"RanYanivHartstein at WP Profiles\" href=\"http://profiles.wordpress.org/RanYanivHartstein\">prof</a>), <a href=\"http://langui.sh/\">reaperhulk (Paul Kehrer)</a> (<a title=\"reaperhulk at WP Profiles\" href=\"http://profiles.wordpress.org/reaperhulk\">prof</a>), reko (<a title=\"reko at WP Profiles\" href=\"http://profiles.wordpress.org/reko\">prof</a>), <a href=\"http://remiprevost.com/\">remi (Rémi Prévost)</a> (<a title=\"remi at WP Profiles\" href=\"http://profiles.wordpress.org/remi\">prof</a>), <a href=\"http://toys.lerdorf.com/\">rlerdorf (Rasmus Lerdorf)</a> (<a title=\"rlerdorf at WP Profiles\" href=\"http://profiles.wordpress.org/rlerdorf\">prof</a>) <!--ALSO r13684-->, <a href=\"http://ryanmccue.info/\">rmccue (Ryan McCue)</a> (<a title=\"rmccue at WP Profiles\" href=\"http://profiles.wordpress.org/rmccue\">prof</a>), rooodini (<a title=\"rooodini at WP Profiles\" href=\"http://profiles.wordpress.org/rooodini\">prof</a>), rovo89 (<a title=\"rovo89 at WP Profiles\" href=\"http://profiles.wordpress.org/rovo89\">prof</a>), <a href=\"http://ruslany.net/\">ruslany</a> (<a title=\"ruslany at WP Profiles\" href=\"&lt;br\">\r\n“http://profiles.wordpress.org/ruslany”&gt;prof</a>), <a href=\"http://skcdev.com/\">sc0ttkclark (Scott Kingsley Clark)</a> (<a title=\"sc0ttkclark at WP Profiles\" href=\"http://profiles.wordpress.org/sc0ttkclark\">prof</a>), scottbasgaard (Scott Basgaard) (<a title=\"scottbasgaard at WP Profiles\" href=\"http://profiles.wordpress.org/scottbasgaard\">prof</a>), ScottMac (<a title=\"ScottMac at WP Profiles\" href=\"http://profiles.wordpress.org/ScottMac\">prof</a>), <a href=\"http://scribu.net/\">scribu</a> (<a title=\"scribu at WP Profiles\" href=\"http://profiles.wordpress.org/scribu\">prof</a>), <a href=\"http://sergeybiryukov.ru/\">SergeyBiryukov (Сергей Бирюков)</a> (<a title=\"SergeyBiryukov at WP Profiles\" href=\"http://profiles.wordpress.org/SergeyBiryukov\">prof</a>), <a href=\"http://bugssite.org/\">ShaneF</a> (<a title=\"ShaneF at WP Profiles\" href=\"http://profiles.wordpress.org/ShaneF\">prof</a>), <a href=\"http://sillybean.net/\">sillybean (Stephanie Leary)</a> (<a title=\"sillybean at WP Profiles\" href=\"http://profiles.wordpress.org/sillybean\">prof</a>), <a href=\"http://simekdesign.eu/\">Simek (Bartosz Kaszubowski)</a> (<a title=\"simek at WP Profiles\" href=\"http://profiles.wordpress.org/simek\">prof</a>), <a href=\"http://www.simonwheatley.co.uk/\">simonwheatley (Simon Wheatley)</a> (<a title=\"simonwheatley at WP Profiles\" href=\"http://profiles.wordpress.org/simonwheatley\">prof</a>), <a href=\"http://simos.info/blog/\">simosx (Σίμος Ξενιτέλλης)</a> (<a title=\"simosx at WP Profiles\" href=\"http://profiles.wordpress.org/simosx\">prof</a>), <a href=\"http://www.poradnik-webmastera.com/\">sirzooro (Daniel Frużyński)</a> (<a title=\"sirzooro at WP Profiles\" href=\"http://profiles.wordpress.org/sirzooro\">prof</a>), <a href=\"http://sivel.net/\">sivel (Matt Martz)</a> (<a title=\"sivel at WP Profiles\" href=\"http://profiles.wordpress.org/sivel\">prof</a>), <a href=\"http://skeltoac.com/\">skeltoac (Andy Skelton)</a> (<a title=\"skeltoac at WP Profiles\" href=\"http://profiles.wordpress.org/skeltoac\">prof</a>), <a href=\"http://www.lukehowell.com/\">snumb130 (Luke Howell)</a> (<a title=\"snumb130 at WP Profiles\" href=\"http://profiles.wordpress.org/snumb130\">prof</a>), <a href=\"http://rayofsolaris.net/\">solarissmoke (Samir Shah)</a> (<a title=\"solarissmoke at WP Profiles\" href=\"http://profiles.wordpress.org/solarissmoke\">prof</a>), sorich87 (<a title=\"sorich87 at WP Profiles\" href=\"http://profiles.wordpress.org/sorich87\">prof</a>), ssandison (<a title=\"ssandison at WP Profiles\" href=\"http://profiles.wordpress.org/ssandison\">prof</a>), stencil (<a title=\"stencil at WP Profiles\" href=\"http://profiles.wordpress.org/stencil\">prof</a>), <a href=\"http://stephdau.wordpress.com/\">stephdau (Stephane Daury)</a> (<a title=\"stephdau at WP Profiles\" href=\"http://profiles.wordpress.org/stephdau\">prof</a>), <a href=\"http://wp.tekapo.com/\">tai</a> (<a title=\"tai at WP Profiles\" href=\"http://profiles.wordpress.org/tai\">prof</a>), TECannon (Tracy Cannon) (<a title=\"TECannon at WP Profiles\" href=\"http://profiles.wordpress.org/TECannon\">prof</a>), <a href=\"http://technosailor.com/\">technosailor (Aaron Brazell)</a> (<a title=\"technosailor at WP Profiles\" href=\"http://profiles.wordpress.org/technosailor\">prof</a>), <a href=\"http://eastcoder.com/\">tenpura</a> (<a title=\"tenpura at WP Profiles\" href=\"http://profiles.wordpress.org/tenpura\">prof</a>), thales.tede <!--PROF?-->, TheDeadMedic (<a title=\"TheDeadMedic at WP Profiles\" href=\"http://profiles.wordpress.org/TheDeadMedic\">prof</a>), <a href=\"http://cefm.ca/\">thee17 (Charles E. Frees-Melvin)</a> (<a title=\"thee17 at WP Profiles\" href=\"http://profiles.wordpress.org/thee17\">prof</a>), <a href=\"http://www.toine.ca/\">thetoine (Antoine Girard)</a> (<a title=\"thetoine at WP Profiles\" href=\"http://profiles.wordpress.org/thetoine\">prof</a>), <a href=\"http://bavotasan.com/\">tinkerpriest (c.bavota)</a> (<a title=\"tinkerpriest at WP Profiles\" href=\"http://profiles.wordpress.org/tinkerpriest\">prof</a>), <a href=\"http://tobias.baethge.com/\">TobiasBg (Tobias Bäthge)</a> (<a title=\"TobiasBg at WP Profiles\" href=\"http://profiles.wordpress.org/TobiasBg\">prof</a>), tomtomp (<a title=\"tomtomp at WP Profiles\" href=\"http://profiles.wordpress.org/tomtomp\">prof</a>), <a href=\"http://terrychay.com/\">tychay (Terry Chay)</a> (<a title=\"tychay at WP Profiles\" href=\"http://profiles.wordpress.org/tychay\">prof</a>), typeomedia (<a title=\"typeomedia at WP Profiles\" href=\"http://profiles.wordpress.org/typeomedia\">prof</a>), <a href=\"http://uglyrobot.com/\">uglyrobot (Aaron Edwards)</a> (<a title=\"uglyrobot at WP Profiles\" href=\"http://profiles.wordpress.org/uglyrobot\">prof</a>), UnderWordPressure (<a title=\"UnderWordPressure at WP Profiles\" href=\"http://profiles.wordpress.org/UnderWordPressure\">prof</a>), usermrpapa (<a title=\"usermrpapa at WP Profiles\" href=\"http://profiles.wordpress.org/usermrpapa\">prof</a>), <a href=\"http://utkar.sh/\">Utkarsh (Utkarsh Kukreti)</a> (<a title=\"Utkarsh at WP Profiles\" href=\"http://profiles.wordpress.org/Utkarsh\">prof</a>), <a href=\"http://www.ai-development.com/\">validben (Benoit Gilloz )</a> (<a title=\"validben at WP Profiles\" href=\"http://profiles.wordpress.org/validben\">prof</a>), <a href=\"http://www.viper007bond.com/\">Viper007Bond (Alex Mills)</a> (<a title=\"Viper007Bond at WP Profiles\" href=\"http://profiles.wordpress.org/Viper007Bond\">prof</a>), <a href=\"http://blog.sjinks.org.ua/\">vladimir_kolesnikov (Vladimir Kolesnikov)</a> (<a title=\"vladimir_kolesnikov at WP Profiles\" href=\"http://profiles.wordpress.org/vladimir_kolesnikov\">prof</a>), <a href=\"http://edgedesigns.org/\">willmot (Tom Willmot)</a> (<a title=\"willmot at WP Profiles\" href=\"http://profiles.wordpress.org/willmot\">prof</a>), <a href=\"http://emphaticallystatic.org/\">wahgnube</a> (<a title=\"wahgnube at WP Profiles\" href=\"http://profiles.wordpress.org/wahgnube\">prof</a>), <a href=\"http://www.waltervos.com/\">waltervos (Walter Vos)</a> (<a title=\"waltervos at WP Profiles\" href=\"http://profiles.wordpress.org/waltervos\">prof</a>), <a href=\"http://www.nothingcliche.com/\">wds-chris (Christopher Cochran)</a> (<a title=\"wds-chris at WP Profiles\" href=\"http://profiles.wordpress.org/wds-chris\">prof</a>), <a href=\"http://strangework.com/\">williamsba1 (Brad Williams)</a> (<a title=\"williamsba1 at WP Profiles\" href=\"http://profiles.wordpress.org/williamsba1\">prof</a>), <a href=\"http://willnorris.com/\">wnorris (Will Norris)</a> (<a title=\"wnorris at WP Profiles\" href=\"http://profiles.wordpress.org/wnorris\">prof</a>), <a href=\"http://xavier.borderie.net/\">xibe (Xavier Borderie)</a> (<a title=\"xibe at WP Profiles\" href=\"http://profiles.wordpress.org/xibe\">prof</a>), <a href=\"http://blog.yoavfarhi.com/\">yoavf (Yoav Farhi)</a> (<a title=\"yoavf at WP Profiles\" href=\"http://profiles.wordpress.org/yoavf\">prof</a>), <a href=\"http://zeo.my/\">zeo (Safirul Alredha)</a> (<a title=\"zeo at WP Profiles\" href=\"http://profiles.wordpress.org/zeo\">prof</a>), <a href=\"http://h6e.net/\">znarfor (François Hodierne)</a> (<a title=\"znarfor at WP Profiles\" href=\"http://profiles.wordpress.org/znarfor\">prof</a>), and <a href=\"http://zoranzaric.de/\">zoranzaric (Zoran Zaric)</a> (<a title=\"zoranzaric at WP Profiles\" href=\"http://profiles.wordpress.org/zoranzaric\">prof</a>).</p>\r\n<h3>Bonus</h3>\r\n<p>If you’ve made it this far, check out my 2010 State of the Word speech at WordCamp San Francisco, it’s jam-packed with information on the growth of WordPress, 3.0, what we’re planning for the future, and the philosophy of WordPress.</p>\r\n<p><object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" width=\"640\" height=\"360\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,40,0\"><param name=\"flashvars\" value=\"guid=xj8pDCM4&amp;width=640&amp;height=360&amp;locksize=no&amp;dynamicseek=false&amp;qc_publisherId=p-18-mFEk4J448M\"><param name=\"src\" value=\"http://v.wordpress.com/wp-content/plugins/video/flvplayer.swf?ver=1.21\"><param name=\"wmode\" value=\"transparent\"><param name=\"allowfullscreen\" value=\"true\"><embed type=\"application/x-shockwave-flash\" width=\"640\" height=\"360\" src=\"http://v.wordpress.com/wp-content/plugins/video/flvplayer.swf?ver=1.21\" allowfullscreen=\"true\" wmode=\"transparent\" flashvars=\"guid=xj8pDCM4&amp;width=640&amp;height=360&amp;locksize=no&amp;dynamicseek=false&amp;qc_publisherId=p-18-mFEk4J448M\"></object></p>\r\n<div class=\"sharedaddy sd-sharing-enabled\"><div class=\"robots-nocontent sd-block sd-social sd-social-icon-text sd-sharing\"><h3 class=\"sd-title\">Share this:</h3><div class=\"sd-content\"><ul><li class=\"share-twitter\"><a rel=\"nofollow\" class=\"share-twitter sd-button share-icon\" href=\"http://wordpress.org/news/2010/06/thelonious/?share=twitter&amp;nb=1\" target=\"_blank\" title=\"Click to share on Twitter\" id=\"sharing-twitter-1380\"><span>Twitter<span class=\"share-count\">38</span></span></a></li><li class=\"share-facebook\"><a rel=\"nofollow\" class=\"share-facebook sd-button share-icon\" href=\"http://wordpress.org/news/2010/06/thelonious/?share=facebook&amp;nb=1\" target=\"_blank\" title=\"Share on Facebook\" id=\"sharing-facebook-1380\"><span>Facebook<span class=\"share-count\">10</span></span></a></li><li class=\"share-google-plus-1\"><a rel=\"nofollow\" class=\"share-google-plus-1 sd-button share-icon\" href=\"http://wordpress.org/news/2010/06/thelonious/?share=google-plus-1&amp;nb=1\" target=\"_blank\" title=\"Click to share on Google+\" id=\"sharing-google-1380\"><span>Google +1</span></a></li><li class=\"share-email share-service-visible\"><a rel=\"nofollow\" class=\"share-email sd-button share-icon\" href=\"http://wordpress.org/news/2010/06/thelonious/?share=email&amp;nb=1\" target=\"_blank\" title=\"Click to email this to a friend\"><span>Email</span></a></li><li class=\"share-end\"></li></ul><div class=\"sharing-clear\"></div></div></div></div></div>','WordPress 3.0 \"Thelonious\"','','publish','open','open','','wordpress-3-0-thelonious','','','2013-05-25 18:50:46','2013-05-25 18:50:46','',0,'http://wp-archive.local/3.0.0/?p=4',0,'post','',0),(5,1,'2013-05-25 18:50:29','2013-05-25 18:50:29','','WordPress 3.0 \"Thelonious\"','','inherit','open','open','','4-revision','','','2013-05-25 18:50:29','2013-05-25 18:50:29','',4,'http://wp-archive.local/3.0.0/?p=5',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(1,2,0),(2,2,0),(3,2,0),(4,1,0),(4,2,0),(5,2,0),(6,2,0),(7,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,2),(2,2,'link_category','',0,7);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'Blogroll','blogroll',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'first_name',''),(2,1,'last_name',''),(3,1,'nickname','admin'),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'aim',''),(10,1,'yim',''),(11,1,'jabber',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";s:1:\"1\";}'),(13,1,'wp_user_level','10'),(14,1,'wp_dashboard_quick_press_last_post_id','3'),(15,1,'wp_user-settings','m1=o&editor=html&m9=o'),(16,1,'wp_user-settings-time','1369507846');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BGojM4AB6sZ/ctttwk6y1K7s5.IlyT0','admin','admin@wp-archive.local','','2013-05-24 08:37:18','',0,'admin');
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

-- Dump completed on 2013-05-25 19:33:30
