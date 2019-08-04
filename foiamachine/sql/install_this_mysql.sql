-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: foiamachine
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.18.04.2

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
-- Table structure for table `agency_agency`
--

DROP TABLE IF EXISTS `agency_agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agency_agency` (
  `pub_contact_cnt` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `deprecated` datetime DEFAULT NULL,
  `government_id` int(11) NOT NULL,
  `nay_votes` smallint(5) unsigned NOT NULL,
  `editor_contact_cnt` int(11) NOT NULL DEFAULT '0',
  `creator_id` int(11) DEFAULT NULL,
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `yay_votes` smallint(5) unsigned NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agency_agency`
--

LOCK TABLES `agency_agency` WRITE;
/*!40000 ALTER TABLE `agency_agency` DISABLE KEYS */;
/*!40000 ALTER TABLE `agency_agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agency_agency_contacts`
--

DROP TABLE IF EXISTS `agency_agency_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agency_agency_contacts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agency_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agency_agency_contacts`
--

LOCK TABLES `agency_agency_contacts` WRITE;
/*!40000 ALTER TABLE `agency_agency_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `agency_agency_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` VALUES (3,'admin'),(2,'AnonymousUser'),(1,'public');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add flat page',8,'add_flatpage'),(23,'Can change flat page',8,'change_flatpage'),(24,'Can delete flat page',8,'delete_flatpage'),(25,'Can add Tag',9,'add_tag'),(26,'Can change Tag',9,'change_tag'),(27,'Can delete Tag',9,'delete_tag'),(28,'Can add Tagged Item',10,'add_taggeditem'),(29,'Can change Tagged Item',10,'change_taggeditem'),(30,'Can delete Tagged Item',10,'delete_taggeditem'),(31,'Can add registration profile',11,'add_registrationprofile'),(32,'Can change registration profile',11,'change_registrationprofile'),(33,'Can delete registration profile',11,'delete_registrationprofile'),(34,'Can add migration history',12,'add_migrationhistory'),(35,'Can change migration history',12,'change_migrationhistory'),(36,'Can delete migration history',12,'delete_migrationhistory'),(37,'Can add email address',13,'add_emailaddress'),(38,'Can change email address',13,'change_emailaddress'),(39,'Can delete email address',13,'delete_emailaddress'),(40,'Can add activation key value',14,'add_activationkeyvalue'),(41,'Can change activation key value',14,'change_activationkeyvalue'),(42,'Can delete activation key value',14,'delete_activationkeyvalue'),(43,'Can add interested party',15,'add_interestedparty'),(44,'Can change interested party',15,'change_interestedparty'),(45,'Can delete interested party',15,'delete_interestedparty'),(46,'Can add project',16,'add_project'),(47,'Can change project',16,'change_project'),(48,'Can delete project',16,'delete_project'),(49,'Can add organization',17,'add_organization'),(50,'Can change organization',17,'change_organization'),(51,'Can delete organization',17,'delete_organization'),(52,'Can add user profile',18,'add_userprofile'),(53,'Can change user profile',18,'change_userprofile'),(54,'Can delete user profile',18,'delete_userprofile'),(55,'Can add permission group',19,'add_permissiongroup'),(56,'Can change permission group',19,'change_permissiongroup'),(57,'Can delete permission group',19,'delete_permissiongroup'),(58,'Can add document cloud properties',20,'add_documentcloudproperties'),(59,'Can change document cloud properties',20,'change_documentcloudproperties'),(60,'Can delete document cloud properties',20,'delete_documentcloudproperties'),(61,'Can add document',21,'add_document'),(62,'Can change document',21,'change_document'),(63,'Can delete document',21,'delete_document'),(64,'Can add language',22,'add_language'),(65,'Can change language',22,'change_language'),(66,'Can delete language',22,'delete_language'),(67,'Can add admin name',23,'add_adminname'),(68,'Can change admin name',23,'change_adminname'),(69,'Can delete admin name',23,'delete_adminname'),(70,'Can add update',24,'add_update'),(71,'Can change update',24,'change_update'),(72,'Can delete update',24,'delete_update'),(73,'Can add fee exemption other',25,'add_feeexemptionother'),(74,'Can change fee exemption other',25,'change_feeexemptionother'),(75,'Can delete fee exemption other',25,'delete_feeexemptionother'),(76,'Can add nation',26,'add_nation'),(77,'Can change nation',26,'change_nation'),(78,'Can delete nation',26,'delete_nation'),(79,'Can add statute',27,'add_statute'),(80,'Can change statute',27,'change_statute'),(81,'Can delete statute',27,'delete_statute'),(82,'Can add holiday',28,'add_holiday'),(83,'Can change holiday',28,'change_holiday'),(84,'Can delete holiday',28,'delete_holiday'),(85,'Can add government',29,'add_government'),(86,'Can change government',29,'change_government'),(87,'Can delete government',29,'delete_government'),(88,'Can add title',30,'add_title'),(89,'Can change title',30,'change_title'),(90,'Can delete title',30,'delete_title'),(91,'Can add phone',31,'add_phone'),(92,'Can change phone',31,'change_phone'),(93,'Can delete phone',31,'delete_phone'),(94,'Can add address',32,'add_address'),(95,'Can change address',32,'change_address'),(96,'Can delete address',32,'delete_address'),(97,'Can add note',33,'add_note'),(98,'Can change note',33,'change_note'),(99,'Can delete note',33,'delete_note'),(100,'Can add contact',34,'add_contact'),(101,'Can change contact',34,'change_contact'),(102,'Can delete contact',34,'delete_contact'),(103,'Can add support level',35,'add_supportlevel'),(104,'Can change support level',35,'change_supportlevel'),(105,'Can delete support level',35,'delete_supportlevel'),(106,'Can add supporter',36,'add_supporter'),(107,'Can change supporter',36,'change_supporter'),(108,'Can delete supporter',36,'delete_supporter'),(109,'Can add api access',37,'add_apiaccess'),(110,'Can change api access',37,'change_apiaccess'),(111,'Can delete api access',37,'delete_apiaccess'),(112,'Can add api key',38,'add_apikey'),(113,'Can change api key',38,'change_apikey'),(114,'Can delete api key',38,'delete_apikey'),(115,'Can add user object permission',39,'add_userobjectpermission'),(116,'Can change user object permission',39,'change_userobjectpermission'),(117,'Can delete user object permission',39,'delete_userobjectpermission'),(118,'Can add group object permission',40,'add_groupobjectpermission'),(119,'Can change group object permission',40,'change_groupobjectpermission'),(120,'Can delete group object permission',40,'delete_groupobjectpermission'),(121,'Can add response format',41,'add_responseformat'),(122,'Can change response format',41,'change_responseformat'),(123,'Can delete response format',41,'delete_responseformat'),(124,'Can add record type',42,'add_recordtype'),(125,'Can change record type',42,'change_recordtype'),(126,'Can delete record type',42,'delete_recordtype'),(127,'Can add request',43,'add_request'),(128,'Can change request',43,'change_request'),(129,'Can delete request',43,'delete_request'),(130,'View request',43,'view_this_request'),(131,'Edit request',43,'edit_this_request'),(132,'Delete request',43,'delete_this_request'),(133,'Can add viewable link',44,'add_viewablelink'),(134,'Can change viewable link',44,'change_viewablelink'),(135,'Can delete viewable link',44,'delete_viewablelink'),(136,'Can add notification',45,'add_notification'),(137,'Can change notification',45,'change_notification'),(138,'Can delete notification',45,'delete_notification'),(139,'Can add organization',46,'add_organization'),(140,'Can change organization',46,'change_organization'),(141,'Can delete organization',46,'delete_organization'),(142,'Can add event',47,'add_event'),(143,'Can change event',47,'change_event'),(144,'Can delete event',47,'delete_event'),(145,'Can add agency',48,'add_agency'),(146,'Can change agency',48,'change_agency'),(147,'Can delete agency',48,'delete_agency'),(148,'Can add attachment',49,'add_attachment'),(149,'Can change attachment',49,'change_attachment'),(150,'Can delete attachment',49,'delete_attachment'),(151,'Can add message id',50,'add_messageid'),(152,'Can change message id',50,'change_messageid'),(153,'Can delete message id',50,'delete_messageid'),(154,'Can add mail message',51,'add_mailmessage'),(155,'Can change mail message',51,'change_mailmessage'),(156,'Can delete mail message',51,'delete_mailmessage'),(157,'Can add mail box',52,'add_mailbox'),(158,'Can change mail box',52,'change_mailbox'),(159,'Can delete mail box',52,'delete_mailbox');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (-1,'AnonymousUser','','','','',0,1,0,'2019-02-27 23:19:25','2019-02-27 23:19:25'),(0,'admin','Jack','Gillum','jack.gillum@propublica.org','pbkdf2_sha256$10000$gHAKoMjer5Gm$+t0xD2T7mAL8ai21OIJpDzJJLGlzy2qvwM68AfTJvc8=',1,1,1,'2019-02-28 20:15:49','2019-02-27 23:19:40');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
INSERT INTO `auth_user_groups` VALUES (1,-1,1),(2,-1,2),(3,0,1),(4,0,3);
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_address`
--

DROP TABLE IF EXISTS `contacts_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_address` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `deprecated` datetime DEFAULT NULL,
  `yay_votes` smallint(5) unsigned NOT NULL,
  `nay_votes` smallint(5) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_address`
--

LOCK TABLES `contacts_address` WRITE;
/*!40000 ALTER TABLE `contacts_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_contact`
--

DROP TABLE IF EXISTS `contacts_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_contact` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `deprecated` datetime DEFAULT NULL,
  `yay_votes` smallint(5) unsigned NOT NULL,
  `nay_votes` smallint(5) unsigned NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `dob` date DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_contact_f97a5119` (`creator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_contact`
--

LOCK TABLES `contacts_contact` WRITE;
/*!40000 ALTER TABLE `contacts_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_contact_addresses`
--

DROP TABLE IF EXISTS `contacts_contact_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_contact_addresses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contact_id` (`contact_id`,`address_id`),
  KEY `contacts_contact_addresses_170b8823` (`contact_id`),
  KEY `contacts_contact_addresses_b213c1e9` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_contact_addresses`
--

LOCK TABLES `contacts_contact_addresses` WRITE;
/*!40000 ALTER TABLE `contacts_contact_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_contact_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_contact_emails`
--

DROP TABLE IF EXISTS `contacts_contact_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_contact_emails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `emailaddress_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contact_id` (`contact_id`,`emailaddress_id`),
  KEY `contacts_contact_emails_170b8823` (`contact_id`),
  KEY `contacts_contact_emails_eebec20` (`emailaddress_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_contact_emails`
--

LOCK TABLES `contacts_contact_emails` WRITE;
/*!40000 ALTER TABLE `contacts_contact_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_contact_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_contact_notes`
--

DROP TABLE IF EXISTS `contacts_contact_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_contact_notes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `note_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contact_id` (`contact_id`,`note_id`),
  KEY `contacts_contact_notes_170b8823` (`contact_id`),
  KEY `contacts_contact_notes_14a186ec` (`note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_contact_notes`
--

LOCK TABLES `contacts_contact_notes` WRITE;
/*!40000 ALTER TABLE `contacts_contact_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_contact_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_contact_phone_numbers`
--

DROP TABLE IF EXISTS `contacts_contact_phone_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_contact_phone_numbers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contact_id` (`contact_id`,`phone_id`),
  KEY `contacts_contact_phone_numbers_170b8823` (`contact_id`),
  KEY `contacts_contact_phone_numbers_553956f7` (`phone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_contact_phone_numbers`
--

LOCK TABLES `contacts_contact_phone_numbers` WRITE;
/*!40000 ALTER TABLE `contacts_contact_phone_numbers` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_contact_phone_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_contact_titles`
--

DROP TABLE IF EXISTS `contacts_contact_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_contact_titles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `title_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `contact_id` (`contact_id`,`title_id`),
  KEY `contacts_contact_titles_170b8823` (`contact_id`),
  KEY `contacts_contact_titles_8a3b4cf` (`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_contact_titles`
--

LOCK TABLES `contacts_contact_titles` WRITE;
/*!40000 ALTER TABLE `contacts_contact_titles` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_contact_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_note`
--

DROP TABLE IF EXISTS `contacts_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_note` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `deprecated` datetime DEFAULT NULL,
  `yay_votes` smallint(5) unsigned NOT NULL,
  `nay_votes` smallint(5) unsigned NOT NULL,
  `content` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contacts_note_fbfc09f1` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_note`
--

LOCK TABLES `contacts_note` WRITE;
/*!40000 ALTER TABLE `contacts_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_phone`
--

DROP TABLE IF EXISTS `contacts_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_phone` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `deprecated` datetime DEFAULT NULL,
  `yay_votes` smallint(5) unsigned NOT NULL,
  `nay_votes` smallint(5) unsigned NOT NULL,
  `content` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_phone`
--

LOCK TABLES `contacts_phone` WRITE;
/*!40000 ALTER TABLE `contacts_phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_title`
--

DROP TABLE IF EXISTS `contacts_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_title` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `deprecated` datetime DEFAULT NULL,
  `yay_votes` smallint(5) unsigned NOT NULL,
  `nay_votes` smallint(5) unsigned NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_title`
--

LOCK TABLES `contacts_title` WRITE;
/*!40000 ALTER TABLE `contacts_title` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_emailaddress`
--

DROP TABLE IF EXISTS `core_emailaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_emailaddress` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `deprecated` datetime DEFAULT NULL,
  `yay_votes` smallint(5) unsigned NOT NULL,
  `nay_votes` smallint(5) unsigned NOT NULL,
  `content` varchar(75) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_emailaddress`
--

LOCK TABLES `core_emailaddress` WRITE;
/*!40000 ALTER TABLE `core_emailaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_emailaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` text,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'flat page','flatpages','flatpage'),(9,'Tag','taggit','tag'),(10,'Tagged Item','taggit','taggeditem'),(11,'registration profile','registration','registrationprofile'),(12,'migration history','south','migrationhistory'),(13,'email address','core','emailaddress'),(14,'activation key value','users','activationkeyvalue'),(15,'interested party','users','interestedparty'),(16,'project','users','project'),(17,'organization','users','organization'),(18,'user profile','users','userprofile'),(19,'permission group','users','permissiongroup'),(20,'document cloud properties','doccloud','documentcloudproperties'),(21,'document','doccloud','document'),(22,'language','government','language'),(23,'admin name','government','adminname'),(24,'update','government','update'),(25,'fee exemption other','government','feeexemptionother'),(26,'nation','government','nation'),(27,'statute','government','statute'),(28,'holiday','government','holiday'),(29,'government','government','government'),(30,'title','contacts','title'),(31,'phone','contacts','phone'),(32,'address','contacts','address'),(33,'note','contacts','note'),(34,'contact','contacts','contact'),(35,'support level','supporters','supportlevel'),(36,'supporter','supporters','supporter'),(37,'api access','tastypie','apiaccess'),(38,'api key','tastypie','apikey'),(39,'user object permission','guardian','userobjectpermission'),(40,'group object permission','guardian','groupobjectpermission'),(41,'response format','requests','responseformat'),(42,'record type','requests','recordtype'),(43,'request','requests','request'),(44,'viewable link','requests','viewablelink'),(45,'notification','requests','notification'),(46,'organization','requests','organization'),(47,'event','requests','event'),(48,'agency','agency','agency'),(49,'attachment','mail','attachment'),(50,'message id','mail','messageid'),(51,'mail message','mail','mailmessage'),(52,'mail box','mail','mailbox');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_flatpage`
--

DROP TABLE IF EXISTS `django_flatpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_flatpage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `enable_comments` tinyint(1) NOT NULL,
  `template_name` varchar(70) NOT NULL,
  `registration_required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_flatpage_a4b49ab` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_flatpage`
--

LOCK TABLES `django_flatpage` WRITE;
/*!40000 ALTER TABLE `django_flatpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_flatpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_flatpage_sites`
--

DROP TABLE IF EXISTS `django_flatpage_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_flatpage_sites` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `flatpage_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `flatpage_id` (`flatpage_id`,`site_id`),
  KEY `django_flatpage_sites_dedefef8` (`flatpage_id`),
  KEY `django_flatpage_sites_6223029` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_flatpage_sites`
--

LOCK TABLES `django_flatpage_sites` WRITE;
/*!40000 ALTER TABLE `django_flatpage_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_flatpage_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` text NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1d38fe793aadf290da3aff01a06bf309','YjE4ZTUzODY0M2U5MTcwNTk1YWY2YTVhYjJmNDFhZTQwYmFkMmU1ODqAAn1xAS4=\n','2019-03-14 20:48:25'),('5509c7448562e472aa98e1167daa71eb','YjE4ZTUzODY0M2U5MTcwNTk1YWY2YTVhYjJmNDFhZTQwYmFkMmU1ODqAAn1xAS4=\n','2019-03-14 20:47:53');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'foiamachine.info','foiamachine.info');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doccloud_document`
--

DROP TABLE IF EXISTS `doccloud_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doccloud_document` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `dc_properties_id` int(11) DEFAULT NULL,
  `access_level` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `doccloud_document_a951d5d6` (`slug`),
  KEY `doccloud_document_fbfc09f1` (`user_id`),
  KEY `doccloud_document_3b1c9c31` (`created_at`),
  KEY `doccloud_document_f84f7de6` (`updated_at`),
  KEY `doccloud_document_e5ed642c` (`dc_properties_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doccloud_document`
--

LOCK TABLES `doccloud_document` WRITE;
/*!40000 ALTER TABLE `doccloud_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `doccloud_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doccloud_documentcloudproperties`
--

DROP TABLE IF EXISTS `doccloud_documentcloudproperties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doccloud_documentcloudproperties` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `dc_id` varchar(300) NOT NULL,
  `dc_url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doccloud_documentcloudproperties`
--

LOCK TABLES `doccloud_documentcloudproperties` WRITE;
/*!40000 ALTER TABLE `doccloud_documentcloudproperties` DISABLE KEYS */;
/*!40000 ALTER TABLE `doccloud_documentcloudproperties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `government_adminname`
--

DROP TABLE IF EXISTS `government_adminname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `government_adminname` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `deprecated` datetime DEFAULT NULL,
  `yay_votes` smallint(5) unsigned NOT NULL,
  `nay_votes` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_plural` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `government_adminname`
--

LOCK TABLES `government_adminname` WRITE;
/*!40000 ALTER TABLE `government_adminname` DISABLE KEYS */;
/*!40000 ALTER TABLE `government_adminname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `government_feeexemptionother`
--

DROP TABLE IF EXISTS `government_feeexemptionother`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `government_feeexemptionother` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `deprecated` datetime DEFAULT NULL,
  `yay_votes` smallint(5) unsigned NOT NULL,
  `nay_votes` smallint(5) unsigned NOT NULL,
  `name` varchar(512) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` text,
  `source` varchar(200) DEFAULT NULL,
  `typee` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `government_feeexemptionother_a951d5d6` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `government_feeexemptionother`
--

LOCK TABLES `government_feeexemptionother` WRITE;
/*!40000 ALTER TABLE `government_feeexemptionother` DISABLE KEYS */;
INSERT INTO `government_feeexemptionother` VALUES (1,'2019-02-27 23:19:44',NULL,0,0,'Fee Waiver - Commercial','fee-waiver-commercial','Companies that or people who seek information for a use or purpose      that furthers commercial, trade, or profit interests,       including for use in litigation. Commercial requesters are required to pay for        search, review and duplication costs.','http://www.gwu.edu/~nsarchiv/nsa/foia/guide.html','F'),(2,'2019-02-27 23:19:44',NULL,0,0,'Fee Waiver - Educational Institution','fee-waiver-educational-institution','Preschools, public or private elementary or secondary schools, and institutions      of graduate higher education, undergraduate higher education, professional education,       or vocational education that operate a program(s) of scholarly research.        Educational requesters are required to pay duplication costs, but are entitled         to the first 100 pages without charge.','http://www.gwu.edu/~nsarchiv/nsa/foia/guide.html','F'),(3,'2019-02-27 23:19:44',NULL,0,0,'Fee Waiver - Non-Commercial Scientific Institution','fee-waiver-non-commercial-scientific-institution',' Non-commercially operated institutions that conduct scientific research      not intended to promote any particular product or industry. Non-commercial requesters       are required to pay duplication costs, but are entitled to the first 100 pages without charge.','http://www.gwu.edu/~nsarchiv/nsa/foia/guide.html','F'),(4,'2019-02-27 23:19:44',NULL,0,0,'Fee Waiver - Representative of the News Media','fee-waiver-representative-of-the-news-media',' People who actively gather news for entities organized and operated to publish or broadcast      news to the public. News Media requesters are required to pay for duplication, but are       entitled to the first 100 pages without charge.','http://www.gwu.edu/~nsarchiv/nsa/foia/guide.html','F'),(5,'2019-02-27 23:19:44',NULL,0,0,'Fee Waiver - Other Requesters ','fee-waiver-other-requesters','Requesters who do not fit into any of the above categories.      These requesters are persons who are not commercial, news media, scientific or       educational requesters and are required to pay search costs for more than 2 hours        and duplication costs for more than 100 pages.','http://www.gwu.edu/~nsarchiv/nsa/foia/guide.html','F'),(6,'2019-02-27 23:19:44',NULL,0,0,'Exemption (b)(1)','exemption-b1','National Security Information','http://www.gwu.edu/~nsarchiv/nsa/foia/guide.html','E'),(7,'2019-02-27 23:19:44',NULL,0,0,'Exemption (b)(2)','exemption-b2','Internal Personnel Rules and Practices','http://www.gwu.edu/~nsarchiv/nsa/foia/guide.html','E'),(8,'2019-02-27 23:19:44',NULL,0,0,'Exemption (b)(2)-High','exemption-b2-high','Substantial internal matters, disclosure would risk circumvention of a legal requirement','http://www.gwu.edu/~nsarchiv/nsa/foia/guide.html','E'),(9,'2019-02-27 23:19:44',NULL,0,0,'Exemption (b)(2)-Low','exemption-b2-low','Internal matters that are essentially trivial in nature.','http://www.gwu.edu/~nsarchiv/nsa/foia/guide.html','E'),(10,'2019-02-27 23:19:44',NULL,0,0,'Exemption (b)(3)','exemption-b3','Information exempt under other laws','http://www.gwu.edu/~nsarchiv/nsa/foia/guide.html','E'),(11,'2019-02-27 23:19:44',NULL,0,0,'Exemption (b)(4)','exemption-b4','Confidential Business Information','http://www.gwu.edu/~nsarchiv/nsa/foia/guide.html','E'),(12,'2019-02-27 23:19:44',NULL,0,0,'Exemption (b)(5)','exemption-b5','Inter or intra agency communication that is subject to deliberative process,      litigation, and other privileges','http://www.gwu.edu/~nsarchiv/nsa/foia/guide.html','E'),(13,'2019-02-27 23:19:44',NULL,0,0,'Exemption (b)(6)','exemption-b6','Personal Privacy','http://www.gwu.edu/~nsarchiv/nsa/foia/guide.html','E'),(14,'2019-02-27 23:19:44',NULL,0,0,'Exemption (b)(7)','exemption-b7','Law Enforcement Records that implicate one of 6 enumerated concerns','http://www.gwu.edu/~nsarchiv/nsa/foia/guide.html','E'),(15,'2019-02-27 23:19:44',NULL,0,0,'Exemption (b)(8)','exemption-b8','Financial Institutions','http://www.gwu.edu/~nsarchiv/nsa/foia/guide.html','E'),(16,'2019-02-27 23:19:44',NULL,0,0,'Exemption (b)(9)','exemption-b9','Geological Information','http://www.gwu.edu/~nsarchiv/nsa/foia/guide.html','E');
/*!40000 ALTER TABLE `government_feeexemptionother` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `government_government`
--

DROP TABLE IF EXISTS `government_government`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `government_government` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `deprecated` datetime DEFAULT NULL,
  `yay_votes` smallint(5) unsigned NOT NULL,
  `nay_votes` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `level` varchar(1) NOT NULL,
  `nation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `government_government_a951d5d6` (`slug`),
  KEY `government_government_b79298d7` (`nation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `government_government`
--

LOCK TABLES `government_government` WRITE;
/*!40000 ALTER TABLE `government_government` DISABLE KEYS */;
INSERT INTO `government_government` VALUES (1,'2019-02-27 23:19:43',NULL,0,0,'United States of America','united-states-of-america','0',1),(2,'2019-02-27 23:19:44',NULL,0,0,'California','california','1',1),(3,'2019-02-27 23:19:44',NULL,0,0,'Florida','florida','1',1),(4,'2019-02-27 23:19:44',NULL,0,0,'Minnesota','minnesota','1',1),(5,'2019-02-27 23:19:44',NULL,0,0,'Alabama','alabama','1',1),(6,'2019-02-27 23:19:44',NULL,0,0,'Alaska','alaska','1',1),(7,'2019-02-27 23:19:45',NULL,0,0,'Arizona','arizona','1',1),(8,'2019-02-27 23:19:45',NULL,0,0,'Delaware','delaware','1',1),(9,'2019-02-27 23:19:45',NULL,0,0,'Montana','montana','1',1),(10,'2019-02-27 23:19:45',NULL,0,0,'Nevada','nevada','1',1),(11,'2019-02-27 23:19:45',NULL,0,0,'North Dakota','north-dakota','1',1),(12,'2019-02-27 23:19:45',NULL,0,0,'Ohio','ohio','1',1),(13,'2019-02-27 23:19:45',NULL,0,0,'Oklahoma','oklahoma','1',1),(14,'2019-02-27 23:19:45',NULL,0,0,'Oregon','oregon','1',1),(15,'2019-02-27 23:19:45',NULL,0,0,'South Dakota','south-dakota','1',1),(16,'2019-02-27 23:19:45',NULL,0,0,'Wyoming','wyoming','1',1),(17,'2019-02-27 23:19:45',NULL,0,0,'North Carolina','north-carolina','1',1),(18,'2019-02-27 23:19:45',NULL,0,0,'Maryland','maryland','1',1),(19,'2019-02-27 23:19:45',NULL,0,0,'Iowa','iowa','1',1),(20,'2019-02-27 23:19:45',NULL,0,0,'South Carolina','south-carolina','1',1),(21,'2019-02-27 23:19:45',NULL,0,0,'District of Columbia','district-of-columbia','3',1),(22,'2019-02-27 23:19:45',NULL,0,0,'Mississippi','mississippi','1',1),(23,'2019-02-27 23:19:45',NULL,0,0,'Texas','texas','1',1),(24,'2019-02-27 23:19:45',NULL,0,0,'Hawaii','hawaii','1',1),(25,'2019-02-27 23:19:45',NULL,0,0,'Massachusetts','massachusetts','1',1),(26,'2019-02-27 23:19:45',NULL,0,0,'New Jersey','new-jersey','1',1),(27,'2019-02-27 23:19:45',NULL,0,0,'Rhode Island','rhode-island','1',1),(28,'2019-02-27 23:19:45',NULL,0,0,'Tennessee','tennessee','1',1),(29,'2019-02-27 23:19:46',NULL,0,0,'Indiana','indiana','1',1),(30,'2019-02-27 23:19:46',NULL,0,0,'Michigan','michigan','1',1),(31,'2019-02-27 23:19:46',NULL,0,0,'New Hampshire','new-hampshire','1',1),(32,'2019-02-27 23:19:46',NULL,0,0,'New York','new-york','1',1),(33,'2019-02-27 23:19:46',NULL,0,0,'Pennsylvania','pennsylvania','1',1),(34,'2019-02-27 23:19:46',NULL,0,0,'Utah','utah','1',1),(35,'2019-02-27 23:19:46',NULL,0,0,'Virginia','virginia','1',1),(36,'2019-02-27 23:19:46',NULL,0,0,'Washington','washington','1',1),(37,'2019-02-27 23:19:46',NULL,0,0,'West Virginia','west-virginia','1',1),(38,'2019-02-27 23:19:46',NULL,0,0,'Wisconsin','wisconsin','1',1),(39,'2019-02-27 23:19:46',NULL,0,0,'Illinois','illinois','1',1),(40,'2019-02-27 23:19:46',NULL,0,0,'Maine','maine','1',1),(41,'2019-02-27 23:19:46',NULL,0,0,'Connecticut','connecticut','1',1),(42,'2019-02-27 23:19:46',NULL,0,0,'Nebraska','nebraska','1',1),(43,'2019-02-27 23:19:46',NULL,0,0,'Arkansas','arkansas','1',1),(44,'2019-02-27 23:19:46',NULL,0,0,'Colorado','colorado','1',1),(45,'2019-02-27 23:19:46',NULL,0,0,'Missouri','missouri','1',1),(46,'2019-02-27 23:19:46',NULL,0,0,'New Mexico','new-mexico','1',1),(47,'2019-02-27 23:19:46',NULL,0,0,'Georgia','georgia','1',1),(48,'2019-02-27 23:19:46',NULL,0,0,'Idaho','idaho','1',1),(49,'2019-02-27 23:19:46',NULL,0,0,'Kansas','kansas','1',1),(50,'2019-02-27 23:19:46',NULL,0,0,'Kentucky','kentucky','1',1),(51,'2019-02-27 23:19:46',NULL,0,0,'Louisiana','louisiana','1',1),(52,'2019-02-27 23:19:47',NULL,0,0,'Vermont','vermont','1',1);
/*!40000 ALTER TABLE `government_government` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `government_government_holidays`
--

DROP TABLE IF EXISTS `government_government_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `government_government_holidays` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `government_id` int(11) NOT NULL,
  `holiday_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `government_id` (`government_id`,`holiday_id`),
  KEY `government_government_holidays_49d3e68f` (`government_id`),
  KEY `government_government_holidays_81d45d7b` (`holiday_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `government_government_holidays`
--

LOCK TABLES `government_government_holidays` WRITE;
/*!40000 ALTER TABLE `government_government_holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `government_government_holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `government_government_statutes`
--

DROP TABLE IF EXISTS `government_government_statutes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `government_government_statutes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `government_id` int(11) NOT NULL,
  `statute_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `government_id` (`government_id`,`statute_id`),
  KEY `government_government_statutes_49d3e68f` (`government_id`),
  KEY `government_government_statutes_f0c931f1` (`statute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `government_government_statutes`
--

LOCK TABLES `government_government_statutes` WRITE;
/*!40000 ALTER TABLE `government_government_statutes` DISABLE KEYS */;
INSERT INTO `government_government_statutes` VALUES (1,1,1),(2,2,2),(24,2,24),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(25,24,25),(26,25,26),(27,26,27),(28,27,28),(29,28,29),(30,29,30),(31,30,31),(32,31,32),(33,32,33),(34,33,34),(35,34,35),(36,35,36),(37,36,37),(38,37,38),(39,38,39),(40,39,40),(41,40,41),(42,41,42),(43,42,43),(44,43,44),(45,44,45),(46,45,46),(47,46,47),(48,47,48),(49,48,49),(50,49,50),(51,50,51),(52,51,52),(53,52,53);
/*!40000 ALTER TABLE `government_government_statutes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `government_holiday`
--

DROP TABLE IF EXISTS `government_holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `government_holiday` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `deprecated` datetime DEFAULT NULL,
  `yay_votes` smallint(5) unsigned NOT NULL,
  `nay_votes` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `government_holiday`
--

LOCK TABLES `government_holiday` WRITE;
/*!40000 ALTER TABLE `government_holiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `government_holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `government_language`
--

DROP TABLE IF EXISTS `government_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `government_language` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `deprecated` datetime DEFAULT NULL,
  `yay_votes` smallint(5) unsigned NOT NULL,
  `nay_votes` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `government_language_a951d5d6` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `government_language`
--

LOCK TABLES `government_language` WRITE;
/*!40000 ALTER TABLE `government_language` DISABLE KEYS */;
INSERT INTO `government_language` VALUES (1,'2019-02-27 23:19:43',NULL,0,0,'English','english');
/*!40000 ALTER TABLE `government_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `government_nation`
--

DROP TABLE IF EXISTS `government_nation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `government_nation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `deprecated` datetime DEFAULT NULL,
  `yay_votes` smallint(5) unsigned NOT NULL,
  `nay_votes` smallint(5) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `primary_language_id` int(11) DEFAULT NULL,
  `admin_0_name_id` int(11) DEFAULT NULL,
  `admin_1_name_id` int(11) DEFAULT NULL,
  `admin_2_name_id` int(11) DEFAULT NULL,
  `admin_3_name_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `government_nation_a951d5d6` (`slug`),
  KEY `government_nation_d9dc0779` (`primary_language_id`),
  KEY `government_nation_c2d900fa` (`admin_0_name_id`),
  KEY `government_nation_925c1fa5` (`admin_1_name_id`),
  KEY `government_nation_514e1270` (`admin_2_name_id`),
  KEY `government_nation_65193297` (`admin_3_name_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `government_nation`
--

LOCK TABLES `government_nation` WRITE;
/*!40000 ALTER TABLE `government_nation` DISABLE KEYS */;
INSERT INTO `government_nation` VALUES (1,'2019-02-27 23:19:43',NULL,0,0,'United States of America','united-states-of-america',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `government_nation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `government_nation_foi_languages`
--

DROP TABLE IF EXISTS `government_nation_foi_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `government_nation_foi_languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nation_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nation_id` (`nation_id`,`language_id`),
  KEY `government_nation_foi_languages_b79298d7` (`nation_id`),
  KEY `government_nation_foi_languages_7ab48146` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `government_nation_foi_languages`
--

LOCK TABLES `government_nation_foi_languages` WRITE;
/*!40000 ALTER TABLE `government_nation_foi_languages` DISABLE KEYS */;
INSERT INTO `government_nation_foi_languages` VALUES (1,1,1);
/*!40000 ALTER TABLE `government_nation_foi_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `government_statute`
--

DROP TABLE IF EXISTS `government_statute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `government_statute` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `deprecated` datetime DEFAULT NULL,
  `yay_votes` smallint(5) unsigned NOT NULL,
  `nay_votes` smallint(5) unsigned NOT NULL,
  `short_title` varchar(255) NOT NULL,
  `designator` varchar(255) DEFAULT NULL,
  `text` text,
  `days_till_due` int(11) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `government_statute_a951d5d6` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `government_statute`
--

LOCK TABLES `government_statute` WRITE;
/*!40000 ALTER TABLE `government_statute` DISABLE KEYS */;
INSERT INTO `government_statute` VALUES (1,'2019-02-27 23:19:44',NULL,0,0,'Freedom of Information Act','552','a federal freedom of information law that allows for the     full or partial disclosure of previously unreleased information and documents    controlled by the United States government. ',20,'the-freedom-of-information-act'),(2,'2019-02-27 23:19:44',NULL,0,0,'California Public Records Act','6250','A law passed by the California State Legislature         and signed by the Governor in 1968 requiring inspection and/or disclosure          of governmental records to the public upon request, unless exempted by law.',10,'california-public-records-act'),(3,'2019-02-27 23:19:44',NULL,0,0,'Florida Sunshine Law, Fla. Stat. sec. 119.01 et. seq.','','',-1,'florida-sunshine-law-fla-stat-sec-11901-et-seq'),(4,'2019-02-27 23:19:44',NULL,0,0,'Minnesota Data Practices Act § 13.01 et seq.','','',-1,'minnesota-data-practices-act-1301-et-seq'),(5,'2019-02-27 23:19:44',NULL,0,0,'Alabama Open Records Law § 36-12-40 et seq.','','',-1,'alabama-open-records-law-36-12-40-et-seq'),(6,'2019-02-27 23:19:44',NULL,0,0,'Alaska Open Records Law, A.S. Code § 40-25-110 et seq.','','',-1,'alaska-open-records-law-as-code-40-25-110-et-seq'),(7,'2019-02-27 23:19:45',NULL,0,0,'Arizona Public Records Law § 39.101 et seq.','','',-1,'arizona-public-records-law-39101-et-seq'),(8,'2019-02-27 23:19:45',NULL,0,0,'Delaware Freedom of Information Act § 100001 et seq.','','',-1,'delaware-freedom-of-information-act-100001-et-seq'),(9,'2019-02-27 23:19:45',NULL,0,0,'Montana Public Records Act § 2-6-101 et seq.','','',-1,'montana-public-records-act-2-6-101-et-seq'),(10,'2019-02-27 23:19:45',NULL,0,0,'Nevada Open Records Act § 239 et seq.','','',-1,'nevada-open-records-act-239-et-seq'),(11,'2019-02-27 23:19:45',NULL,0,0,'North Dakota Open Records Statute, N.D.C.C. §44-04-18 et seq.','','',-1,'north-dakota-open-records-statute-ndcc-44-04-18-et'),(12,'2019-02-27 23:19:45',NULL,0,0,'Ohio Open Records Law, §149.43 et seq.','','',-1,'ohio-open-records-law-14943-et-seq'),(13,'2019-02-27 23:19:45',NULL,0,0,'Oklahoma Open Records Act, 51 §24A.1 et seq.','','',-1,'oklahoma-open-records-act-51-24a1-et-seq'),(14,'2019-02-27 23:19:45',NULL,0,0,'Oregon Public Records Law, §192.410 et seq.','','',-1,'oregon-public-records-law-192410-et-seq'),(15,'2019-02-27 23:19:45',NULL,0,0,'South Dakota Sunshine Law, §1-27-1 et seq.','','',-1,'south-dakota-sunshine-law-1-27-1-et-seq'),(16,'2019-02-27 23:19:45',NULL,0,0,'Wyoming Sunshine Law, §16-4-201 et seq.','','',-1,'wyoming-sunshine-law-16-4-201-et-seq'),(17,'2019-02-27 23:19:45',NULL,0,0,'North Carolina Public Records Law, G.S. §132-1.','','',-1,'north-carolina-public-records-law-gs-132-1'),(18,'2019-02-27 23:19:45',NULL,0,0,'Maryland Public Information Act § 10-611 et seq.','','',30,'maryland-public-information-act-10-611-et-seq'),(19,'2019-02-27 23:19:45',NULL,0,0,'Iowa Open Records Law § 22.1 et seq.','','',20,'iowa-open-records-law-221-et-seq'),(20,'2019-02-27 23:19:45',NULL,0,0,'South Carolina Freedom of Information Act, §30-4-10 et seq.','','',15,'south-carolina-freedom-of-information-act-30-4-10'),(21,'2019-02-27 23:19:45',NULL,0,0,'District of Columbia Freedom of Information Act, or FOIA, DC Code §§ 2-531-539','','',15,'the-district-of-columbia-freedom-of-information-ac'),(22,'2019-02-27 23:19:45',NULL,0,0,'Mississippi Public Records Act § 25-61-1 et seq.','','??',14,'mississippi-public-records-act-25-61-1-et-seq'),(23,'2019-02-27 23:19:45',NULL,0,0,'Texas Public Information Act, §6252-17a et seq.','','',10,'texas-public-information-act-6252-17a-et-seq'),(24,'2019-02-27 23:19:45',NULL,0,0,'California Public Records Act § 6250 et seq.','','A law passed by the California State Legislature\\\nand signed by the Governor in 1968 requiring inspection and/or disclosure\\\nof governmental records to the public upon request, unless exempted by law.',10,'california-public-records-act-6250-et-seq'),(25,'2019-02-27 23:19:45',NULL,0,0,'Hawaii Open Records Law § 91-1 et seq.','','',10,'hawaii-open-records-law-91-1-et-seq'),(26,'2019-02-27 23:19:45',NULL,0,0,'Massachusetts Public Records Act § 66-10 et seq.','','',10,'massachusetts-public-records-act-66-10-et-seq'),(27,'2019-02-27 23:19:45',NULL,0,0,'New Jersey Open Public Records Act, N.J.S.A. 47:1A-1 et seq.','','',7,'new-jersey-open-public-records-act-njsa-471a-1-et'),(28,'2019-02-27 23:19:45',NULL,0,0,'Rhode Island Access to Public Records Act, §38-2-1 et seq.','','',7,'rhode-island-access-to-public-records-act-38-2-1-e'),(29,'2019-02-27 23:19:45',NULL,0,0,'Tennessee Open Records Act, §10-7-503 et seq.','','',7,'tennessee-open-records-act-10-7-503-et-seq'),(30,'2019-02-27 23:19:46',NULL,0,0,'Indiana Access to Public Records Act § 5-14-3-1 et seq.','','',7,'indiana-access-to-public-records-act-5-14-3-1-et-s'),(31,'2019-02-27 23:19:46',NULL,0,0,'Michigan Freedom of Information Act § 15.231 et seq.','','',5,'michigan-freedom-of-information-act-15231-et-seq'),(32,'2019-02-27 23:19:46',NULL,0,0,'New Hampshire Right to Know Law R.S.A. Ch. 01-A et seq.','','',5,'new-hampshire-right-to-know-law-rsa-ch-01-a-et-seq'),(33,'2019-02-27 23:19:46',NULL,0,0,'New York Freedom of Information Law, N.Y. Pub. Off. Law sec. 84 et seq.','','',5,'new-york-freedom-of-information-law-ny-pub-off-law'),(34,'2019-02-27 23:19:46',NULL,0,0,'Pennsylvania Right to Know Law, 65 §66.1 et seq.','','',5,'pennsylvania-right-to-know-law-65-661-et-seq'),(35,'2019-02-27 23:19:46',NULL,0,0,'Utah Government Records Access and Management Act, §63-2-101 et seq.','','',5,'utah-government-records-access-and-management-act'),(36,'2019-02-27 23:19:46',NULL,0,0,'Virginia Freedom of Information Act, §2.2-3704 et seq.','','',5,'virginia-freedom-of-information-act-22-3704-et-seq'),(37,'2019-02-27 23:19:46',NULL,0,0,'Washington Public Records Act, §42.56 et seq.','','',5,'washington-public-records-act-4256-et-seq'),(38,'2019-02-27 23:19:46',NULL,0,0,'West Virginia Freedom of Information Act, §29-B-1-1 et seq.','','',5,'west-virginia-freedom-of-information-act-29-b-1-1'),(39,'2019-02-27 23:19:46',NULL,0,0,'Wisconsin Open Records Law, §19.31 et seq.','','',5,'wisconsin-open-records-law-1931-et-seq'),(40,'2019-02-27 23:19:46',NULL,0,0,'Illinois Freedom of Information Act, 5 ILCS 140','','',5,'illinois-freedom-of-information-act-5-ilcs-140'),(41,'2019-02-27 23:19:46',NULL,0,0,'Maine Freedom of Access Act § 402 et seq.','','',5,'maine-freedom-of-access-act-402-et-seq'),(42,'2019-02-27 23:19:46',NULL,0,0,'Connecticut Freedom of Information Act § 1-200 et seq.','','',4,'connecticut-freedom-of-information-act-1-200-et-se'),(43,'2019-02-27 23:19:46',NULL,0,0,'Nebraska Public Records Law § 84-712 et seq.','','',4,'nebraska-public-records-law-84-712-et-seq'),(44,'2019-02-27 23:19:46',NULL,0,0,'Arkansas Freedom of Information Act § 25-19-101 et seq.','','',3,'arkansas-freedom-of-information-act-25-19-101-et-s'),(45,'2019-02-27 23:19:46',NULL,0,0,'Colorado Open Records Law § 24-72-201 et seq.','','',3,'colorado-open-records-law-24-72-201-et-seq'),(46,'2019-02-27 23:19:46',NULL,0,0,'Missouri Sunshine Law § 610.023 et seq.','','',3,'missouri-sunshine-law-610023-et-seq'),(47,'2019-02-27 23:19:46',NULL,0,0,'New Mexico Inspection of Public Records Act, 14-2-1 NMSA 1978 et seq.','','',3,'new-mexico-inspection-of-public-records-act-14-2-1'),(48,'2019-02-27 23:19:46',NULL,0,0,'Georgia Open Records Act § 50.18.70 et seq.','','',3,'georgia-open-records-act-501870-et-seq'),(49,'2019-02-27 23:19:46',NULL,0,0,'Idaho Public Records Act § 9-337 et seq.','','',3,'idaho-public-records-act-9-337-et-seq'),(50,'2019-02-27 23:19:46',NULL,0,0,'Kansas Open Records Act § 45-215 et seq.','','',3,'kansas-open-records-act-45-215-et-seq'),(51,'2019-02-27 23:19:46',NULL,0,0,'Kentucky Open Records Act § 61.872 et seq.','','',3,'kentucky-open-records-act-61872-et-seq'),(52,'2019-02-27 23:19:47',NULL,0,0,'Louisiana Public Records Act § 44:1 et seq.','','',3,'louisiana-public-records-act-441-et-seq'),(53,'2019-02-27 23:19:47',NULL,0,0,'Vermont Public Records Law, §315 et seq.','','',2,'vermont-public-records-law-315-et-seq');
/*!40000 ALTER TABLE `government_statute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `government_statute_fees_exemptions`
--

DROP TABLE IF EXISTS `government_statute_fees_exemptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `government_statute_fees_exemptions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `statute_id` int(11) NOT NULL,
  `feeexemptionother_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `statute_id` (`statute_id`,`feeexemptionother_id`),
  KEY `government_statute_fees_exemptions_f0c931f1` (`statute_id`),
  KEY `government_statute_fees_exemptions_b3e61b98` (`feeexemptionother_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `government_statute_fees_exemptions`
--

LOCK TABLES `government_statute_fees_exemptions` WRITE;
/*!40000 ALTER TABLE `government_statute_fees_exemptions` DISABLE KEYS */;
INSERT INTO `government_statute_fees_exemptions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16);
/*!40000 ALTER TABLE `government_statute_fees_exemptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `government_statute_updates`
--

DROP TABLE IF EXISTS `government_statute_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `government_statute_updates` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `statute_id` int(11) NOT NULL,
  `update_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `statute_id` (`statute_id`,`update_id`),
  KEY `government_statute_updates_f0c931f1` (`statute_id`),
  KEY `government_statute_updates_1bf6d33f` (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `government_statute_updates`
--

LOCK TABLES `government_statute_updates` WRITE;
/*!40000 ALTER TABLE `government_statute_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `government_statute_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `government_update`
--

DROP TABLE IF EXISTS `government_update`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `government_update` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `deprecated` datetime DEFAULT NULL,
  `yay_votes` smallint(5) unsigned NOT NULL,
  `nay_votes` smallint(5) unsigned NOT NULL,
  `author_id` int(11) NOT NULL,
  `pubbed` datetime DEFAULT NULL,
  `headline` varchar(1024) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `government_update_cc846901` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `government_update`
--

LOCK TABLES `government_update` WRITE;
/*!40000 ALTER TABLE `government_update` DISABLE KEYS */;
/*!40000 ALTER TABLE `government_update` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardian_groupobjectpermission`
--

DROP TABLE IF EXISTS `guardian_groupobjectpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardian_groupobjectpermission` (
  `permission_id` int(11) NOT NULL,
  `object_pk` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian_groupobjectpermission`
--

LOCK TABLES `guardian_groupobjectpermission` WRITE;
/*!40000 ALTER TABLE `guardian_groupobjectpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `guardian_groupobjectpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardian_userobjectpermission`
--

DROP TABLE IF EXISTS `guardian_userobjectpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardian_userobjectpermission` (
  `permission_id` int(11) NOT NULL,
  `object_pk` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian_userobjectpermission`
--

LOCK TABLES `guardian_userobjectpermission` WRITE;
/*!40000 ALTER TABLE `guardian_userobjectpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `guardian_userobjectpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_attachment`
--

DROP TABLE IF EXISTS `mail_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_attachment`
--

LOCK TABLES `mail_attachment` WRITE;
/*!40000 ALTER TABLE `mail_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_mailbox`
--

DROP TABLE IF EXISTS `mail_mailbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_mailbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `usr_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `provisioned_email` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_mailbox`
--

LOCK TABLES `mail_mailbox` WRITE;
/*!40000 ALTER TABLE `mail_mailbox` DISABLE KEYS */;
INSERT INTO `mail_mailbox` VALUES (1,0,'2019-02-28 20:45:25',NULL);
/*!40000 ALTER TABLE `mail_mailbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_mailbox_messages`
--

DROP TABLE IF EXISTS `mail_mailbox_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_mailbox_messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mailbox_id` int(11) NOT NULL,
  `mailmessage_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_mailbox_messages`
--

LOCK TABLES `mail_mailbox_messages` WRITE;
/*!40000 ALTER TABLE `mail_mailbox_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_mailbox_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_mailmessage`
--

DROP TABLE IF EXISTS `mail_mailmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_mailmessage` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email_from` varchar(256) NOT NULL,
  `reply_to` varchar(75) DEFAULT NULL,
  `body` text,
  `subject` varchar(1024) NOT NULL,
  `request_id` int(11) DEFAULT NULL,
  `dated` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `slug` varchar(50) NOT NULL,
  `direction` varchar(1) NOT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `received_header` text,
  `deprecated` datetime DEFAULT NULL,
  `was_fwded` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_mailmessage`
--

LOCK TABLES `mail_mailmessage` WRITE;
/*!40000 ALTER TABLE `mail_mailmessage` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_mailmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_mailmessage_attachments`
--

DROP TABLE IF EXISTS `mail_mailmessage_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_mailmessage_attachments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mailmessage_id` int(11) NOT NULL,
  `attachment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_mailmessage_attachments`
--

LOCK TABLES `mail_mailmessage_attachments` WRITE;
/*!40000 ALTER TABLE `mail_mailmessage_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_mailmessage_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_mailmessage_bcc`
--

DROP TABLE IF EXISTS `mail_mailmessage_bcc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_mailmessage_bcc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mailmessage_id` int(11) NOT NULL,
  `emailaddress_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_mailmessage_bcc`
--

LOCK TABLES `mail_mailmessage_bcc` WRITE;
/*!40000 ALTER TABLE `mail_mailmessage_bcc` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_mailmessage_bcc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_mailmessage_cc`
--

DROP TABLE IF EXISTS `mail_mailmessage_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_mailmessage_cc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mailmessage_id` int(11) NOT NULL,
  `emailaddress_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_mailmessage_cc`
--

LOCK TABLES `mail_mailmessage_cc` WRITE;
/*!40000 ALTER TABLE `mail_mailmessage_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_mailmessage_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_mailmessage_references`
--

DROP TABLE IF EXISTS `mail_mailmessage_references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_mailmessage_references` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mailmessage_id` int(11) NOT NULL,
  `messageid_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_mailmessage_references`
--

LOCK TABLES `mail_mailmessage_references` WRITE;
/*!40000 ALTER TABLE `mail_mailmessage_references` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_mailmessage_references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_mailmessage_replies`
--

DROP TABLE IF EXISTS `mail_mailmessage_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_mailmessage_replies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `from_mailmessage_id` int(11) NOT NULL,
  `to_mailmessage_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_mailmessage_replies`
--

LOCK TABLES `mail_mailmessage_replies` WRITE;
/*!40000 ALTER TABLE `mail_mailmessage_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_mailmessage_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_mailmessage_to`
--

DROP TABLE IF EXISTS `mail_mailmessage_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_mailmessage_to` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mailmessage_id` int(11) NOT NULL,
  `emailaddress_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_mailmessage_to`
--

LOCK TABLES `mail_mailmessage_to` WRITE;
/*!40000 ALTER TABLE `mail_mailmessage_to` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_mailmessage_to` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mail_messageid`
--

DROP TABLE IF EXISTS `mail_messageid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_messageid` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `idd` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idd` (`idd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_messageid`
--

LOCK TABLES `mail_messageid` WRITE;
/*!40000 ALTER TABLE `mail_messageid` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail_messageid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_registrationprofile`
--

DROP TABLE IF EXISTS `registration_registrationprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registration_registrationprofile` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `activation_key` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_registrationprofile`
--

LOCK TABLES `registration_registrationprofile` WRITE;
/*!40000 ALTER TABLE `registration_registrationprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_registrationprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_event`
--

DROP TABLE IF EXISTS `requests_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests_event` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date DEFAULT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_event`
--

LOCK TABLES `requests_event` WRITE;
/*!40000 ALTER TABLE `requests_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_notification`
--

DROP TABLE IF EXISTS `requests_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests_notification` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `sent` date DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_notification`
--

LOCK TABLES `requests_notification` WRITE;
/*!40000 ALTER TABLE `requests_notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_organization`
--

DROP TABLE IF EXISTS `requests_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests_organization` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` date DEFAULT NULL,
  `postal_code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_organization`
--

LOCK TABLES `requests_organization` WRITE;
/*!40000 ALTER TABLE `requests_organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_recordtype`
--

DROP TABLE IF EXISTS `requests_recordtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests_recordtype` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_recordtype`
--

LOCK TABLES `requests_recordtype` WRITE;
/*!40000 ALTER TABLE `requests_recordtype` DISABLE KEYS */;
INSERT INTO `requests_recordtype` VALUES (1,'Spreadsheet','spreadsheet','Excel or CSV files. Data is organized by rows and columns'),(2,'GIS/Spatial Information','gisspatial-information','Shape files (.shp, geojson, xml) containing position and/or outlines of spatial information.'),(3,'Text documents','text-documents','Searchable, text-based documents. Generally PDF (non-image based), Word Docs or flat text files.'),(4,'Emails','emails','All emails concerning a topic, event or including pertinent parties. Information should be produced         in a searchable text document if possible.');
/*!40000 ALTER TABLE `requests_recordtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_request`
--

DROP TABLE IF EXISTS `requests_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests_request` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `government_id` int(11) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `text` mediumtext NOT NULL,
  `free_edit_body` mediumtext NOT NULL,
  `printed_id` int(11) DEFAULT NULL,
  `private` tinyint(1) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `date_fulfilled` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `scheduled_send_date` datetime DEFAULT NULL,
  `request_start_date` datetime DEFAULT NULL,
  `request_end_date` datetime DEFAULT NULL,
  `keep_private` tinyint(1) NOT NULL,
  `fee_waiver` tinyint(1) NOT NULL,
  `phone_contact` tinyint(1) NOT NULL,
  `prefer_electornic` tinyint(1) NOT NULL,
  `max_cost` int(11) NOT NULL,
  `thread_lookup` varchar(255) NOT NULL,
  `last_contact_date` datetime DEFAULT NULL,
  `first_response_time` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `days_outstanding` int(11) NOT NULL,
  `response_overdue` tinyint(1) NOT NULL,
  `official_stats` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_request`
--

LOCK TABLES `requests_request` WRITE;
/*!40000 ALTER TABLE `requests_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_request_acceptable_responses`
--

DROP TABLE IF EXISTS `requests_request_acceptable_responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests_request_acceptable_responses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `responseformat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_request_acceptable_responses`
--

LOCK TABLES `requests_request_acceptable_responses` WRITE;
/*!40000 ALTER TABLE `requests_request_acceptable_responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests_request_acceptable_responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_request_attachments`
--

DROP TABLE IF EXISTS `requests_request_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests_request_attachments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `attachment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_request_attachments`
--

LOCK TABLES `requests_request_attachments` WRITE;
/*!40000 ALTER TABLE `requests_request_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests_request_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_request_contacts`
--

DROP TABLE IF EXISTS `requests_request_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests_request_contacts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_request_contacts`
--

LOCK TABLES `requests_request_contacts` WRITE;
/*!40000 ALTER TABLE `requests_request_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests_request_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_request_documents`
--

DROP TABLE IF EXISTS `requests_request_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests_request_documents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `document_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_request_documents`
--

LOCK TABLES `requests_request_documents` WRITE;
/*!40000 ALTER TABLE `requests_request_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests_request_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_request_record_types`
--

DROP TABLE IF EXISTS `requests_request_record_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests_request_record_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `recordtype_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_request_record_types`
--

LOCK TABLES `requests_request_record_types` WRITE;
/*!40000 ALTER TABLE `requests_request_record_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests_request_record_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_request_supporters`
--

DROP TABLE IF EXISTS `requests_request_supporters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests_request_supporters` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_request_supporters`
--

LOCK TABLES `requests_request_supporters` WRITE;
/*!40000 ALTER TABLE `requests_request_supporters` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests_request_supporters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_responseformat`
--

DROP TABLE IF EXISTS `requests_responseformat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests_responseformat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `type` varchar(2) NOT NULL,
  `description` text NOT NULL,
  `file_extension` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_responseformat`
--

LOCK TABLES `requests_responseformat` WRITE;
/*!40000 ALTER TABLE `requests_responseformat` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests_responseformat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests_viewablelink`
--

DROP TABLE IF EXISTS `requests_viewablelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests_viewablelink` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `code` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests_viewablelink`
--

LOCK TABLES `requests_viewablelink` WRITE;
/*!40000 ALTER TABLE `requests_viewablelink` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests_viewablelink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'tastypie','0001_initial','2019-02-27 23:19:24'),(2,'tastypie','0002_add_apikey_index','2019-02-27 23:19:24'),(3,'guardian','0001_initial','2019-02-27 23:19:25'),(4,'guardian','0002_auto__add_field_groupobjectpermission_object_pk__add_field_userobjectp','2019-02-27 23:19:25'),(5,'guardian','0003_update_objectpermission_object_pk','2019-02-27 23:19:25'),(6,'guardian','0004_auto__del_field_groupobjectpermission_object_id__del_unique_groupobjec','2019-02-27 23:19:25'),(7,'guardian','0005_auto__chg_field_groupobjectpermission_object_pk__chg_field_userobjectp','2019-02-27 23:19:25'),(8,'requests','0001_initial','2019-02-27 23:19:26'),(9,'agency','0001_initial','2019-02-27 23:19:27'),(10,'agency','0002_auto__add_field_agency_pub_contact_cnt__add_field_agency_editor_contac','2019-02-27 23:19:27'),(11,'mail','0001_initial','2019-02-27 23:19:28');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supporters_supporter`
--

DROP TABLE IF EXISTS `supporters_supporter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supporters_supporter` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kickstarter_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `support_level_id` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `supporters_supporter_d640716f` (`support_level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supporters_supporter`
--

LOCK TABLES `supporters_supporter` WRITE;
/*!40000 ALTER TABLE `supporters_supporter` DISABLE KEYS */;
/*!40000 ALTER TABLE `supporters_supporter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supporters_supportlevel`
--

DROP TABLE IF EXISTS `supporters_supportlevel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supporters_supportlevel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `minimum_amount` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supporters_supportlevel`
--

LOCK TABLES `supporters_supportlevel` WRITE;
/*!40000 ALTER TABLE `supporters_supportlevel` DISABLE KEYS */;
/*!40000 ALTER TABLE `supporters_supportlevel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_tag`
--

DROP TABLE IF EXISTS `taggit_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_tag` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_tag`
--

LOCK TABLES `taggit_tag` WRITE;
/*!40000 ALTER TABLE `taggit_tag` DISABLE KEYS */;
INSERT INTO `taggit_tag` VALUES (1,'tags','tags');
/*!40000 ALTER TABLE `taggit_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggit_taggeditem`
--

DROP TABLE IF EXISTS `taggit_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggit_taggeditem` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `taggit_taggeditem_3747b463` (`tag_id`),
  KEY `taggit_taggeditem_829e37fd` (`object_id`),
  KEY `taggit_taggeditem_e4470c6e` (`content_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggit_taggeditem`
--

LOCK TABLES `taggit_taggeditem` WRITE;
/*!40000 ALTER TABLE `taggit_taggeditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggit_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tastypie_apiaccess`
--

DROP TABLE IF EXISTS `tastypie_apiaccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tastypie_apiaccess` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `request_method` varchar(10) NOT NULL,
  `accessed` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tastypie_apiaccess`
--

LOCK TABLES `tastypie_apiaccess` WRITE;
/*!40000 ALTER TABLE `tastypie_apiaccess` DISABLE KEYS */;
/*!40000 ALTER TABLE `tastypie_apiaccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tastypie_apikey`
--

DROP TABLE IF EXISTS `tastypie_apikey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tastypie_apikey` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(256) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `tastypie_apikey_45544485` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tastypie_apikey`
--

LOCK TABLES `tastypie_apikey` WRITE;
/*!40000 ALTER TABLE `tastypie_apikey` DISABLE KEYS */;
/*!40000 ALTER TABLE `tastypie_apikey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_activationkeyvalue`
--

DROP TABLE IF EXISTS `users_activationkeyvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_activationkeyvalue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_activationkeyvalue`
--

LOCK TABLES `users_activationkeyvalue` WRITE;
/*!40000 ALTER TABLE `users_activationkeyvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_activationkeyvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_interestedparty`
--

DROP TABLE IF EXISTS `users_interestedparty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_interestedparty` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(512) NOT NULL,
  `last_name` varchar(512) NOT NULL,
  `email` varchar(75) NOT NULL,
  `created` datetime NOT NULL,
  `activated_on` datetime DEFAULT NULL,
  `activation_key_id` int(11) DEFAULT NULL,
  `interested_in` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_interestedparty_f49c64aa` (`activation_key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_interestedparty`
--

LOCK TABLES `users_interestedparty` WRITE;
/*!40000 ALTER TABLE `users_interestedparty` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_interestedparty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_interestedparty_followed_request`
--

DROP TABLE IF EXISTS `users_interestedparty_followed_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_interestedparty_followed_request` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `interestedparty_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `interestedparty_id` (`interestedparty_id`,`request_id`),
  KEY `users_interestedparty_followed_request_8d4eef14` (`interestedparty_id`),
  KEY `users_interestedparty_followed_request_792812e8` (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_interestedparty_followed_request`
--

LOCK TABLES `users_interestedparty_followed_request` WRITE;
/*!40000 ALTER TABLE `users_interestedparty_followed_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_interestedparty_followed_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_organization`
--

DROP TABLE IF EXISTS `users_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_organization` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_organization_a951d5d6` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_organization`
--

LOCK TABLES `users_organization` WRITE;
/*!40000 ALTER TABLE `users_organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_permissiongroup`
--

DROP TABLE IF EXISTS `users_permissiongroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_permissiongroup` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_permissiongroup`
--

LOCK TABLES `users_permissiongroup` WRITE;
/*!40000 ALTER TABLE `users_permissiongroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_permissiongroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_permissiongroup_organizations`
--

DROP TABLE IF EXISTS `users_permissiongroup_organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_permissiongroup_organizations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permissiongroup_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissiongroup_id` (`permissiongroup_id`,`organization_id`),
  KEY `users_permissiongroup_organizations_24e3ce55` (`permissiongroup_id`),
  KEY `users_permissiongroup_organizations_97d7cd8d` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_permissiongroup_organizations`
--

LOCK TABLES `users_permissiongroup_organizations` WRITE;
/*!40000 ALTER TABLE `users_permissiongroup_organizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_permissiongroup_organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_permissiongroup_requests`
--

DROP TABLE IF EXISTS `users_permissiongroup_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_permissiongroup_requests` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permissiongroup_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissiongroup_id` (`permissiongroup_id`,`request_id`),
  KEY `users_permissiongroup_requests_24e3ce55` (`permissiongroup_id`),
  KEY `users_permissiongroup_requests_792812e8` (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_permissiongroup_requests`
--

LOCK TABLES `users_permissiongroup_requests` WRITE;
/*!40000 ALTER TABLE `users_permissiongroup_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_permissiongroup_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_permissiongroup_users`
--

DROP TABLE IF EXISTS `users_permissiongroup_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_permissiongroup_users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permissiongroup_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissiongroup_id` (`permissiongroup_id`,`user_id`),
  KEY `users_permissiongroup_users_24e3ce55` (`permissiongroup_id`),
  KEY `users_permissiongroup_users_fbfc09f1` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_permissiongroup_users`
--

LOCK TABLES `users_permissiongroup_users` WRITE;
/*!40000 ALTER TABLE `users_permissiongroup_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_permissiongroup_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_project`
--

DROP TABLE IF EXISTS `users_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_project` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `users_project_a951d5d6` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_project`
--

LOCK TABLES `users_project` WRITE;
/*!40000 ALTER TABLE `users_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile`
--

DROP TABLE IF EXISTS `users_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `mailing_address` varchar(150) NOT NULL,
  `mailing_city` varchar(50) NOT NULL,
  `mailing_state` varchar(20) NOT NULL,
  `mailing_zip` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `private_by_default` tinyint(1) NOT NULL,
  `is_pro` tinyint(1) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `timezone` varchar(150) NOT NULL,
  `requests_per_week` int(11) NOT NULL,
  `default_request_creator_free` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile`
--

LOCK TABLES `users_userprofile` WRITE;
/*!40000 ALTER TABLE `users_userprofile` DISABLE KEYS */;
INSERT INTO `users_userprofile` VALUES (1,0,'P.O. Box 26258','Washington','DC','20001','(202) 854-9062',0,0,1,'America/New_York',30,1);
/*!40000 ALTER TABLE `users_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_organizations`
--

DROP TABLE IF EXISTS `users_userprofile_organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile_organizations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userprofile_id` (`userprofile_id`,`organization_id`),
  KEY `users_userprofile_organizations_1be3128f` (`userprofile_id`),
  KEY `users_userprofile_organizations_97d7cd8d` (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_organizations`
--

LOCK TABLES `users_userprofile_organizations` WRITE;
/*!40000 ALTER TABLE `users_userprofile_organizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_organizations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-28 20:49:37
