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
-- Table structure for table `keitaro_acl`
--

DROP TABLE IF EXISTS `keitaro_acl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_acl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `entity_type` varchar(255) NOT NULL,
  `access_type` varchar(255) NOT NULL,
  `groups` text,
  `entities` text,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `entity_type` (`entity_type`),
  KEY `access_type` (`access_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_acl`
--

LOCK TABLES `keitaro_acl` WRITE;
/*!40000 ALTER TABLE `keitaro_acl` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_acl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_acl_reports`
--

DROP TABLE IF EXISTS `keitaro_acl_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_acl_reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `columns` text,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_acl_reports`
--

LOCK TABLES `keitaro_acl_reports` WRITE;
/*!40000 ALTER TABLE `keitaro_acl_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_acl_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_acl_resources`
--

DROP TABLE IF EXISTS `keitaro_acl_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_acl_resources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `resources` text,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_acl_resources`
--

LOCK TABLES `keitaro_acl_resources` WRITE;
/*!40000 ALTER TABLE `keitaro_acl_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_acl_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_affiliate_networks`
--

DROP TABLE IF EXISTS `keitaro_affiliate_networks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_affiliate_networks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `postback_url` text,
  `offer_param` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `template_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_affiliate_networks`
--

LOCK TABLES `keitaro_affiliate_networks` WRITE;
/*!40000 ALTER TABLE `keitaro_affiliate_networks` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_affiliate_networks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_api_keys`
--

DROP TABLE IF EXISTS `keitaro_api_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_api_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_api_keys`
--

LOCK TABLES `keitaro_api_keys` WRITE;
/*!40000 ALTER TABLE `keitaro_api_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_api_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_archive_browsers`
--

DROP TABLE IF EXISTS `keitaro_archive_browsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_archive_browsers` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `browser` varchar(70) NOT NULL,
  `group_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_group_value` (`date`,`group_id`,`browser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_archive_browsers`
--

LOCK TABLES `keitaro_archive_browsers` WRITE;
/*!40000 ALTER TABLE `keitaro_archive_browsers` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_archive_browsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_archive_countries`
--

DROP TABLE IF EXISTS `keitaro_archive_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_archive_countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(250) NOT NULL,
  `group_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `referer` (`country`,`group_id`),
  KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_archive_countries`
--

LOCK TABLES `keitaro_archive_countries` WRITE;
/*!40000 ALTER TABLE `keitaro_archive_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_archive_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_archive_device_types`
--

DROP TABLE IF EXISTS `keitaro_archive_device_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_archive_device_types` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `device_type` varchar(70) NOT NULL,
  `group_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_group_value` (`date`,`group_id`,`device_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_archive_device_types`
--

LOCK TABLES `keitaro_archive_device_types` WRITE;
/*!40000 ALTER TABLE `keitaro_archive_device_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_archive_device_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_archive_hours`
--

DROP TABLE IF EXISTS `keitaro_archive_hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_archive_hours` (
  `group_id` int(10) unsigned NOT NULL,
  `date` date NOT NULL,
  `counts` varchar(250) NOT NULL,
  KEY `group_id` (`group_id`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_archive_hours`
--

LOCK TABLES `keitaro_archive_hours` WRITE;
/*!40000 ALTER TABLE `keitaro_archive_hours` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_archive_hours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_archive_keywords`
--

DROP TABLE IF EXISTS `keitaro_archive_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_archive_keywords` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `keyword` varchar(250) NOT NULL,
  `count` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`,`group_id`,`keyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_archive_keywords`
--

LOCK TABLES `keitaro_archive_keywords` WRITE;
/*!40000 ALTER TABLE `keitaro_archive_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_archive_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_archive_os`
--

DROP TABLE IF EXISTS `keitaro_archive_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_archive_os` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `os` varchar(70) NOT NULL,
  `group_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date_group_value` (`date`,`group_id`,`os`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_archive_os`
--

LOCK TABLES `keitaro_archive_os` WRITE;
/*!40000 ALTER TABLE `keitaro_archive_os` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_archive_os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_archive_referers`
--

DROP TABLE IF EXISTS `keitaro_archive_referers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_archive_referers` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `referer` varchar(250) NOT NULL,
  `group_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `referer` (`group_id`,`referer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_archive_referers`
--

LOCK TABLES `keitaro_archive_referers` WRITE;
/*!40000 ALTER TABLE `keitaro_archive_referers` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_archive_referers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_archive_se`
--

DROP TABLE IF EXISTS `keitaro_archive_se`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_archive_se` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `se` varchar(250) NOT NULL,
  `group_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `se` (`group_id`,`se`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_archive_se`
--

LOCK TABLES `keitaro_archive_se` WRITE;
/*!40000 ALTER TABLE `keitaro_archive_se` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_archive_se` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_archive_sources`
--

DROP TABLE IF EXISTS `keitaro_archive_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_archive_sources` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `source` varchar(250) NOT NULL,
  `group_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL,
  `conversion` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `sales` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date` (`date`,`group_id`,`source`),
  KEY `date_2` (`date`,`group_id`,`source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_archive_sources`
--

LOCK TABLES `keitaro_archive_sources` WRITE;
/*!40000 ALTER TABLE `keitaro_archive_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_archive_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_archive_streams`
--

DROP TABLE IF EXISTS `keitaro_archive_streams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_archive_streams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stream_id` int(10) unsigned NOT NULL,
  `group_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `raws` int(11) NOT NULL,
  `uniq` int(11) NOT NULL DEFAULT '0',
  `conversion` decimal(5,2) unsigned NOT NULL DEFAULT '0.00',
  `sales` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `group` (`date`,`group_id`),
  KEY `stream_id` (`stream_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_archive_streams`
--

LOCK TABLES `keitaro_archive_streams` WRITE;
/*!40000 ALTER TABLE `keitaro_archive_streams` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_archive_streams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_archive_visits`
--

DROP TABLE IF EXISTS `keitaro_archive_visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_archive_visits` (
  `date` date NOT NULL,
  `group_id` int(11) NOT NULL,
  `uniq` int(11) NOT NULL DEFAULT '0',
  `raws` bigint(20) NOT NULL DEFAULT '0',
  `bots` int(11) NOT NULL DEFAULT '0',
  `empty_referer` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`group_id`),
  KEY `day` (`group_id`),
  KEY `empty_referer` (`empty_referer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_archive_visits`
--

LOCK TABLES `keitaro_archive_visits` WRITE;
/*!40000 ALTER TABLE `keitaro_archive_visits` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_archive_visits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_campaign_postbacks`
--

DROP TABLE IF EXISTS `keitaro_campaign_postbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_campaign_postbacks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `campaign_id` int(10) unsigned NOT NULL,
  `method` varchar(10) NOT NULL,
  `url` text NOT NULL,
  `statuses` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `campaign_id` (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_campaign_postbacks`
--

LOCK TABLES `keitaro_campaign_postbacks` WRITE;
/*!40000 ALTER TABLE `keitaro_campaign_postbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_campaign_postbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_campaigns`
--

DROP TABLE IF EXISTS `keitaro_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_campaigns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'position',
  `uniqueness_method` varchar(20) NOT NULL DEFAULT 'cookie',
  `cookies_ttl` int(11) NOT NULL DEFAULT '24',
  `action_type` varchar(20) DEFAULT NULL,
  `action_payload` text,
  `action_for_bots` varchar(50) NOT NULL DEFAULT '404',
  `bot_redirect_url` text,
  `bot_text` text,
  `action_tracking_disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `position` int(10) unsigned DEFAULT NULL,
  `state` varchar(50) NOT NULL DEFAULT 'active',
  `updated_at` datetime DEFAULT NULL,
  `mode` varchar(50) DEFAULT 'general',
  `cost_type` varchar(10) DEFAULT 'CPV',
  `cost_value` decimal(10,4) DEFAULT '0.0000',
  `cost_currency` varchar(3) DEFAULT NULL,
  `group_id` int(10) unsigned DEFAULT NULL,
  `bind_visitors` varchar(255) DEFAULT NULL,
  `traffic_source_id` int(10) unsigned DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `cost_auto` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `domain_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`),
  KEY `alias` (`alias`),
  KEY `state` (`state`),
  KEY `group_id` (`group_id`),
  KEY `traffic_source_id` (`traffic_source_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_campaigns`
--

LOCK TABLES `keitaro_campaigns` WRITE;
/*!40000 ALTER TABLE `keitaro_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_click_links`
--

DROP TABLE IF EXISTS `keitaro_click_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_click_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sub_id` varchar(255) NOT NULL,
  `parent_sub_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sub_ids` (`sub_id`,`parent_sub_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_click_links`
--

LOCK TABLES `keitaro_click_links` WRITE;
/*!40000 ALTER TABLE `keitaro_click_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_click_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_clicks`
--

DROP TABLE IF EXISTS `keitaro_clicks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_clicks` (
  `click_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `visitor_id` bigint(20) unsigned NOT NULL,
  `sub_id` varchar(255) NOT NULL,
  `ts_id` int(10) unsigned DEFAULT NULL,
  `landing_id` int(10) unsigned DEFAULT NULL,
  `landing_clicked` tinyint(1) unsigned DEFAULT '0',
  `landing_clicked_datetime` datetime DEFAULT NULL,
  `offer_id` int(10) unsigned DEFAULT NULL,
  `datetime` datetime NOT NULL,
  `campaign_id` int(10) unsigned NOT NULL,
  `parent_campaign_id` int(10) unsigned DEFAULT NULL,
  `stream_id` int(10) unsigned DEFAULT NULL,
  `is_unique_stream` tinyint(1) unsigned DEFAULT '0',
  `is_unique_campaign` tinyint(1) unsigned DEFAULT '0',
  `is_unique_global` int(1) unsigned DEFAULT '0',
  `is_bot` tinyint(1) unsigned DEFAULT '0',
  `is_using_proxy` tinyint(1) unsigned DEFAULT '0',
  `is_empty_referrer` tinyint(1) unsigned DEFAULT '0',
  `source_id` int(10) unsigned NOT NULL,
  `referrer_id` int(10) NOT NULL,
  `search_engine_id` int(10) DEFAULT NULL,
  `keyword_id` int(10) unsigned DEFAULT NULL,
  `sub_id_1_id` int(10) unsigned DEFAULT NULL,
  `sub_id_2_id` int(10) unsigned DEFAULT NULL,
  `sub_id_3_id` int(10) unsigned DEFAULT NULL,
  `sub_id_4_id` int(10) unsigned DEFAULT NULL,
  `sub_id_5_id` int(10) unsigned DEFAULT NULL,
  `sub_id_6_id` int(10) unsigned DEFAULT NULL,
  `sub_id_7_id` int(10) unsigned DEFAULT NULL,
  `sub_id_8_id` int(10) unsigned DEFAULT NULL,
  `sub_id_9_id` int(10) unsigned DEFAULT NULL,
  `sub_id_10_id` int(10) unsigned DEFAULT NULL,
  `extra_param_1` varchar(255) DEFAULT NULL,
  `extra_param_2` varchar(255) DEFAULT NULL,
  `extra_param_3` varchar(255) DEFAULT NULL,
  `extra_param_4` varchar(255) DEFAULT NULL,
  `extra_param_5` varchar(255) DEFAULT NULL,
  `extra_param_6` varchar(255) DEFAULT NULL,
  `extra_param_7` varchar(255) DEFAULT NULL,
  `extra_param_8` varchar(255) DEFAULT NULL,
  `extra_param_9` varchar(255) DEFAULT NULL,
  `extra_param_10` varchar(255) DEFAULT NULL,
  `lead_revenue` decimal(13,4) NOT NULL DEFAULT '0.0000',
  `rejected_revenue` decimal(13,4) NOT NULL DEFAULT '0.0000',
  `sale_revenue` decimal(13,4) NOT NULL DEFAULT '0.0000',
  `cost` decimal(13,6) NOT NULL DEFAULT '0.000000',
  `is_lead` tinyint(1) unsigned DEFAULT '0',
  `is_sale` tinyint(1) unsigned DEFAULT '0',
  `is_rejected` tinyint(1) unsigned DEFAULT '0',
  `rebills` int(10) unsigned NOT NULL DEFAULT '0',
  `destination_id` bigint(20) unsigned DEFAULT NULL,
  `creative_id_id` int(10) unsigned DEFAULT NULL,
  `external_id_id` int(10) unsigned DEFAULT NULL,
  `goal_1` tinyint(1) unsigned DEFAULT '0',
  `goal_1_datetime` datetime DEFAULT NULL,
  `goal_2` tinyint(1) unsigned DEFAULT '0',
  `goal_2_datetime` datetime DEFAULT NULL,
  `goal_3` tinyint(1) unsigned DEFAULT '0',
  `goal_3_datetime` datetime DEFAULT NULL,
  `goal_4` tinyint(1) unsigned DEFAULT '0',
  `goal_4_datetime` datetime DEFAULT NULL,
  `ad_campaign_id_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`click_id`),
  UNIQUE KEY `sub_id` (`sub_id`),
  KEY `datetime` (`datetime`),
  KEY `creative_id` (`creative_id_id`),
  KEY `external_id` (`external_id_id`),
  KEY `landing_id` (`landing_id`),
  KEY `offer_id` (`offer_id`),
  KEY `stream_id` (`stream_id`),
  KEY `keyword_id` (`keyword_id`),
  KEY `referrer_id` (`referrer_id`),
  KEY `ts_id` (`ts_id`),
  KEY `sub_id_1_id` (`sub_id_1_id`),
  KEY `sub_id_2_id` (`sub_id_2_id`),
  KEY `sub_id_3_id` (`sub_id_3_id`),
  KEY `sub_id_4_id` (`sub_id_4_id`),
  KEY `sub_id_5_id` (`sub_id_5_id`),
  KEY `sub_id_6_id` (`sub_id_6_id`),
  KEY `sub_id_7_id` (`sub_id_7_id`),
  KEY `sub_id_8_id` (`sub_id_8_id`),
  KEY `sub_id_9_id` (`sub_id_9_id`),
  KEY `sub_id_10_id` (`sub_id_10_id`),
  KEY `destination_id` (`destination_id`),
  KEY `campaign_id` (`campaign_id`),
  KEY `visitor_id` (`visitor_id`),
  KEY `source_id` (`source_id`),
  KEY `parent_campaign_id` (`parent_campaign_id`),
  KEY `search_engine_id` (`search_engine_id`),
  KEY `ad_campaign_id_id` (`ad_campaign_id_id`),
  KEY `campaign_id_datetime` (`campaign_id`,`datetime`),
  KEY `stream_id_datetime` (`stream_id`,`datetime`),
  KEY `ts_id_datetime` (`ts_id`,`datetime`),
  KEY `landing_id_datetime` (`landing_id`,`datetime`),
  KEY `offer_id_datetime` (`offer_id`,`datetime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_clicks`
--

LOCK TABLES `keitaro_clicks` WRITE;
/*!40000 ALTER TABLE `keitaro_clicks` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_clicks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_command_queue`
--

DROP TABLE IF EXISTS `keitaro_command_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_command_queue` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` date DEFAULT NULL,
  `payload` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_command_queue`
--

LOCK TABLES `keitaro_command_queue` WRITE;
/*!40000 ALTER TABLE `keitaro_command_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_command_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_conversions`
--

DROP TABLE IF EXISTS `keitaro_conversions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_conversions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) DEFAULT NULL,
  `stream_id` int(10) unsigned DEFAULT NULL,
  `sub_id` varchar(30) NOT NULL,
  `tid` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `previous_status` varchar(100) DEFAULT NULL,
  `original_status` varchar(100) DEFAULT NULL,
  `se` varchar(100) DEFAULT NULL,
  `sub_id_1` varchar(255) DEFAULT NULL,
  `sub_id_2` varchar(255) DEFAULT NULL,
  `sub_id_3` varchar(255) DEFAULT NULL,
  `sub_id_4` varchar(255) DEFAULT NULL,
  `extra_param_1` varchar(255) DEFAULT NULL,
  `extra_param_2` varchar(255) DEFAULT NULL,
  `extra_param_3` varchar(255) DEFAULT NULL,
  `extra_param_4` varchar(255) DEFAULT NULL,
  `extra_param_5` varchar(255) DEFAULT NULL,
  `extra_param_6` varchar(255) DEFAULT NULL,
  `extra_param_7` varchar(255) DEFAULT NULL,
  `revenue` decimal(10,4) DEFAULT '0.0000',
  `cost` decimal(10,4) DEFAULT '0.0000',
  `browser` varchar(150) DEFAULT NULL,
  `os` varchar(100) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `region` varchar(6) DEFAULT NULL,
  `city` varchar(60) DEFAULT NULL,
  `user_agent` text,
  `ip` bigint(11) DEFAULT NULL,
  `keyword` varchar(250) DEFAULT NULL,
  `source` varchar(250) DEFAULT NULL,
  `isp` varchar(50) DEFAULT NULL,
  `operator` varchar(50) DEFAULT NULL,
  `connection_type` varchar(10) DEFAULT NULL,
  `device_type` varchar(30) DEFAULT NULL,
  `device_model` varchar(200) DEFAULT NULL,
  `params` text,
  `datetime` datetime NOT NULL,
  `entry_date` date NOT NULL,
  `processed` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sub_id_tid` (`sub_id`,`tid`),
  KEY `campaign_id` (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_conversions`
--

LOCK TABLES `keitaro_conversions` WRITE;
/*!40000 ALTER TABLE `keitaro_conversions` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_conversions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_conversions_2`
--

DROP TABLE IF EXISTS `keitaro_conversions_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_conversions_2` (
  `conversion_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `visitor_id` bigint(20) unsigned DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `stream_id` int(10) unsigned DEFAULT NULL,
  `ts_id` int(10) unsigned DEFAULT NULL,
  `landing_id` int(10) unsigned DEFAULT NULL,
  `offer_id` int(10) unsigned DEFAULT NULL,
  `sub_id` varchar(255) NOT NULL,
  `click_id` int(10) unsigned DEFAULT NULL,
  `tid` varchar(100) DEFAULT NULL,
  `click_datetime` datetime NOT NULL,
  `postback_datetime` datetime NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `previous_status` varchar(100) DEFAULT NULL,
  `original_status` varchar(100) DEFAULT NULL,
  `source_id` int(10) unsigned DEFAULT NULL,
  `referrer_id` int(10) unsigned DEFAULT NULL,
  `search_engine_id` int(10) DEFAULT NULL,
  `keyword_id` int(10) unsigned DEFAULT NULL,
  `screen_id` int(10) unsigned DEFAULT NULL,
  `sub_id_1_id` int(10) unsigned DEFAULT NULL,
  `sub_id_2_id` int(10) unsigned DEFAULT NULL,
  `sub_id_3_id` int(10) unsigned DEFAULT NULL,
  `sub_id_4_id` int(10) unsigned DEFAULT NULL,
  `sub_id_5_id` int(10) unsigned DEFAULT NULL,
  `sub_id_6_id` int(10) unsigned DEFAULT NULL,
  `sub_id_7_id` int(10) unsigned DEFAULT NULL,
  `sub_id_8_id` int(10) unsigned DEFAULT NULL,
  `sub_id_9_id` int(10) unsigned DEFAULT NULL,
  `sub_id_10_id` int(10) unsigned DEFAULT NULL,
  `extra_param_1` varchar(255) DEFAULT NULL,
  `extra_param_2` varchar(255) DEFAULT NULL,
  `extra_param_3` varchar(255) DEFAULT NULL,
  `extra_param_4` varchar(255) DEFAULT NULL,
  `extra_param_5` varchar(255) DEFAULT NULL,
  `extra_param_6` varchar(255) DEFAULT NULL,
  `extra_param_7` varchar(255) DEFAULT NULL,
  `extra_param_8` varchar(255) DEFAULT NULL,
  `extra_param_9` varchar(255) DEFAULT NULL,
  `extra_param_10` varchar(255) DEFAULT NULL,
  `revenue` decimal(10,4) DEFAULT '0.0000',
  `cost` decimal(13,6) DEFAULT '0.000000',
  `params` text,
  `is_processed` int(1) unsigned NOT NULL DEFAULT '0',
  `creative_id_id` int(10) unsigned DEFAULT NULL,
  `external_id_id` int(10) unsigned DEFAULT NULL,
  `ad_campaign_id_id` int(10) unsigned DEFAULT NULL,
  `sale_datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`conversion_id`),
  UNIQUE KEY `sub_id_tid` (`sub_id`,`tid`),
  KEY `campaign_id` (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_conversions_2`
--

LOCK TABLES `keitaro_conversions_2` WRITE;
/*!40000 ALTER TABLE `keitaro_conversions_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_conversions_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_country_profiles`
--

DROP TABLE IF EXISTS `keitaro_country_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_country_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `countries` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_country_profiles`
--

LOCK TABLES `keitaro_country_profiles` WRITE;
/*!40000 ALTER TABLE `keitaro_country_profiles` DISABLE KEYS */;
INSERT INTO `keitaro_country_profiles` VALUES (1,'USA and Canada','US CA'),(2,'West Europe','GB DE FR IT AT CH ES NL BE DK SE NO PT FI IS IE LI LU MC AD GI GR MT SM VA FO CY'),(3,'Europe','AL GB DE FR IT AT CH ES NL BE DK SE NO PT FI IS IE LI LU MC AD GI GR MT SM VA FO CY BY BA BG HR CZ EE HU LV LT MK MD ME PL RO RS SK SI'),(4,'exUSSR','AM AZ BY EE GE KZ KG LV LT MD RU TJ TM UA UZ'),(5,'English-Speaking','US GB CA AU NZ IE ZA SG JM TT GY BB'),(6,'German-Speaking','AT CH LI LU DK'),(7,'French-Speaking','FR MC LU CD MG CI CM BF NE SN ML BE'),(8,'Portuguese-Speaking','AO BR PT CV GW MZ ST GQ MU'),(9,'Spanish-Speaking','CO ES AR MX VE PE CL EC GT CU DO HN BO SV NI PY CR UY PA GQ'),(10,'Italian-Speaking','CH SM VA MT HR SI'),(11,'North America','AI AG AW BS BB BZ BM VI CA KY CR CU DO SV GL GD GP GT HT HN JM MQ MX MS NL NI PA PR KN LC PM VC TT TC US'),(12,'USA, Canada and Europe','US CA AL GB DE FR IT AT CH ES NL BE DK SE NO PT FI IS IE LI LU MC AD GI GR MT SM VA FO CY BY BA BG HR CZ EE HU LV LT MK MD ME PL RO RS SK SI'),(13,'English-Speaking and West Europe','US GB CA AU NZ IE ZA SG JM TT GY BB DE FR IT AT CH ES NL BE DK SE NO PT FI IS LI LU MC AD GI GR MT SM VA FO CY'),(14,'English-Speaking and Europe','US GB CA AU NZ IE ZA SG JM TT GY BB AL DE FR IT AT CH ES NL BE DK SE NO PT FI IS LI LU MC AD GI GR MT SM VA FO CY BY BA BG HR CZ EE HU LV LT MK MD ME PL RO RS SK SI');
/*!40000 ALTER TABLE `keitaro_country_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_cron_status`
--

DROP TABLE IF EXISTS `keitaro_cron_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_cron_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `task_name` varchar(40) NOT NULL,
  `executed_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_name` (`task_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_cron_status`
--

LOCK TABLES `keitaro_cron_status` WRITE;
/*!40000 ALTER TABLE `keitaro_cron_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_cron_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_daily_entries`
--

DROP TABLE IF EXISTS `keitaro_daily_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_daily_entries` (
  `entry_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `campaign_id` int(10) unsigned NOT NULL,
  `field_name` varchar(100) NOT NULL,
  `field_value` int(10) unsigned NOT NULL,
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `unique_clicks` int(10) unsigned NOT NULL DEFAULT '0',
  `bots` int(10) unsigned NOT NULL DEFAULT '0',
  `mobiles` int(10) unsigned NOT NULL DEFAULT '0',
  `empty_referrers` int(10) unsigned NOT NULL DEFAULT '0',
  `proxies` int(10) unsigned NOT NULL DEFAULT '0',
  `conversions` int(10) unsigned NOT NULL DEFAULT '0',
  `leads` int(10) unsigned NOT NULL DEFAULT '0',
  `sales` int(10) unsigned NOT NULL DEFAULT '0',
  `rejected` int(10) unsigned NOT NULL DEFAULT '0',
  `rebills` int(10) unsigned NOT NULL DEFAULT '0',
  `revenue` decimal(13,4) unsigned NOT NULL DEFAULT '0.0000',
  `cost` decimal(13,4) unsigned NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`entry_id`),
  UNIQUE KEY `date_campaign_name_value` (`date`,`campaign_id`,`field_name`,`field_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_daily_entries`
--

LOCK TABLES `keitaro_daily_entries` WRITE;
/*!40000 ALTER TABLE `keitaro_daily_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_daily_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_delayed_tasks`
--

DROP TABLE IF EXISTS `keitaro_delayed_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_delayed_tasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data` blob NOT NULL,
  `datetime` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `error_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_delayed_tasks`
--

LOCK TABLES `keitaro_delayed_tasks` WRITE;
/*!40000 ALTER TABLE `keitaro_delayed_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_delayed_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_domains`
--

DROP TABLE IF EXISTS `keitaro_domains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_domains` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_ssl` tinyint(1) NOT NULL,
  `network_status` varchar(255) DEFAULT NULL,
  `default_campaign_id` int(10) unsigned DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_domains`
--

LOCK TABLES `keitaro_domains` WRITE;
/*!40000 ALTER TABLE `keitaro_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_domains` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_favourite_reports`
--

DROP TABLE IF EXISTS `keitaro_favourite_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_favourite_reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `is_shared` tinyint(1) unsigned DEFAULT '0',
  `payload` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_favourite_reports`
--

LOCK TABLES `keitaro_favourite_reports` WRITE;
/*!40000 ALTER TABLE `keitaro_favourite_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_favourite_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_groups`
--

DROP TABLE IF EXISTS `keitaro_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `position` int(10) unsigned NOT NULL,
  `type` varchar(255) DEFAULT 'campaign',
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_groups`
--

LOCK TABLES `keitaro_groups` WRITE;
/*!40000 ALTER TABLE `keitaro_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ip_sessions`
--

DROP TABLE IF EXISTS `keitaro_ip_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ip_sessions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` int(11) unsigned NOT NULL,
  `expires_at` datetime NOT NULL,
  `payload` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ip_sessions`
--

LOCK TABLES `keitaro_ip_sessions` WRITE;
/*!40000 ALTER TABLE `keitaro_ip_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ip_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ips`
--

DROP TABLE IF EXISTS `keitaro_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ips` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) DEFAULT NULL,
  `ip` int(10) unsigned NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `stream_id` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`),
  KEY `campaign_id` (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ips`
--

LOCK TABLES `keitaro_ips` WRITE;
/*!40000 ALTER TABLE `keitaro_ips` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_labels`
--

DROP TABLE IF EXISTS `keitaro_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_labels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `campaign_id` int(12) unsigned DEFAULT NULL,
  `label_name` varchar(50) NOT NULL,
  `ref_name` varchar(100) NOT NULL,
  `ref_id` int(12) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `campaign_name_id` (`campaign_id`,`ref_name`,`ref_id`),
  KEY `label_name` (`label_name`),
  KEY `campaign_id` (`campaign_id`),
  KEY `ref_name` (`ref_name`),
  KEY `ref_id` (`ref_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_labels`
--

LOCK TABLES `keitaro_labels` WRITE;
/*!40000 ALTER TABLE `keitaro_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_landings`
--

DROP TABLE IF EXISTS `keitaro_landings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_landings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `group_id` bigint(20) unsigned DEFAULT NULL,
  `offer_count` int(10) NOT NULL DEFAULT '1',
  `state` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `landing_type` varchar(10) DEFAULT 'external',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_landings`
--

LOCK TABLES `keitaro_landings` WRITE;
/*!40000 ALTER TABLE `keitaro_landings` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_landings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_monitoring_history`
--

DROP TABLE IF EXISTS `keitaro_monitoring_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_monitoring_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `level` varchar(10) NOT NULL,
  `stream_id` int(10) unsigned NOT NULL,
  `trigger_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL,
  `state` enum('unread','read') NOT NULL DEFAULT 'read',
  PRIMARY KEY (`id`),
  KEY `trigger_id` (`trigger_id`),
  KEY `stream_id` (`stream_id`),
  KEY `state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_monitoring_history`
--

LOCK TABLES `keitaro_monitoring_history` WRITE;
/*!40000 ALTER TABLE `keitaro_monitoring_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_monitoring_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_offers`
--

DROP TABLE IF EXISTS `keitaro_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_offers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `group_id` bigint(20) unsigned DEFAULT NULL,
  `url` text NOT NULL,
  `affiliate_network_id` bigint(20) unsigned DEFAULT NULL,
  `payout_value` decimal(10,4) DEFAULT '0.0000',
  `payout_currency` varchar(3) DEFAULT NULL,
  `payout_type` varchar(10) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `payout_auto` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `payout_upsell` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_offers`
--

LOCK TABLES `keitaro_offers` WRITE;
/*!40000 ALTER TABLE `keitaro_offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_ad_campaign_ids`
--

DROP TABLE IF EXISTS `keitaro_ref_ad_campaign_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_ad_campaign_ids` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_ad_campaign_ids`
--

LOCK TABLES `keitaro_ref_ad_campaign_ids` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_ad_campaign_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_ad_campaign_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_browser_versions`
--

DROP TABLE IF EXISTS `keitaro_ref_browser_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_browser_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `browser_id_value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_browser_versions`
--

LOCK TABLES `keitaro_ref_browser_versions` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_browser_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_browser_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_browsers`
--

DROP TABLE IF EXISTS `keitaro_ref_browsers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_browsers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_browsers`
--

LOCK TABLES `keitaro_ref_browsers` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_browsers` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_browsers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_cities`
--

DROP TABLE IF EXISTS `keitaro_ref_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `region_id_value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_cities`
--

LOCK TABLES `keitaro_ref_cities` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_connection_types`
--

DROP TABLE IF EXISTS `keitaro_ref_connection_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_connection_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_connection_types`
--

LOCK TABLES `keitaro_ref_connection_types` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_connection_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_connection_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_countries`
--

DROP TABLE IF EXISTS `keitaro_ref_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_countries`
--

LOCK TABLES `keitaro_ref_countries` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_creative_ids`
--

DROP TABLE IF EXISTS `keitaro_ref_creative_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_creative_ids` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_creative_ids`
--

LOCK TABLES `keitaro_ref_creative_ids` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_creative_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_creative_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_destinations`
--

DROP TABLE IF EXISTS `keitaro_ref_destinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_destinations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_destinations`
--

LOCK TABLES `keitaro_ref_destinations` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_destinations` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_destinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_device_models`
--

DROP TABLE IF EXISTS `keitaro_ref_device_models`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_device_models` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_device_models`
--

LOCK TABLES `keitaro_ref_device_models` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_device_models` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_device_models` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_device_types`
--

DROP TABLE IF EXISTS `keitaro_ref_device_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_device_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_device_types`
--

LOCK TABLES `keitaro_ref_device_types` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_device_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_device_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_external_ids`
--

DROP TABLE IF EXISTS `keitaro_ref_external_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_external_ids` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_external_ids`
--

LOCK TABLES `keitaro_ref_external_ids` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_external_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_external_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_ips`
--

DROP TABLE IF EXISTS `keitaro_ref_ips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_ips` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_ips`
--

LOCK TABLES `keitaro_ref_ips` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_ips` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_ips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_isp`
--

DROP TABLE IF EXISTS `keitaro_ref_isp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_isp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_isp`
--

LOCK TABLES `keitaro_ref_isp` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_isp` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_isp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_keywords`
--

DROP TABLE IF EXISTS `keitaro_ref_keywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_keywords` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_keywords`
--

LOCK TABLES `keitaro_ref_keywords` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_keywords` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_keywords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_languages`
--

DROP TABLE IF EXISTS `keitaro_ref_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_languages`
--

LOCK TABLES `keitaro_ref_languages` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_operators`
--

DROP TABLE IF EXISTS `keitaro_ref_operators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_operators` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_operators`
--

LOCK TABLES `keitaro_ref_operators` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_operators` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_operators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_os`
--

DROP TABLE IF EXISTS `keitaro_ref_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_os` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_os`
--

LOCK TABLES `keitaro_ref_os` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_os` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_os_versions`
--

DROP TABLE IF EXISTS `keitaro_ref_os_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_os_versions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `os_id_value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_os_versions`
--

LOCK TABLES `keitaro_ref_os_versions` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_os_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_os_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_params`
--

DROP TABLE IF EXISTS `keitaro_ref_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_params` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `param_name_value` (`id`,`name`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_params`
--

LOCK TABLES `keitaro_ref_params` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_params` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_referrers`
--

DROP TABLE IF EXISTS `keitaro_ref_referrers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_referrers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_referrers`
--

LOCK TABLES `keitaro_ref_referrers` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_referrers` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_referrers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_regions`
--

DROP TABLE IF EXISTS `keitaro_ref_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_regions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_id_value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_regions`
--

LOCK TABLES `keitaro_ref_regions` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_regions` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_search_engines`
--

DROP TABLE IF EXISTS `keitaro_ref_search_engines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_search_engines` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_search_engines`
--

LOCK TABLES `keitaro_ref_search_engines` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_search_engines` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_search_engines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_sources`
--

DROP TABLE IF EXISTS `keitaro_ref_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_sources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_sources`
--

LOCK TABLES `keitaro_ref_sources` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_sub_ids`
--

DROP TABLE IF EXISTS `keitaro_ref_sub_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_sub_ids` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_sub_ids`
--

LOCK TABLES `keitaro_ref_sub_ids` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_sub_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_sub_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_ref_user_agents`
--

DROP TABLE IF EXISTS `keitaro_ref_user_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_ref_user_agents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_ref_user_agents`
--

LOCK TABLES `keitaro_ref_user_agents` WRITE;
/*!40000 ALTER TABLE `keitaro_ref_user_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_ref_user_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_requests`
--

DROP TABLE IF EXISTS `keitaro_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_id` int(10) unsigned NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_requests`
--

LOCK TABLES `keitaro_requests` WRITE;
/*!40000 ALTER TABLE `keitaro_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_sales`
--

DROP TABLE IF EXISTS `keitaro_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `campaign_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `stream_id` int(10) unsigned DEFAULT NULL,
  `sub_id` varchar(25) NOT NULL,
  `profit` decimal(10,2) DEFAULT NULL,
  `params` text,
  `datetime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_stream_sub` (`group_id`,`stream_id`,`sub_id`),
  KEY `sub_id` (`sub_id`),
  KEY `campaign_id` (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_sales`
--

LOCK TABLES `keitaro_sales` WRITE;
/*!40000 ALTER TABLE `keitaro_sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_sessions`
--

DROP TABLE IF EXISTS `keitaro_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_sessions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `visitor_code` varchar(50) NOT NULL,
  `expires_at` datetime NOT NULL,
  `payload` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `visitor_code` (`visitor_code`),
  KEY `expires_at` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_sessions`
--

LOCK TABLES `keitaro_sessions` WRITE;
/*!40000 ALTER TABLE `keitaro_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_settings`
--

DROP TABLE IF EXISTS `keitaro_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_settings` (
  `key` varchar(100) NOT NULL,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_settings`
--

LOCK TABLES `keitaro_settings` WRITE;
/*!40000 ALTER TABLE `keitaro_settings` DISABLE KEYS */;
INSERT INTO `keitaro_settings` VALUES ('archive_ttl','60'),('av_service','avscan'),('cache_storage','files'),('check_bot_empty_ua','0'),('check_bot_ip','1'),('check_bot_referer','0'),('check_bot_ua','1'),('currency','RUB'),('detect_spam_bots','0'),('disable_stats','0'),('draft_data_storage','files'),('extra_action','redirect'),('extra_url','http://example.com'),('geodb','maxmind_lite'),('id_aliases','id, g, group, sid'),('installed_at','2017-08-05 13:27:56'),('keyword_aliases','keyword, utm_term, utm_kwd'),('links_style','new'),('memcached_server','localhost:11211'),('operators_service','carrierdb'),('redis_server','127.0.0.1:6379/1'),('referrer_aliases','referrer, referer'),('se_aliases',''),('se_referrer_aliases','se_referer, se_referrer, seoref'),('source_aliases','source, utm_source'),('stats_ttl','90'),('sub_id_1_aliases','utm_medium'),('sub_id_2_aliases','utm_content'),('sub_id_3_aliases','utm_campaign'),('sub_id_4_aliases','');
/*!40000 ALTER TABLE `keitaro_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_shards`
--

DROP TABLE IF EXISTS `keitaro_shards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_shards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(8) NOT NULL,
  `version` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `date` (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_shards`
--

LOCK TABLES `keitaro_shards` WRITE;
/*!40000 ALTER TABLE `keitaro_shards` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_shards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_stream_filters`
--

DROP TABLE IF EXISTS `keitaro_stream_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_stream_filters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stream_id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `mode` enum('accept','reject') NOT NULL,
  `payload` text,
  PRIMARY KEY (`id`),
  KEY `stream_id` (`stream_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_stream_filters`
--

LOCK TABLES `keitaro_stream_filters` WRITE;
/*!40000 ALTER TABLE `keitaro_stream_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_stream_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_stream_groups`
--

DROP TABLE IF EXISTS `keitaro_stream_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_stream_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'position',
  `uniq_time` int(11) NOT NULL DEFAULT '24',
  `uniq_check_type` varchar(50) NOT NULL DEFAULT 'ip',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `exit_stream` text,
  `exit_stream_type` varchar(20) NOT NULL DEFAULT 'location',
  `action_for_bots` varchar(50) NOT NULL DEFAULT '404',
  `bot_redirect_url` text,
  `bot_text` text,
  `conversion_tracking_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `disable_tracking_exit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `advertising_mode` int(1) unsigned NOT NULL DEFAULT '0',
  `position` int(10) unsigned DEFAULT NULL,
  `state` varchar(50) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `status` (`status`),
  KEY `key` (`key`),
  KEY `state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_stream_groups`
--

LOCK TABLES `keitaro_stream_groups` WRITE;
/*!40000 ALTER TABLE `keitaro_stream_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_stream_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_stream_landing_associations`
--

DROP TABLE IF EXISTS `keitaro_stream_landing_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_stream_landing_associations` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `stream_id` int(20) unsigned NOT NULL,
  `landing_id` int(20) unsigned NOT NULL,
  `state` varchar(10) NOT NULL,
  `share` int(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stream_landing` (`stream_id`,`landing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_stream_landing_associations`
--

LOCK TABLES `keitaro_stream_landing_associations` WRITE;
/*!40000 ALTER TABLE `keitaro_stream_landing_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_stream_landing_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_stream_offer_associations`
--

DROP TABLE IF EXISTS `keitaro_stream_offer_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_stream_offer_associations` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `stream_id` int(20) unsigned NOT NULL,
  `offer_id` int(20) unsigned NOT NULL,
  `state` varchar(10) NOT NULL,
  `share` int(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stream_offer` (`stream_id`,`offer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_stream_offer_associations`
--

LOCK TABLES `keitaro_stream_offer_associations` WRITE;
/*!40000 ALTER TABLE `keitaro_stream_offer_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_stream_offer_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_streams`
--

DROP TABLE IF EXISTS `keitaro_streams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_streams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL DEFAULT 'regular',
  `name` varchar(100) DEFAULT NULL,
  `campaign_id` int(10) unsigned DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `chance` int(3) NOT NULL DEFAULT '0',
  `redirect_type` varchar(50) DEFAULT NULL,
  `url` text,
  `action_options` text,
  `comments` text,
  `state` varchar(50) NOT NULL DEFAULT 'active',
  `updated_at` datetime DEFAULT NULL,
  `action_type` varchar(50) DEFAULT NULL,
  `action_payload` mediumtext,
  `schema` varchar(30) DEFAULT NULL,
  `collect_clicks` int(1) unsigned DEFAULT '1',
  `filter_or` int(1) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `position` (`position`),
  KEY `state` (`state`),
  KEY `campaign_id` (`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_streams`
--

LOCK TABLES `keitaro_streams` WRITE;
/*!40000 ALTER TABLE `keitaro_streams` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_streams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_traffic_sources`
--

DROP TABLE IF EXISTS `keitaro_traffic_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_traffic_sources` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `postback_url` text,
  `postback_statuses` varchar(255) DEFAULT '["sale","lead","rejected","rebill"]',
  `template_name` varchar(255) DEFAULT NULL,
  `accept_parameters` tinyint(1) unsigned DEFAULT '1',
  `parameters` text,
  `state` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_traffic_sources`
--

LOCK TABLES `keitaro_traffic_sources` WRITE;
/*!40000 ALTER TABLE `keitaro_traffic_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_traffic_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_triggers`
--

DROP TABLE IF EXISTS `keitaro_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_triggers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stream_id` int(10) unsigned NOT NULL,
  `target` varchar(50) NOT NULL,
  `condition` varchar(100) NOT NULL,
  `selected_page` varchar(255) DEFAULT NULL,
  `pattern` varchar(255) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `interval` int(10) unsigned NOT NULL,
  `next_run_at` int(10) unsigned DEFAULT NULL,
  `alternative_urls` text,
  `grab_from_page` varchar(250) DEFAULT NULL,
  `av_settings` text,
  `reverse` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `scan_page` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_triggers`
--

LOCK TABLES `keitaro_triggers` WRITE;
/*!40000 ALTER TABLE `keitaro_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_user_campaign_permissions`
--

DROP TABLE IF EXISTS `keitaro_user_campaign_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_user_campaign_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `features` text,
  `metrics` text,
  PRIMARY KEY (`id`),
  KEY `user_id_campaign_id_idx` (`user_id`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_user_campaign_permissions`
--

LOCK TABLES `keitaro_user_campaign_permissions` WRITE;
/*!40000 ALTER TABLE `keitaro_user_campaign_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_user_campaign_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_user_password_hashes`
--

DROP TABLE IF EXISTS `keitaro_user_password_hashes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_user_password_hashes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `expires_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_user_password_hashes`
--

LOCK TABLES `keitaro_user_password_hashes` WRITE;
/*!40000 ALTER TABLE `keitaro_user_password_hashes` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_user_password_hashes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_user_preferences`
--

DROP TABLE IF EXISTS `keitaro_user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_user_preferences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `pref_name` varchar(50) NOT NULL,
  `pref_value` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_pref_name` (`user_id`,`pref_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_user_preferences`
--

LOCK TABLES `keitaro_user_preferences` WRITE;
/*!40000 ALTER TABLE `keitaro_user_preferences` DISABLE KEYS */;
INSERT INTO `keitaro_user_preferences` VALUES (1,1,'timezone','Europe/Moscow'),(2,1,'language','ru');
/*!40000 ALTER TABLE `keitaro_user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_users`
--

DROP TABLE IF EXISTS `keitaro_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('ADMIN','USER') NOT NULL DEFAULT 'USER',
  `login` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `rules` text,
  `permissions` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `login` (`login`,`password`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_users`
--

LOCK TABLES `keitaro_users` WRITE;
/*!40000 ALTER TABLE `keitaro_users` DISABLE KEYS */;
INSERT INTO `keitaro_users` VALUES (1,'ADMIN','admin','4934212a2314d3960835a8cb9f57d4a8',NULL,'a:0:{}',NULL);
/*!40000 ALTER TABLE `keitaro_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keitaro_visitors`
--

DROP TABLE IF EXISTS `keitaro_visitors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keitaro_visitors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `visitor_code` varchar(100) NOT NULL,
  `ip_id` int(10) unsigned NOT NULL,
  `user_agent_id` int(10) unsigned NOT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  `region_id` int(10) unsigned DEFAULT NULL,
  `city_id` int(10) unsigned DEFAULT NULL,
  `device_type_id` int(10) unsigned DEFAULT NULL,
  `device_model_id` int(10) unsigned DEFAULT NULL,
  `screen_id` int(10) unsigned DEFAULT NULL,
  `language_id` int(10) unsigned DEFAULT NULL,
  `browser_id` int(10) unsigned DEFAULT NULL,
  `browser_version_id` int(10) unsigned DEFAULT NULL,
  `os_id` int(10) unsigned DEFAULT NULL,
  `os_version_id` int(10) unsigned DEFAULT NULL,
  `connection_type_id` int(10) unsigned DEFAULT NULL,
  `operator_id` int(10) unsigned DEFAULT NULL,
  `isp_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`visitor_code`),
  KEY `user_agent_id` (`user_agent_id`),
  KEY `ip_id` (`ip_id`),
  KEY `country_id` (`country_id`),
  KEY `region_id` (`region_id`),
  KEY `city_id` (`city_id`),
  KEY `device_type_id` (`device_type_id`),
  KEY `device_model_id` (`device_model_id`),
  KEY `operator_id` (`operator_id`),
  KEY `isp_id` (`isp_id`),
  KEY `os_version_id` (`os_version_id`),
  KEY `screen_id` (`screen_id`),
  KEY `language_id` (`language_id`),
  KEY `browser_id` (`browser_id`),
  KEY `os_id` (`os_id`),
  KEY `connection_type_id` (`connection_type_id`),
  KEY `browser_version_id` (`browser_version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keitaro_visitors`
--

LOCK TABLES `keitaro_visitors` WRITE;
/*!40000 ALTER TABLE `keitaro_visitors` DISABLE KEYS */;
/*!40000 ALTER TABLE `keitaro_visitors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `name` varchar(255) NOT NULL,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('Migration_20160909120710_CreateApiKeys'),('Migration_20160909120710_FirstMigration'),('Migration_20160918130517_CreateClicks'),('Migration_20160918135109_CreateConversions2'),('Migration_20160918135327_CreateRawClicks'),('Migration_20160918135512_CreateRefTables'),('Migration_20160918142331_CreateDailyEntries'),('Migration_20161003163037_AddTypeToStreams'),('Migration_20161003163705_SyncDbSchema'),('Migration_20161004101422_RenameStreamActionFields'),('Migration_20161004102502_ExtractDefaultActions'),('Migration_20161005154527_MigrateRedirectDataInStreams'),('Migration_20161007100510_AddCollectClicksToStreams'),('Migration_20161007163321_MigrateBotActionsToForcedActions'),('Migration_20161008085616_AddUniqueIndexToSchemaMigrations'),('Migration_20161012092340_CreateLanding'),('Migration_20161019223117_GroupType'),('Migration_20161020230734_UserCampaignPermissions'),('Migration_20161031233854_CreateAffiliateNetwork'),('Migration_20161104002542_LandingAddState'),('Migration_20161105092911_AddSchemaLandingOfferToStreams'),('Migration_20161105102135_UpdateSchemaInStreams'),('Migration_20161107152857_CreateOffersTable'),('Migration_20161108105014_ChangeOfferCount'),('Migration_20161108142454_CreateStreamLandingAssociations'),('Migration_20161108142459_CreateStreamOfferAssociations'),('Migration_20161108190417_RenameTimestampsInLandings'),('Migration_20161111111151_AddNameToStreams'),('Migration_20161112142644_RenameTimestampsInNetworks'),('Migration_20161112142645_RenameTimestampsInOffers'),('Migration_20161114224931_RenameTimestampsInNetworks'),('Migration_20161115111649_AddBcryptPassword'),('Migration_20161202133027_AddIsUniqueGlobalToClicks'),('Migration_20161202135427_AddLeadSaleRejectedRevenuesToClicks'),('Migration_20161205104437_RenameClicksToEvents'),('Migration_20161206231240_AddLpClickDatetime'),('Migration_20161208160631_UpdateIndexesOfEvents'),('Migration_20161208222930_RenameRawClicks'),('Migration_20161210140656_RemoveCountryIdFromRefRegions'),('Migration_20161210141020_RemoveCountryREgionFromRefCities'),('Migration_20161212093157_CreateUserPreferences'),('Migration_20161212104538_ExtractPreferences'),('Migration_20161213151819_RenameQueueToDelayedTask'),('Migration_20161214125109_RenameEventQueue'),('Migration_20161219200151_RenameDbDraft'),('Migration_20161220075354_AddvisitorIdToEvents'),('Migration_20161220121100_CreateVisitors'),('Migration_20161220122451_MigrateVisitors'),('Migration_20161220125239_CreateRefDeviceTypes'),('Migration_20161220125637_CreateRefConnectionTypes'),('Migration_20161220130046_CreateDestinations'),('Migration_20161220130444_CreateNewRefColumnsToEvents'),('Migration_20161220130650_CreateTrafficSource'),('Migration_20161221065433_SetDestinationDefaultNull'),('Migration_20161221075100_RenameEventsToClicksBack'),('Migration_20161221111103_AddVisitorIdToConversions2'),('Migration_20161221123617_DropParentAttrFromRefs'),('Migration_20161222121216_CreateRefSubIds'),('Migration_20161222132145_AddOperatorIdIspIdToVisitors'),('Migration_20161223065716_RenameCodeToVisitorCode'),('Migration_20161223102826_MakeDefaultNullInVisitors'),('Migration_20161223105843_RemoveVisitorFieldsFromClicks'),('Migration_20161223113029_CreateRefSearchEngines'),('Migration_20161223122446_CreateDestinations'),('Migration_20161223130012_UpdateConversions2'),('Migration_20161224103230_CreateLanguages'),('Migration_20161224103732_RenameSeToSearchEngine'),('Migration_20161229080919_CampaignAddTrafficSource'),('Migration_20161229081815_FixVisitorIndex'),('Migration_20170102101009_AddTokenToCampaigns'),('Migration_20170103102302_AddExternalIdCreativeId'),('Migration_20170104162554_CreateExternalIdsCreativeIds'),('Migration_20170104181011_AddGoalsToClicks'),('Migration_20170105063028_AddLandingClickedToClicks'),('Migration_20170120204756_AddDefaultsToClicks'),('Migration_20170120210133_AddSettingStatsTtl'),('Migration_20170125162047_MakeTokenDefaultNull'),('Migration_20170126164849_SetDefaultPostbackUrlNetworks'),('Migration_20170126165727_SetDefaults2sPostbackInSource'),('Migration_20170127143525_CampaignCostAuto'),('Migration_20170130125927_OfferUpsellAuto'),('Migration_20170131131619_AddClickCreativeExternalIdsToConversion'),('Migration_20170202215517_CreateSessions'),('Migration_20170203135535_CreateCronStatus'),('Migration_20170204130131_CreateReportBookmarks'),('Migration_20170207104307_CreateAccessTables'),('Migration_20170207205026_RenameReportBookmarkToFavouriteReport'),('Migration_20170209110539_MigrateUserRulesToAcl'),('Migration_20170209161316_AddParentCampaignIdToClicks'),('Migration_20170209161527_UpdateIndexesInClicks'),('Migration_20170211203840_CreateAclReports'),('Migration_20170213140641_RenameTokenToParametersInTs'),('Migration_20170213202841_AddAdCampaignId'),('Migration_20170213203606_CreateRefAdCampaignIds'),('Migration_20170214143434_RenameCreativeExternalAdCampaign'),('Migration_20170214174804_SyncFieldInConversions'),('Migration_20170224142540_AddIndexes'),('Migration_20170306112329_CreateAclResource'),('Migration_20170323201853_CampaignBindVisitorLandingOffer'),('Migration_20170324110035_IncreaseActionPayloadSize'),('Migration_20170328155219_AffiliateNetworkOfferParam'),('Migration_20170329080023_IncreaseDeviceTypeValueSize'),('Migration_20170329091946_MakeValuesBinary'),('Migration_20170330135859_MigrateResourceAcl'),('Migration_20170403155739_AddSaleDatetimeToConversions'),('Migration_20170406095030_ChangeTypeOfLandingClickedDatetime'),('Migration_20170411135709_FixRejectedClicks'),('Migration_20170413104235_AllowEmptyIp'),('Migration_20170417101608_UpdateAclEntityNames'),('Migration_20170418191031_MultipleAuthHash'),('Migration_20170421142042_AddClickIndexes'),('Migration_20170428194007_AddVisitorIndexes'),('Migration_20170501203702_AddDomain'),('Migration_20170502085659_CreateLabels'),('Migration_20170502174539_FixLeadRevenue'),('Migration_20170506193451_ConvertAclTypes'),('Migration_20170506215758_FixVisitorIndex'),('Migration_20170509185110_FixGroups'),('Migration_20170511083150_UpdateIndexForLabels'),('Migration_20170513204508_CostDecimals'),('Migration_20170514140937_AddTrafficSourcePostbackType'),('Migration_20170515145610_AddLandingTypeAndMacrosEnabled'),('Migration_20170517120358_AddClickCompositeIndexes'),('Migration_20170518095017_AllowEmptyStream'),('Migration_20170519070632_UpdateTrafficSourceStatus'),('Migration_20170521113756_AddStreamFilterOr'),('Migration_20170529074640_AddClickParentSubId'),('Migration_20170609192530_CampaignAddDomainId'),('Migration_20170610093539_ChangeSchemaForCurl'),('Migration_20170610102246_ChangeSchemaOffersToLandings'),('Migration_20170719123810_OfferAddCountryAttribute'),('Migration_20170721113953_RemoveStreamLandingOfferId'),('Migration_20170721161927_DeleteBadDomainCampaignRef');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_version`
--

DROP TABLE IF EXISTS `schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_version` (
  `version` int(10) unsigned NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_version`
--

LOCK TABLES `schema_version` WRITE;
/*!40000 ALTER TABLE `schema_version` DISABLE KEYS */;
INSERT INTO `schema_version` VALUES (102);
/*!40000 ALTER TABLE `schema_version` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

