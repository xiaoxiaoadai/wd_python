-- MySQL dump 10.13  Distrib 8.0.15, for Linux (x86_64)
--
-- Host: localhost    Database: wdshop
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add 短信验证码',6,'add_verifycode'),(22,'Can change 短信验证码',6,'change_verifycode'),(23,'Can delete 短信验证码',6,'delete_verifycode'),(24,'Can view 短信验证码',6,'view_verifycode'),(25,'Can add 用户',7,'add_userprofile'),(26,'Can change 用户',7,'change_userprofile'),(27,'Can delete 用户',7,'delete_userprofile'),(28,'Can view 用户',7,'view_userprofile'),(29,'Can add 商品',8,'add_goods'),(30,'Can change 商品',8,'change_goods'),(31,'Can delete 商品',8,'delete_goods'),(32,'Can view 商品',8,'view_goods'),(33,'Can add 商品类别',9,'add_goodscategory'),(34,'Can change 商品类别',9,'change_goodscategory'),(35,'Can delete 商品类别',9,'delete_goodscategory'),(36,'Can view 商品类别',9,'view_goodscategory'),(37,'Can add 热搜词',10,'add_hotsearchwords'),(38,'Can change 热搜词',10,'change_hotsearchwords'),(39,'Can delete 热搜词',10,'delete_hotsearchwords'),(40,'Can view 热搜词',10,'view_hotsearchwords'),(41,'Can add 首页商品类别广告',11,'add_indexad'),(42,'Can change 首页商品类别广告',11,'change_indexad'),(43,'Can delete 首页商品类别广告',11,'delete_indexad'),(44,'Can view 首页商品类别广告',11,'view_indexad'),(45,'Can add 商品图片',12,'add_goodsimage'),(46,'Can change 商品图片',12,'change_goodsimage'),(47,'Can delete 商品图片',12,'delete_goodsimage'),(48,'Can view 商品图片',12,'view_goodsimage'),(49,'Can add 品牌',13,'add_goodscategorybrand'),(50,'Can change 品牌',13,'change_goodscategorybrand'),(51,'Can delete 品牌',13,'delete_goodscategorybrand'),(52,'Can view 品牌',13,'view_goodscategorybrand'),(53,'Can add 轮播商品',14,'add_banner'),(54,'Can change 轮播商品',14,'change_banner'),(55,'Can delete 轮播商品',14,'delete_banner'),(56,'Can view 轮播商品',14,'view_banner'),(57,'Can add 订单商品',15,'add_ordergoods'),(58,'Can change 订单商品',15,'change_ordergoods'),(59,'Can delete 订单商品',15,'delete_ordergoods'),(60,'Can view 订单商品',15,'view_ordergoods'),(61,'Can add 订单',16,'add_orderinfo'),(62,'Can change 订单',16,'change_orderinfo'),(63,'Can delete 订单',16,'delete_orderinfo'),(64,'Can view 订单',16,'view_orderinfo'),(65,'Can add 购物车',17,'add_shoppingcart'),(66,'Can change 购物车',17,'change_shoppingcart'),(67,'Can delete 购物车',17,'delete_shoppingcart'),(68,'Can view 购物车',17,'view_shoppingcart'),(69,'Can add 收货地址',18,'add_useraddress'),(70,'Can change 收货地址',18,'change_useraddress'),(71,'Can delete 收货地址',18,'delete_useraddress'),(72,'Can view 收货地址',18,'view_useraddress'),(73,'Can add 用户收藏',19,'add_userfav'),(74,'Can change 用户收藏',19,'change_userfav'),(75,'Can delete 用户收藏',19,'delete_userfav'),(76,'Can view 用户收藏',19,'view_userfav'),(77,'Can add 用户留言',20,'add_userleavingmessage'),(78,'Can change 用户留言',20,'change_userleavingmessage'),(79,'Can delete 用户留言',20,'delete_userleavingmessage'),(80,'Can view 用户留言',20,'view_userleavingmessage'),(81,'Can add Bookmark',21,'add_bookmark'),(82,'Can change Bookmark',21,'change_bookmark'),(83,'Can delete Bookmark',21,'delete_bookmark'),(84,'Can view Bookmark',21,'view_bookmark'),(85,'Can add User Setting',22,'add_usersettings'),(86,'Can change User Setting',22,'change_usersettings'),(87,'Can delete User Setting',22,'delete_usersettings'),(88,'Can view User Setting',22,'view_usersettings'),(89,'Can add User Widget',23,'add_userwidget'),(90,'Can change User Widget',23,'change_userwidget'),(91,'Can delete User Widget',23,'delete_userwidget'),(92,'Can view User Widget',23,'view_userwidget'),(93,'Can add log entry',24,'add_log'),(94,'Can change log entry',24,'change_log'),(95,'Can delete log entry',24,'delete_log'),(96,'Can view log entry',24,'view_log'),(97,'Can add revision',25,'add_revision'),(98,'Can change revision',25,'change_revision'),(99,'Can delete revision',25,'delete_revision'),(100,'Can view revision',25,'view_revision'),(101,'Can add version',26,'add_version'),(102,'Can change version',26,'change_version'),(103,'Can delete version',26,'delete_version'),(104,'Can view version',26,'view_version'),(105,'Can add Token',27,'add_token'),(106,'Can change Token',27,'change_token'),(107,'Can delete Token',27,'delete_token'),(108,'Can view Token',27,'view_token'),(109,'Can add association',28,'add_association'),(110,'Can change association',28,'change_association'),(111,'Can delete association',28,'delete_association'),(112,'Can view association',28,'view_association'),(113,'Can add code',29,'add_code'),(114,'Can change code',29,'change_code'),(115,'Can delete code',29,'delete_code'),(116,'Can view code',29,'view_code'),(117,'Can add nonce',30,'add_nonce'),(118,'Can change nonce',30,'change_nonce'),(119,'Can delete nonce',30,'delete_nonce'),(120,'Can view nonce',30,'view_nonce'),(121,'Can add user social auth',31,'add_usersocialauth'),(122,'Can change user social auth',31,'change_usersocialauth'),(123,'Can delete user social auth',31,'delete_usersocialauth'),(124,'Can view user social auth',31,'view_usersocialauth'),(125,'Can add partial',32,'add_partial'),(126,'Can change partial',32,'change_partial'),(127,'Can delete partial',32,'delete_partial'),(128,'Can view partial',32,'view_partial');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('5e4f22d7a2e3e9ad14f2b2a456e3f985256c4e93','2019-11-06 17:16:57.926458',2),('836181fb60db07b89afb2cef9f5de84cdf73f8c4','2019-11-06 11:59:58.197103',1);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(27,'authtoken','token'),(4,'contenttypes','contenttype'),(14,'goods','banner'),(8,'goods','goods'),(9,'goods','goodscategory'),(13,'goods','goodscategorybrand'),(12,'goods','goodsimage'),(10,'goods','hotsearchwords'),(11,'goods','indexad'),(25,'reversion','revision'),(26,'reversion','version'),(5,'sessions','session'),(28,'social_django','association'),(29,'social_django','code'),(30,'social_django','nonce'),(32,'social_django','partial'),(31,'social_django','usersocialauth'),(15,'trade','ordergoods'),(16,'trade','orderinfo'),(17,'trade','shoppingcart'),(7,'users','userprofile'),(6,'users','verifycode'),(18,'user_operation','useraddress'),(19,'user_operation','userfav'),(20,'user_operation','userleavingmessage'),(21,'xadmin','bookmark'),(24,'xadmin','log'),(22,'xadmin','usersettings'),(23,'xadmin','userwidget');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-10-29 12:45:36.226819'),(2,'contenttypes','0002_remove_content_type_name','2019-10-29 12:45:36.542297'),(3,'auth','0001_initial','2019-10-29 12:45:36.800535'),(4,'auth','0002_alter_permission_name_max_length','2019-10-29 12:45:37.671333'),(5,'auth','0003_alter_user_email_max_length','2019-10-29 12:45:37.687266'),(6,'auth','0004_alter_user_username_opts','2019-10-29 12:45:37.704080'),(7,'auth','0005_alter_user_last_login_null','2019-10-29 12:45:37.742304'),(8,'auth','0006_require_contenttypes_0002','2019-10-29 12:45:37.750275'),(9,'auth','0007_alter_validators_add_error_messages','2019-10-29 12:45:37.766157'),(10,'auth','0008_alter_user_username_max_length','2019-10-29 12:45:37.779940'),(11,'auth','0009_alter_user_last_name_max_length','2019-10-29 12:45:37.792847'),(12,'auth','0010_alter_group_name_max_length','2019-10-29 12:45:37.902266'),(13,'auth','0011_update_proxy_permissions','2019-10-29 12:45:37.947621'),(14,'users','0001_initial','2019-10-29 12:45:38.174047'),(15,'admin','0001_initial','2019-10-29 12:45:38.836590'),(16,'admin','0002_logentry_remove_auto_add','2019-10-29 12:45:39.259184'),(17,'admin','0003_logentry_add_action_flag_choices','2019-10-29 12:45:39.288931'),(18,'goods','0001_initial','2019-10-29 12:45:39.744080'),(19,'sessions','0001_initial','2019-10-29 12:45:40.619383'),(20,'trade','0001_initial','2019-10-29 12:45:40.815645'),(21,'trade','0002_auto_20191029_1240','2019-10-29 12:45:41.304721'),(22,'user_operation','0001_initial','2019-10-29 12:45:41.981010'),(23,'user_operation','0002_auto_20191029_1240','2019-10-29 12:45:42.294607'),(24,'reversion','0001_squashed_0004_auto_20160611_1202','2019-10-31 10:05:39.750229'),(25,'xadmin','0001_initial','2019-10-31 10:05:40.878716'),(26,'xadmin','0002_log','2019-10-31 10:05:41.492189'),(27,'xadmin','0003_auto_20160715_0100','2019-10-31 10:05:41.955975'),(28,'authtoken','0001_initial','2019-11-06 10:59:26.214536'),(29,'authtoken','0002_auto_20160226_1747','2019-11-06 10:59:27.127451'),(30,'default','0001_initial','2019-11-20 10:29:50.672973'),(31,'social_auth','0001_initial','2019-11-20 10:29:50.687958'),(32,'default','0002_add_related_name','2019-11-20 10:29:51.604782'),(33,'social_auth','0002_add_related_name','2019-11-20 10:29:51.613621'),(34,'default','0003_alter_email_max_length','2019-11-20 10:29:52.016316'),(35,'social_auth','0003_alter_email_max_length','2019-11-20 10:29:52.024155'),(36,'default','0004_auto_20160423_0400','2019-11-20 10:29:52.092610'),(37,'social_auth','0004_auto_20160423_0400','2019-11-20 10:29:52.099589'),(38,'social_auth','0005_auto_20160727_2333','2019-11-20 10:29:52.158119'),(39,'social_django','0006_partial','2019-11-20 10:29:52.217672'),(40,'social_django','0007_code_timestamp','2019-11-20 10:29:52.458972'),(41,'social_django','0008_partial_timestamp','2019-11-20 10:29:52.911337'),(42,'social_django','0004_auto_20160423_0400','2019-11-20 10:29:52.986809'),(43,'social_django','0005_auto_20160727_2333','2019-11-20 10:29:52.993136'),(44,'social_django','0002_add_related_name','2019-11-20 10:29:53.003464'),(45,'social_django','0001_initial','2019-11-20 10:29:53.011745'),(46,'social_django','0003_alter_email_max_length','2019-11-20 10:29:53.021476');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2pocgnot0jobqq03s0u0mdl81s7jkmq2','YTQzODg1YjUxZGY4YWUyZmQ3MTNiOGYyMzlhZDY0Y2MwZjBiOGU1Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjlkNzg2NWIyNzUxZDQxZDIwNTkxNGEwNWQyY2NiMzI1OTJlN2E2M2QiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsInVzZXJwcm9maWxlIl0sIiJdfQ==','2019-11-28 22:16:57.624771'),('c3a9mrv9gjh9q6xe01255cc9l7n15b7w','YTQzODg1YjUxZGY4YWUyZmQ3MTNiOGYyMzlhZDY0Y2MwZjBiOGU1Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjlkNzg2NWIyNzUxZDQxZDIwNTkxNGEwNWQyY2NiMzI1OTJlN2E2M2QiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsInVzZXJwcm9maWxlIl0sIiJdfQ==','2019-11-23 11:19:59.476759'),('d3younaodptdg10wne8fecgx7347scsj','YTQzODg1YjUxZGY4YWUyZmQ3MTNiOGYyMzlhZDY0Y2MwZjBiOGU1Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjlkNzg2NWIyNzUxZDQxZDIwNTkxNGEwNWQyY2NiMzI1OTJlN2E2M2QiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsInVzZXJwcm9maWxlIl0sIiJdfQ==','2019-11-26 12:02:52.416560'),('jqb8kfv2u277q6dne7ke6xsnh3zfl611','MDYxYjMxMTcwMGZlYzM0ZjA2Mjc5M2QyNTAyMzE5ODQ2Y2I0ZDAxNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjlkNzg2NWIyNzUxZDQxZDIwNTkxNGEwNWQyY2NiMzI1OTJlN2E2M2QiLCJMSVNUX1FVRVJZIjpbWyJnb29kcyIsImdvb2RzIl0sIl9xXz0lRTUlODYlQjclRTUlODYlQkIlRTclOUMlOUYlRTclQTklQkElRTklQkIlODQlRTclODklOUIiXX0=','2019-11-25 11:01:12.005077'),('lm7610x9ipywqi4vkqh6pdqcputb4zgc','YTQzODg1YjUxZGY4YWUyZmQ3MTNiOGYyMzlhZDY0Y2MwZjBiOGU1Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjlkNzg2NWIyNzUxZDQxZDIwNTkxNGEwNWQyY2NiMzI1OTJlN2E2M2QiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsInVzZXJwcm9maWxlIl0sIiJdfQ==','2019-11-26 21:38:57.849442'),('no1b243xkuecfe9b8ouyysqg8a0o0570','YjcyMWU1YmVkNTExOGMwYTAxY2VjZDM1YzhiZTUyZGFjMDllMzNlODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjlkNzg2NWIyNzUxZDQxZDIwNTkxNGEwNWQyY2NiMzI1OTJlN2E2M2QifQ==','2019-11-27 16:44:21.285346'),('noj7ybezaht9fzh2acew37k20ey4hnfy','NzJjYmMwNWM1M2MxMGJmNjU4MzhmMTM1NWExMzI2ODg0YTllNTUzMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjlkNzg2NWIyNzUxZDQxZDIwNTkxNGEwNWQyY2NiMzI1OTJlN2E2M2QiLCJMSVNUX1FVRVJZIjpbWyJ1c2VycyIsInZlcmlmeWNvZGUiXSwiIl19','2019-11-26 16:34:24.451472'),('shx293pfoqvabrpdbloccm2irtj9wmew','MmNiNDgwMmI2YmNlZTNmYjIwNGY1ZjNlYTJhMjcwZDQ5Mjg1ZTI2Zjp7IndlaWJvX3N0YXRlIjoiVERydmhKZGtZaGtnU0FmMjJhNEpGVHRQRkxXalNYRlciLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6InNvY2lhbF9jb3JlLmJhY2tlbmRzLndlaWJvLldlaWJvT0F1dGgyIiwiX2F1dGhfdXNlcl9oYXNoIjoiOWQ3ODY1YjI3NTFkNDFkMjA1OTE0YTA1ZDJjY2IzMjU5MmU3YTYzZCIsInNvY2lhbF9hdXRoX2xhc3RfbG9naW5fYmFja2VuZCI6IndlaWJvIn0=','2019-12-04 18:33:50.128713'),('yg9w76vcjs5407352068jdybgxf2621r','YWZjODkxODRiYzIwOTg5YmU1ODBkOWUzYjZhMWMzNWU0NzhkOTY3Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjlkNzg2NWIyNzUxZDQxZDIwNTkxNGEwNWQyY2NiMzI1OTJlN2E2M2QiLCJMSVNUX1FVRVJZIjpbWyJnb29kcyIsImluZGV4YWQiXSwiIl0sIndlaWJvX3N0YXRlIjoiRldVMzVjbGFFaGFTVzJIME1SS2ZTcHpLSmdxYjFBNFQifQ==','2019-12-04 11:10:29.253518');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_banner`
--

DROP TABLE IF EXISTS `goods_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_banner_goods_id_99e23129_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `goods_banner_goods_id_99e23129_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_banner`
--

LOCK TABLES `goods_banner` WRITE;
/*!40000 ALTER TABLE `goods_banner` DISABLE KEYS */;
INSERT INTO `goods_banner` VALUES (1,'banner/banner1.jpg',0,'2019-11-16 17:35:00.000000',1),(2,'banner/banner2.jpg',1,'2019-11-16 17:50:00.000000',2),(3,'banner/banner3.jpg',2,'2019-11-16 17:51:00.000000',3);
/*!40000 ALTER TABLE `goods_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_goods`
--

DROP TABLE IF EXISTS `goods_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_sn` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `click_num` int(11) NOT NULL,
  `sold_num` int(11) NOT NULL,
  `fav_num` int(11) NOT NULL,
  `goods_num` int(11) NOT NULL,
  `market_price` double NOT NULL,
  `shop_price` double NOT NULL,
  `goods_brief` longtext NOT NULL,
  `goods_desc` longtext NOT NULL,
  `ship_free` tinyint(1) NOT NULL,
  `goods_front_image` varchar(100) DEFAULT NULL,
  `is_new` tinyint(1) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id` (`category_id`),
  CONSTRAINT `goods_goods_category_id_da3507dd_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_goods`
--

LOCK TABLES `goods_goods` WRITE;
/*!40000 ALTER TABLE `goods_goods` DISABLE KEYS */;
INSERT INTO `goods_goods` VALUES (1,'','新鲜水果甜蜜香脆单果约800克',5,0,1,99,232,156,'食用百香果可以增加胃部饱腹感，减少余热量的摄入，还可以吸附胆固醇和胆汁之类有机分子，抑制人体对脂肪的吸收。因此，长期食用有利于改善人体营养吸收结构，降低体内脂肪，塑造健康优美体态。','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/1_P_1449024889889.jpg',0,0,'2019-10-30 19:51:40.532751',20),(2,'11111','田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛',0,100,0,0,106,88,'前腿+后腿+羊排共8斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/2_P_1448945810202.jpg',0,0,'2019-10-30 19:51:00.000000',7),(3,'','酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐',0,0,0,0,286,238,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/7_P_1448945104883.jpg',0,0,'2019-10-30 19:51:40.593127',15),(4,'','日本蒜蓉粉丝扇贝270克6只装',0,0,0,0,156,108,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/47_P_1448946213263.jpg',0,0,'2019-10-30 19:51:40.604803',20),(5,'','内蒙新鲜牛肉1斤清真生鲜牛肉火锅食材',0,0,0,0,106,88,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/10_P_1448944572085.jpg',0,0,'2019-10-30 19:51:40.614310',7),(6,'','乌拉圭进口牛肉卷特级肥牛卷',0,0,0,0,90,75,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/4_P_1448945381985.jpg',0,0,'2019-10-30 19:51:40.629536',21),(7,'','五星眼肉牛排套餐8片装原味原切生鲜牛肉',0,0,0,0,150,125,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/8_P_1448945032810.jpg',0,0,'2019-10-30 19:51:40.641927',23),(8,'','澳洲进口120天谷饲牛仔骨4份原味生鲜',0,0,0,0,31,26,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/11_P_1448944388277.jpg',0,0,'2019-10-30 19:51:40.652970',7),(9,'','潮香村澳洲进口牛排家庭团购套餐20片',0,0,0,0,239,199,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/6_P_1448945167279.jpg',0,0,'2019-10-30 19:51:40.666453',22),(10,'','爱食派内蒙古呼伦贝尔冷冻生鲜牛腱子肉1000g',0,0,0,0,202,168,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/9_P_1448944791617.jpg',0,0,'2019-10-30 19:51:40.681121',20),(11,'','澳洲进口牛尾巴300g新鲜肥牛肉',0,0,0,0,306,255,'新鲜羊羔肉整只共15斤，原生态大山放牧羊羔，曾经的皇室贡品，央视推荐，2005年北京招待全球财金首脑。五层专用包装箱+真空包装+冰袋+保鲜箱+顺丰冷链发货，路途保质期8天','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/3_P_1448945490837.jpg',0,0,'2019-10-30 19:51:40.700858',2),(12,'','新疆巴尔鲁克生鲜牛排眼肉牛扒1200g',0,0,0,0,126,88,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/48_P_1448943988970.jpg',0,0,'2019-10-30 19:51:40.711340',7),(13,'','澳洲进口安格斯牛切片上脑牛排1000g',0,0,0,0,144,120,'澳大利亚是国际公认的没有疯牛病和口蹄疫的国家。为了保持澳大利亚产品的高标准，澳大利亚牛肉业和各级政府共同努力简历了严格的标准和体系，以保证生产的整体化和产品的可追溯性','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/5_P_1448945270390.jpg',0,0,'2019-10-30 19:51:40.725507',12),(14,'','帐篷出租',0,0,0,0,120,100,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'images/201705/goods_img/53_P_1495068879687.jpg',0,0,'2019-10-30 19:51:40.739048',21),(15,'','52度茅台集团国隆双喜酒500mlx6',0,0,0,0,23,19,'贵州茅台酒厂（集团）保健酒业有限公司生产，是以“龙”字打头的酒水。中国龙文化上下8000年，源远而流长，龙的形象是一种符号、一种意绪、一种血肉相联的情感。','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/16_P_1448947194687.jpg',0,0,'2019-10-30 19:51:40.748569',37),(16,'','52度水井坊臻酿八號500ml',0,0,0,0,43,36,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/14_P_1448947354031.jpg',0,0,'2019-10-30 19:51:40.757675',36),(17,'','53度茅台仁酒500ml',0,0,0,0,190,158,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/12_P_1448947547989.jpg',0,0,'2019-10-30 19:51:40.825808',32),(18,'','双响炮洋酒JimBeamwhiskey美国白占边',0,0,0,0,38,28,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/46_P_1448946598711.jpg',0,0,'2019-10-30 19:51:40.833873',29),(19,'','西夫拉姆进口洋酒小酒版',0,0,0,0,55,46,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/21_P_1448946793276.jpg',0,0,'2019-10-30 19:51:40.844872',36),(20,'','茅台53度飞天茅台500ml',0,0,0,0,22,18,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/15_P_1448947257324.jpg',0,0,'2019-10-30 19:51:40.853602',30),(21,'','52度兰陵·紫气东来1600mL山东名酒',0,0,0,0,42,35,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/13_P_1448947460386.jpg',0,0,'2019-10-30 19:51:40.866275',29),(22,'','JohnnieWalker尊尼获加黑牌威士忌',0,0,0,0,24,20,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/50_P_1448946543091.jpg',0,0,'2019-10-30 19:51:40.878437',36),(23,'','人头马CLUB特优香槟干邑350ml',0,0,0,0,31,26,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/51_P_1448946466595.jpg',0,0,'2019-10-30 19:51:40.888931',30),(24,'','张裕干红葡萄酒750ml*6支',0,0,0,0,54,45,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/17_P_1448947102246.jpg',0,0,'2019-10-30 19:51:40.899588',31),(25,'','原瓶原装进口洋酒烈酒法国云鹿XO白兰地',0,0,0,0,46,38,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/20_P_1448946850602.jpg',0,0,'2019-10-30 19:51:40.906566',29),(26,'','法国原装进口圣贝克干红葡萄酒750ml',0,0,0,0,82,68,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/19_P_1448946951581.jpg',0,0,'2019-10-30 19:51:40.915360',25),(27,'','法国百利威干红葡萄酒AOP级6支装',0,0,0,0,67,56,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/18_P_1448947011435.jpg',0,0,'2019-10-30 19:51:40.926299',25),(28,'','芝华士12年苏格兰威士忌700ml',0,0,0,0,71,59,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/22_P_1448946729629.jpg',0,0,'2019-10-30 19:51:40.932865',30),(29,'','深蓝伏特加巴维兰利口酒送预调酒',0,0,0,0,31,18,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/45_P_1448946661303.jpg',0,0,'2019-10-30 19:51:40.938806',36),(30,'','赣南脐橙特级果10斤装',0,0,0,0,43,36,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/32_P_1448948525620.jpg',0,0,'2019-10-30 19:51:40.947174',62),(31,'','泰国菠萝蜜16-18斤1个装',0,0,0,0,11,9,'【懒人吃法】菠萝蜜果肉，冰袋保鲜，收货就吃，冰爽Q脆甜，2斤装，全国顺丰空运包邮，发出后48小时内可达，一线城市基本隔天可达','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/30_P_1448948663450.jpg',0,0,'2019-10-30 19:51:40.955016',66),(32,'','四川双流草莓新鲜水果礼盒2盒',0,0,0,0,22,18,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/31_P_1448948598947.jpg',0,0,'2019-10-30 19:51:40.970980',70),(33,'','新鲜头茬非洲冰草冰菜',0,0,0,0,67,56,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/35_P_1448948333610.jpg',0,0,'2019-10-30 19:51:40.980828',58),(34,'','仿真蔬菜水果果蔬菜模型',0,0,0,0,6,5,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/36_P_1448948234405.jpg',0,0,'2019-10-30 19:51:40.994058',58),(35,'','现摘芭乐番石榴台湾珍珠芭乐',0,0,0,0,28,23,'海南产精品释迦果,\n        释迦是水果中的贵族,\n        产量少,\n        味道很甜,\n        奶香十足,\n        非常可口,\n        果裹果园顺丰空运,\n        保证新鲜.果子个大,\n        一斤1-2个左右,\n        大个头的果子更尽兴!\n        ','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/33_P_1448948479966.jpg',0,0,'2019-10-30 19:51:41.006869',62),(36,'','潍坊萝卜5斤/箱礼盒',0,0,0,0,46,38,'脐橙规格是65-90MM左右（标准果果径平均70MM左右，精品果果径平均80MM左右），一斤大概有2-4个左右，脐橙产自江西省赣州市信丰县安西镇，全过程都是采用农家有机肥种植，生态天然','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/34_P_1448948399009.jpg',0,0,'2019-10-30 19:51:41.023878',70),(37,'','休闲零食膨化食品焦糖/奶油/椒麻味',0,0,0,0,154,99,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/43_P_1448948762645.jpg',0,0,'2019-10-30 19:51:41.031253',74),(38,'','蒙牛未来星儿童成长牛奶骨力型190ml*15盒',0,0,0,0,84,70,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/38_P_1448949220255.jpg',0,0,'2019-10-30 19:51:41.039294',105),(39,'','蒙牛特仑苏有机奶250ml×12盒',0,0,0,0,70,32,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/44_P_1448948850187.jpg',0,0,'2019-10-30 19:51:41.047846',103),(40,'','1元支付测试商品',0,0,0,0,1,1,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'images/201511/goods_img/49_P_1448162819889.jpg',0,0,'2019-10-30 19:51:41.054721',102),(41,'','德运全脂新鲜纯牛奶1L*10盒装整箱',0,0,0,0,70,58,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/40_P_1448949038702.jpg',0,0,'2019-10-30 19:51:41.061723',103),(42,'','木糖醇红枣早餐奶即食豆奶粉538g',0,0,0,0,38,32,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/39_P_1448949115481.jpg',0,0,'2019-10-30 19:51:41.070196',106),(43,'','高钙液体奶200ml*24盒',0,0,0,0,26,22,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/41_P_1448948980358.jpg',0,0,'2019-10-30 19:51:41.080257',107),(44,'','新西兰进口全脂奶粉900g',0,0,0,0,720,600,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/37_P_1448949284365.jpg',0,0,'2019-10-30 19:51:41.088618',104),(45,'','伊利官方直营全脂营养舒化奶250ml*12盒*2提',0,0,0,0,43,36,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/42_P_1448948895193.jpg',0,0,'2019-10-30 19:51:41.097841',103),(46,'','维纳斯橄榄菜籽油5L/桶',0,0,0,0,187,156,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/27_P_1448947771805.jpg',0,0,'2019-10-30 19:51:41.105135',51),(47,'','糙米450gx3包粮油米面',0,0,0,0,18,15,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/23_P_1448948070348.jpg',0,0,'2019-10-30 19:51:41.114769',41),(48,'','精炼一级大豆油5L色拉油粮油食用油',0,0,0,0,54,45,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/26_P_1448947825754.jpg',0,0,'2019-10-30 19:51:41.120976',56),(49,'','橄榄玉米油5L*2桶',0,0,0,0,31,26,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/28_P_1448947699948.jpg',0,0,'2019-10-30 19:51:41.129204',54),(50,'','山西黑米农家黑米4斤',0,0,0,0,11,9,'','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/24_P_1448948023823.jpg',0,0,'2019-10-30 19:51:41.140624',55),(51,'sssss','稻园牌稻米油粮油米糠油绿色植物油',0,0,0,0,14,12,'sssss','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/25_P_1448947875346.jpg',1,0,'2019-10-30 19:51:00.000000',47),(52,'ssss','融氏纯玉米胚芽油5l桶',0,0,0,0,14,12,'aaa','<p><img src=\"/media/goods/images/2_20170719161405_249.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161414_628.jpg\" title=\"\" alt=\"2.jpg\"/></p><p><img src=\"/media/goods/images/2_20170719161435_381.jpg\" title=\"\" alt=\"2.jpg\"/></p>',1,'goods/images/29_P_1448947631994.jpg',1,1,'2019-10-30 19:51:00.000000',41);
/*!40000 ALTER TABLE `goods_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_goodsbrand`
--

DROP TABLE IF EXISTS `goods_goodsbrand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods_goodsbrand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `desc` longtext NOT NULL,
  `image` varchar(200) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id` (`category_id`),
  CONSTRAINT `goods_goodsbrand_category_id_6fc84a73_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_goodsbrand`
--

LOCK TABLES `goods_goodsbrand` WRITE;
/*!40000 ALTER TABLE `goods_goodsbrand` DISABLE KEYS */;
INSERT INTO `goods_goodsbrand` VALUES (1,'luke1','luke','brands/lyfs-1_9TcZLa3.jpg','2019-11-18 15:28:00.000000',1),(2,'luke','luke2','brands/lyfs-2_hx4gBcJ.jpg','2019-11-18 15:53:00.000000',1),(3,'luke2','luke2','brands/scsg-2_G6LV34f_yJoJaVA.jpg','2019-11-18 15:55:00.000000',1),(4,'test','test','brands/sxsp-2_ILLr7oQ.jpg','2019-11-18 16:04:00.000000',24),(5,'test','test1','brands/sxsp-3_SKTIOWZ.jpg','2019-11-18 16:04:00.000000',24),(6,'test3','test3','brands/sxsp-1_KDntI6h_nPl7twE.jpg','2019-11-18 16:04:00.000000',24);
/*!40000 ALTER TABLE `goods_goodsbrand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_goodscategory`
--

DROP TABLE IF EXISTS `goods_goodscategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods_goodscategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `code` varchar(30) NOT NULL,
  `desc` longtext NOT NULL,
  `category_type` int(11) NOT NULL,
  `is_tab` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo` (`parent_category_id`),
  CONSTRAINT `goods_goodscategory_parent_category_id_ccec2509_fk_goods_goo` FOREIGN KEY (`parent_category_id`) REFERENCES `goods_goodscategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_goodscategory`
--

LOCK TABLES `goods_goodscategory` WRITE;
/*!40000 ALTER TABLE `goods_goodscategory` DISABLE KEYS */;
INSERT INTO `goods_goodscategory` VALUES (1,'生鲜食品','sxsp','生鲜食品',1,1,'2019-10-30 16:12:00.000000',NULL),(2,'精品肉类','jprl','',2,0,'2019-10-30 16:12:49.759651',1),(3,'羊肉','yr','',3,0,'2019-10-30 16:12:49.767870',2),(4,'禽类','ql','',3,0,'2019-10-30 16:12:49.774607',2),(5,'猪肉','zr','',3,0,'2019-10-30 16:12:49.779233',2),(6,'牛肉','nr','',3,0,'2019-10-30 16:12:49.783167',2),(7,'海鲜水产','hxsc','',2,0,'2019-10-30 16:12:49.788716',1),(8,'参鲍','cb','',3,0,'2019-10-30 16:12:49.794747',7),(9,'鱼','yu','',3,0,'2019-10-30 16:12:49.798445',7),(10,'虾','xia','',3,0,'2019-10-30 16:12:49.802284',7),(11,'蟹/贝','xb','',3,0,'2019-10-30 16:12:49.806247',7),(12,'蛋制品','dzp','',2,0,'2019-10-30 16:12:49.810088',1),(13,'松花蛋/咸鸭蛋','xhd_xyd','',3,0,'2019-10-30 16:12:49.815884',12),(14,'鸡蛋','jd','',3,0,'2019-10-30 16:12:49.823591',12),(15,'叶菜类','ycl','',2,0,'2019-10-30 16:12:49.826951',1),(16,'生菜','sc','',3,0,'2019-10-30 16:12:49.830515',15),(17,'菠菜','bc','',3,0,'2019-10-30 16:12:49.835063',15),(18,'圆椒','yj','',3,0,'2019-10-30 16:12:49.838561',15),(19,'西兰花','xlh','',3,0,'2019-10-30 16:12:49.844334',15),(20,'根茎类','gjl','',2,0,'2019-10-30 16:12:49.847261',1),(21,'茄果类','qgl','',2,0,'2019-10-30 16:12:49.852283',1),(22,'菌菇类','jgl','',2,0,'2019-10-30 16:12:49.858558',1),(23,'进口生鲜','jksx','',2,0,'2019-10-30 16:12:49.861839',1),(24,'酒水饮料','jsyl','酒水饮料',1,1,'2019-10-30 16:12:00.000000',NULL),(25,'白酒','bk','',2,0,'2019-10-30 16:12:49.872621',24),(26,'五粮液','wly','',3,0,'2019-10-30 16:12:49.876328',25),(27,'泸州老窖','lzlj','',3,0,'2019-10-30 16:12:49.879729',25),(28,'茅台','mt','',3,0,'2019-10-30 16:12:49.887169',25),(29,'葡萄酒','ptj','',2,0,'2019-10-30 16:12:49.890632',24),(30,'洋酒','yj','',2,0,'2019-10-30 16:12:49.894455',24),(31,'啤酒','pj','',2,0,'2019-10-30 16:12:49.897183',24),(32,'其他酒品','qtjp','',2,0,'2019-10-30 16:12:49.906663',24),(33,'其他品牌','qtpp','',3,0,'2019-10-30 16:12:49.911064',32),(34,'黄酒','hj','',3,0,'2019-10-30 16:12:49.918074',32),(35,'养生酒','ysj','',3,0,'2019-10-30 16:12:49.921722',32),(36,'饮料/水','yls','',2,0,'2019-10-30 16:12:49.925363',24),(37,'红酒','hj','',2,0,'2019-10-30 16:12:49.928495',24),(38,'白兰地','bld','',3,0,'2019-10-30 16:12:49.931064',37),(39,'威士忌','wsj','',3,0,'2019-10-30 16:12:49.939497',37),(40,'粮油副食','粮油副食','粮油副食',1,1,'2019-10-30 16:12:00.000000',NULL),(41,'食用油','食用油','',2,0,'2019-10-30 16:12:49.947066',40),(42,'其他食用油','其他食用油','',3,0,'2019-10-30 16:12:49.954310',41),(43,'菜仔油','菜仔油','',3,0,'2019-10-30 16:12:49.957499',41),(44,'花生油','花生油','',3,0,'2019-10-30 16:12:49.960560',41),(45,'橄榄油','橄榄油','',3,0,'2019-10-30 16:12:49.962747',41),(46,'礼盒','礼盒','',3,0,'2019-10-30 16:12:49.969118',41),(47,'米面杂粮','米面杂粮','',2,0,'2019-10-30 16:12:49.972829',40),(48,'面粉/面条','面粉/面条','',3,0,'2019-10-30 16:12:49.976191',47),(49,'大米','大米','',3,0,'2019-10-30 16:12:49.979258',47),(50,'意大利面','意大利面','',3,0,'2019-10-30 16:12:49.984582',47),(51,'厨房调料','厨房调料','',2,0,'2019-10-30 16:12:49.988413',40),(52,'调味油/汁','调味油/汁','',3,0,'2019-10-30 16:12:49.993747',51),(53,'酱油/醋','酱油/醋','',3,0,'2019-10-30 16:12:49.996406',51),(54,'南北干货','南北干货','',2,0,'2019-10-30 16:12:50.000402',40),(55,'方便速食','方便速食','',2,0,'2019-10-30 16:12:50.004658',40),(56,'调味品','调味品','',2,0,'2019-10-30 16:12:50.008000',40),(57,'蔬菜水果','蔬菜水果','蔬菜水果',1,1,'2019-10-30 16:12:00.000000',NULL),(58,'有机蔬菜','有机蔬菜','',2,0,'2019-10-30 16:12:50.017347',57),(59,'西红柿','西红柿','',3,0,'2019-10-30 16:12:50.022249',58),(60,'韭菜','韭菜','',3,0,'2019-10-30 16:12:50.029787',58),(61,'青菜','青菜','',3,0,'2019-10-30 16:12:50.034442',58),(62,'精选蔬菜','精选蔬菜','',2,0,'2019-10-30 16:12:50.038360',57),(63,'甘蓝','甘蓝','',3,0,'2019-10-30 16:12:50.045344',62),(64,'胡萝卜','胡萝卜','',3,0,'2019-10-30 16:12:50.050023',62),(65,'黄瓜','黄瓜','',3,0,'2019-10-30 16:12:50.053916',62),(66,'进口水果','进口水果','',2,0,'2019-10-30 16:12:50.057361',57),(67,'火龙果','火龙果','',3,0,'2019-10-30 16:12:50.060049',66),(68,'菠萝蜜','菠萝蜜','',3,0,'2019-10-30 16:12:50.065591',66),(69,'奇异果','奇异果','',3,0,'2019-10-30 16:12:50.069578',66),(70,'国产水果','国产水果','',2,0,'2019-10-30 16:12:50.076645',57),(71,'水果礼盒','水果礼盒','',3,0,'2019-10-30 16:12:50.089071',70),(72,'苹果','苹果','',3,0,'2019-10-30 16:12:50.092052',70),(73,'雪梨','雪梨','',3,0,'2019-10-30 16:12:50.096083',70),(74,'休闲食品','休闲食品','休闲食品',1,1,'2019-10-30 16:12:00.000000',NULL),(75,'休闲零食','休闲零食','',2,0,'2019-10-30 16:12:50.107192',74),(76,'果冻','果冻','',3,0,'2019-10-30 16:12:50.110680',75),(77,'枣类','枣类','',3,0,'2019-10-30 16:12:50.113178',75),(78,'蜜饯','蜜饯','',3,0,'2019-10-30 16:12:50.117335',75),(79,'肉类零食','肉类零食','',3,0,'2019-10-30 16:12:50.121651',75),(80,'坚果炒货','坚果炒货','',3,0,'2019-10-30 16:12:50.124958',75),(81,'糖果','糖果','',2,0,'2019-10-30 16:12:50.129311',74),(82,'创意喜糖','创意喜糖','',3,0,'2019-10-30 16:12:50.133004',81),(83,'口香糖','口香糖','',3,0,'2019-10-30 16:12:50.139100',81),(84,'软糖','软糖','',3,0,'2019-10-30 16:12:50.142976',81),(85,'棒棒糖','棒棒糖','',3,0,'2019-10-30 16:12:50.146483',81),(86,'巧克力','巧克力','',2,0,'2019-10-30 16:12:50.154003',74),(87,'夹心巧克力','夹心巧克力','',3,0,'2019-10-30 16:12:50.158039',86),(88,'白巧克力','白巧克力','',3,0,'2019-10-30 16:12:50.161961',86),(89,'松露巧克力','松露巧克力','',3,0,'2019-10-30 16:12:50.167360',86),(90,'黑巧克力','黑巧克力','',3,0,'2019-10-30 16:12:50.171863',86),(91,'肉干肉脯/豆干','肉干肉脯/豆干','',2,0,'2019-10-30 16:12:50.175206',74),(92,'牛肉干','牛肉干','',3,0,'2019-10-30 16:12:50.178422',91),(93,'猪肉脯','猪肉脯','',3,0,'2019-10-30 16:12:50.180487',91),(94,'牛肉粒','牛肉粒','',3,0,'2019-10-30 16:12:50.186532',91),(95,'猪肉干','猪肉干','',3,0,'2019-10-30 16:12:50.200737',91),(96,'鱿鱼丝/鱼干','鱿鱼丝/鱼干','',2,0,'2019-10-30 16:12:50.207505',74),(97,'鱿鱼足','鱿鱼足','',3,0,'2019-10-30 16:12:50.212898',96),(98,'鱿鱼丝','鱿鱼丝','',3,0,'2019-10-30 16:12:50.216874',96),(99,'墨鱼/乌贼','墨鱼/乌贼','',3,0,'2019-10-30 16:12:50.221343',96),(100,'鱿鱼仔','鱿鱼仔','',3,0,'2019-10-30 16:12:50.225135',96),(101,'鱿鱼片','鱿鱼片','',3,0,'2019-10-30 16:12:50.229451',96),(102,'奶类食品','奶类食品','奶类食品',1,1,'2019-10-30 16:12:00.000000',NULL),(103,'进口奶品','进口奶品','',2,0,'2019-10-30 16:12:50.237532',102),(104,'国产奶品','国产奶品','',2,0,'2019-10-30 16:12:50.240855',102),(105,'奶粉','奶粉','',2,0,'2019-10-30 16:12:50.243614',102),(106,'有机奶','有机奶','',2,0,'2019-10-30 16:12:50.246369',102),(107,'原料奶','原料奶','',2,0,'2019-10-30 16:12:50.253580',102),(108,'天然干货','天然干货','',1,0,'2019-10-30 16:12:50.257030',NULL),(109,'菌菇类','菌菇类','',2,0,'2019-10-30 16:12:50.261757',108),(110,'腌干海产','腌干海产','',2,0,'2019-10-30 16:12:50.267701',108),(111,'汤料','汤料','',2,0,'2019-10-30 16:12:50.272298',108),(112,'豆类','豆类','',2,0,'2019-10-30 16:12:50.276659',108),(113,'干菜/菜干','干菜/菜干','',2,0,'2019-10-30 16:12:50.278981',108),(114,'干果/果干','干果/果干','',2,0,'2019-10-30 16:12:50.281676',108),(115,'豆制品','豆制品','',2,0,'2019-10-30 16:12:50.288560',108),(116,'腊味','腊味','',2,0,'2019-10-30 16:12:50.293446',108),(117,'精选茗茶','精选茗茶','',1,0,'2019-10-30 16:12:50.296467',NULL),(118,'白茶','白茶','',2,0,'2019-10-30 16:12:50.300113',117),(119,'红茶','红茶','',2,0,'2019-10-30 16:12:50.304202',117),(120,'绿茶','绿茶','',2,0,'2019-10-30 16:12:50.307215',117);
/*!40000 ALTER TABLE `goods_goodscategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_goodsimage`
--

DROP TABLE IF EXISTS `goods_goodsimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods_goodsimage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `goods_goodsimage_goods_id_08cb23b1_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_goodsimage`
--

LOCK TABLES `goods_goodsimage` WRITE;
/*!40000 ALTER TABLE `goods_goodsimage` DISABLE KEYS */;
INSERT INTO `goods_goodsimage` VALUES (1,'goods/images/1_P_1449024889889.jpg','2019-10-30 19:51:40.562125',1),(2,'goods/images/1_P_1449024889264.jpg','2019-10-30 19:51:40.566736',1),(3,'goods/images/1_P_1449024889726.jpg','2019-10-30 19:51:40.572088',1),(4,'goods/images/1_P_1449024889018.jpg','2019-10-30 19:51:40.577737',1),(5,'goods/images/1_P_1449024889287.jpg','2019-10-30 19:51:40.580573',1),(6,'goods/images/2_P_1448945810202.jpg','2019-10-30 19:51:40.588046',2),(7,'牛肉.jpg','2019-10-30 19:51:40.590991',2),(8,'goods/images/7_P_1448945104883.jpg','2019-10-30 19:51:40.599789',3),(9,'goods/images/7_P_1448945104734.jpg','2019-10-30 19:51:40.602258',3),(10,'goods/images/47_P_1448946213263.jpg','2019-10-30 19:51:40.610418',4),(11,'goods/images/47_P_1448946213157.jpg','2019-10-30 19:51:40.612251',4),(12,'goods/images/10_P_1448944572085.jpg','2019-10-30 19:51:40.619169',5),(13,'goods/images/10_P_1448944572532.jpg','2019-10-30 19:51:40.622674',5),(14,'goods/images/10_P_1448944572872.jpg','2019-10-30 19:51:40.625789',5),(15,'goods/images/4_P_1448945381985.jpg','2019-10-30 19:51:40.634332',6),(16,'goods/images/4_P_1448945381013.jpg','2019-10-30 19:51:40.636511',6),(17,'goods/images/8_P_1448945032810.jpg','2019-10-30 19:51:40.648666',7),(18,'goods/images/8_P_1448945032646.jpg','2019-10-30 19:51:40.650771',7),(19,'goods/images/11_P_1448944388277.jpg','2019-10-30 19:51:40.657459',8),(20,'goods/images/11_P_1448944388034.jpg','2019-10-30 19:51:40.659906',8),(21,'goods/images/11_P_1448944388201.jpg','2019-10-30 19:51:40.663967',8),(22,'goods/images/6_P_1448945167279.jpg','2019-10-30 19:51:40.672645',9),(23,'goods/images/6_P_1448945167015.jpg','2019-10-30 19:51:40.678460',9),(24,'goods/images/9_P_1448944791617.jpg','2019-10-30 19:51:40.687109',10),(25,'goods/images/9_P_1448944791129.jpg','2019-10-30 19:51:40.691457',10),(26,'goods/images/9_P_1448944791077.jpg','2019-10-30 19:51:40.694285',10),(27,'goods/images/9_P_1448944791229.jpg','2019-10-30 19:51:40.697368',10),(28,'goods/images/3_P_1448945490837.jpg','2019-10-30 19:51:40.705993',11),(29,'goods/images/3_P_1448945490084.jpg','2019-10-30 19:51:40.708441',11),(30,'goods/images/48_P_1448943988970.jpg','2019-10-30 19:51:40.715909',12),(31,'goods/images/48_P_1448943988898.jpg','2019-10-30 19:51:40.718489',12),(32,'goods/images/48_P_1448943988439.jpg','2019-10-30 19:51:40.722598',12),(33,'goods/images/5_P_1448945270390.jpg','2019-10-30 19:51:40.729476',13),(34,'goods/images/5_P_1448945270067.jpg','2019-10-30 19:51:40.734607',13),(35,'goods/images/5_P_1448945270432.jpg','2019-10-30 19:51:40.736685',13),(36,'images/201705/goods_img/53_P_1495068879687.jpg','2019-10-30 19:51:40.743219',14),(37,'goods/images/16_P_1448947194687.jpg','2019-10-30 19:51:40.754209',15),(38,'goods/images/14_P_1448947354031.jpg','2019-10-30 19:51:40.763962',16),(39,'goods/images/14_P_1448947354433.jpg','2019-10-30 19:51:40.766671',16),(40,'goods/images/12_P_1448947547989.jpg','2019-10-30 19:51:40.831356',17),(41,'goods/images/46_P_1448946598711.jpg','2019-10-30 19:51:40.838197',18),(42,'goods/images/46_P_1448946598301.jpg','2019-10-30 19:51:40.842389',18),(43,'goods/images/21_P_1448946793276.jpg','2019-10-30 19:51:40.848781',19),(44,'goods/images/21_P_1448946793153.jpg','2019-10-30 19:51:40.851311',19),(45,'goods/images/15_P_1448947257324.jpg','2019-10-30 19:51:40.858364',20),(46,'goods/images/15_P_1448947257580.jpg','2019-10-30 19:51:40.864005',20),(47,'goods/images/13_P_1448947460386.jpg','2019-10-30 19:51:40.870466',21),(48,'goods/images/13_P_1448947460276.jpg','2019-10-30 19:51:40.874378',21),(49,'goods/images/13_P_1448947460353.jpg','2019-10-30 19:51:40.876289',21),(50,'goods/images/50_P_1448946543091.jpg','2019-10-30 19:51:40.882622',22),(51,'goods/images/50_P_1448946542182.jpg','2019-10-30 19:51:40.885410',22),(52,'goods/images/51_P_1448946466595.jpg','2019-10-30 19:51:40.895315',23),(53,'goods/images/51_P_1448946466208.jpg','2019-10-30 19:51:40.897621',23),(54,'goods/images/17_P_1448947102246.jpg','2019-10-30 19:51:40.903900',24),(55,'goods/images/20_P_1448946850602.jpg','2019-10-30 19:51:40.912628',25),(56,'goods/images/19_P_1448946951581.jpg','2019-10-30 19:51:40.921180',26),(57,'goods/images/19_P_1448946951726.jpg','2019-10-30 19:51:40.923785',26),(58,'goods/images/18_P_1448947011435.jpg','2019-10-30 19:51:40.930852',27),(59,'goods/images/22_P_1448946729629.jpg','2019-10-30 19:51:40.936858',28),(60,'goods/images/45_P_1448946661303.jpg','2019-10-30 19:51:40.944824',29),(61,'goods/images/32_P_1448948525620.jpg','2019-10-30 19:51:40.952765',30),(62,'goods/images/30_P_1448948663450.jpg','2019-10-30 19:51:40.961262',31),(63,'goods/images/30_P_1448948662571.jpg','2019-10-30 19:51:40.963389',31),(64,'goods/images/30_P_1448948663221.jpg','2019-10-30 19:51:40.967871',31),(65,'goods/images/31_P_1448948598947.jpg','2019-10-30 19:51:40.976630',32),(66,'goods/images/31_P_1448948598475.jpg','2019-10-30 19:51:40.979016',32),(67,'goods/images/35_P_1448948333610.jpg','2019-10-30 19:51:40.984841',33),(68,'goods/images/35_P_1448948333313.jpg','2019-10-30 19:51:40.990994',33),(69,'goods/images/36_P_1448948234405.jpg','2019-10-30 19:51:41.001494',34),(70,'goods/images/36_P_1448948234250.jpg','2019-10-30 19:51:41.003995',34),(71,'goods/images/33_P_1448948479966.jpg','2019-10-30 19:51:41.019536',35),(72,'goods/images/33_P_1448948479886.jpg','2019-10-30 19:51:41.021854',35),(73,'goods/images/34_P_1448948399009.jpg','2019-10-30 19:51:41.028811',36),(74,'goods/images/43_P_1448948762645.jpg','2019-10-30 19:51:41.037074',37),(75,'goods/images/38_P_1448949220255.jpg','2019-10-30 19:51:41.045632',38),(76,'goods/images/44_P_1448948850187.jpg','2019-10-30 19:51:41.052343',39),(77,'images/201511/goods_img/49_P_1448162819889.jpg','2019-10-30 19:51:41.059198',40),(78,'goods/images/40_P_1448949038702.jpg','2019-10-30 19:51:41.067646',41),(79,'goods/images/39_P_1448949115481.jpg','2019-10-30 19:51:41.077074',42),(80,'goods/images/41_P_1448948980358.jpg','2019-10-30 19:51:41.086354',43),(81,'goods/images/37_P_1448949284365.jpg','2019-10-30 19:51:41.094049',44),(82,'goods/images/42_P_1448948895193.jpg','2019-10-30 19:51:41.102889',45),(83,'goods/images/27_P_1448947771805.jpg','2019-10-30 19:51:41.112252',46),(84,'goods/images/23_P_1448948070348.jpg','2019-10-30 19:51:41.118836',47),(85,'goods/images/26_P_1448947825754.jpg','2019-10-30 19:51:41.126100',48),(86,'goods/images/28_P_1448947699948.jpg','2019-10-30 19:51:41.134072',49),(87,'goods/images/28_P_1448947699777.jpg','2019-10-30 19:51:41.137960',49),(88,'goods/images/24_P_1448948023823.jpg','2019-10-30 19:51:41.144860',50),(89,'goods/images/24_P_1448948023977.jpg','2019-10-30 19:51:41.147007',50),(90,'goods/images/25_P_1448947875346.jpg','2019-10-30 19:51:41.152884',51),(91,'goods/images/29_P_1448947631994.jpg','2019-10-30 19:51:41.161539',52);
/*!40000 ALTER TABLE `goods_goodsimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_hotsearchwords`
--

DROP TABLE IF EXISTS `goods_hotsearchwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods_hotsearchwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(20) NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_hotsearchwords`
--

LOCK TABLES `goods_hotsearchwords` WRITE;
/*!40000 ALTER TABLE `goods_hotsearchwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `goods_hotsearchwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_indexad`
--

DROP TABLE IF EXISTS `goods_indexad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `goods_indexad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id` (`category_id`),
  KEY `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `goods_indexad_category_id_cf834e34_fk_goods_goodscategory_id` FOREIGN KEY (`category_id`) REFERENCES `goods_goodscategory` (`id`),
  CONSTRAINT `goods_indexad_goods_id_e1361e4f_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_indexad`
--

LOCK TABLES `goods_indexad` WRITE;
/*!40000 ALTER TABLE `goods_indexad` DISABLE KEYS */;
INSERT INTO `goods_indexad` VALUES (1,1,1),(2,24,2);
/*!40000 ALTER TABLE `goods_indexad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reversion_revision`
--

DROP TABLE IF EXISTS `reversion_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reversion_revision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NOT NULL,
  `comment` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reversion_revision_user_id_17095f45_fk_users_userprofile_id` (`user_id`),
  KEY `reversion_revision_date_created_96f7c20c` (`date_created`),
  CONSTRAINT `reversion_revision_user_id_17095f45_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reversion_revision`
--

LOCK TABLES `reversion_revision` WRITE;
/*!40000 ALTER TABLE `reversion_revision` DISABLE KEYS */;
/*!40000 ALTER TABLE `reversion_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reversion_version`
--

DROP TABLE IF EXISTS `reversion_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reversion_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` varchar(191) NOT NULL,
  `format` varchar(255) NOT NULL,
  `serialized_data` longtext NOT NULL,
  `object_repr` longtext NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `revision_id` int(11) NOT NULL,
  `db` varchar(191) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reversion_version_db_content_type_id_objec_b2c54f65_uniq` (`db`,`content_type_id`,`object_id`,`revision_id`),
  KEY `reversion_version_content_type_id_7d0ff25c_fk_django_co` (`content_type_id`),
  KEY `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` (`revision_id`),
  CONSTRAINT `reversion_version_content_type_id_7d0ff25c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` FOREIGN KEY (`revision_id`) REFERENCES `reversion_revision` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reversion_version`
--

LOCK TABLES `reversion_version` WRITE;
/*!40000 ALTER TABLE `reversion_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `reversion_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_code`
--

DROP TABLE IF EXISTS `social_auth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  KEY `social_auth_code_code_a2393167` (`code`),
  KEY `social_auth_code_timestamp_176b341f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_code`
--

LOCK TABLES `social_auth_code` WRITE;
/*!40000 ALTER TABLE `social_auth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_partial`
--

DROP TABLE IF EXISTS `social_auth_partial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) unsigned NOT NULL,
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `social_auth_partial_token_3017fea3` (`token`),
  KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_partial`
--

LOCK TABLES `social_auth_partial` WRITE;
/*!40000 ALTER TABLE `social_auth_partial` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_partial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  KEY `social_auth_usersoci_user_id_17d28448_fk_users_use` (`user_id`),
  CONSTRAINT `social_auth_usersoci_user_id_17d28448_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
INSERT INTO `social_auth_usersocialauth` VALUES (1,'weibo','6363525093','{\"auth_time\": 1574246030, \"id\": 6363525093, \"username\": \"\\u7528\\u62376363525093\", \"profile_image_url\": \"https://tvax1.sinaimg.cn/default/images/default_avatar_male_50.gif?KID=imgbed,tva&Expires=1574256829&ssig=J653PhC3Wq\", \"gender\": \"m\", \"access_token\": \"2.00VZhewGNSDPsB9fc4b102c80gjqoq\", \"token_type\": null}',1);
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_ordergoods`
--

DROP TABLE IF EXISTS `trade_ordergoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trade_ordergoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_num` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `trade_ordergoods_goods_id_e77dc520_fk_goods_goods_id` (`goods_id`),
  KEY `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id` (`order_id`),
  CONSTRAINT `trade_ordergoods_goods_id_e77dc520_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`),
  CONSTRAINT `trade_ordergoods_order_id_e046f633_fk_trade_orderinfo_id` FOREIGN KEY (`order_id`) REFERENCES `trade_orderinfo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_ordergoods`
--

LOCK TABLES `trade_ordergoods` WRITE;
/*!40000 ALTER TABLE `trade_ordergoods` DISABLE KEYS */;
INSERT INTO `trade_ordergoods` VALUES (3,1,'2019-11-14 15:21:52.743198',1,2),(4,1,'2019-11-14 15:21:52.755211',2,2);
/*!40000 ALTER TABLE `trade_ordergoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_orderinfo`
--

DROP TABLE IF EXISTS `trade_orderinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trade_orderinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(30) DEFAULT NULL,
  `trade_no` varchar(100) DEFAULT NULL,
  `pay_status` varchar(30) NOT NULL,
  `post_script` varchar(200) NOT NULL,
  `order_mount` double NOT NULL,
  `pay_time` datetime(6) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `signer_name` varchar(20) NOT NULL,
  `singer_mobile` varchar(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  UNIQUE KEY `trade_no` (`trade_no`),
  KEY `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `trade_orderinfo_user_id_08ffa22c_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_orderinfo`
--

LOCK TABLES `trade_orderinfo` WRITE;
/*!40000 ALTER TABLE `trade_orderinfo` DISABLE KEYS */;
INSERT INTO `trade_orderinfo` VALUES (2,'20191114152152191',NULL,'paying','你好',244,NULL,'湖南省长沙市岳麓区中南大学7栋','luke','18912345678','2019-11-14 15:21:52.733613',1);
/*!40000 ALTER TABLE `trade_orderinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_shoppingcart`
--

DROP TABLE IF EXISTS `trade_shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trade_shoppingcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nums` int(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trade_shoppingcart_user_id_goods_id_92225e66_uniq` (`user_id`,`goods_id`),
  KEY `trade_shoppingcart_goods_id_8b0f3cb4_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `trade_shoppingcart_goods_id_8b0f3cb4_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`),
  CONSTRAINT `trade_shoppingcart_user_id_da423c9c_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_shoppingcart`
--

LOCK TABLES `trade_shoppingcart` WRITE;
/*!40000 ALTER TABLE `trade_shoppingcart` DISABLE KEYS */;
INSERT INTO `trade_shoppingcart` VALUES (12,2,'2019-11-18 18:00:50.478601',1,1);
/*!40000 ALTER TABLE `trade_shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_operation_useraddress`
--

DROP TABLE IF EXISTS `user_operation_useraddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_operation_useraddress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `signer_name` varchar(100) NOT NULL,
  `signer_mobile` varchar(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_operation_usera_user_id_fe128593_fk_users_use` (`user_id`),
  CONSTRAINT `user_operation_usera_user_id_fe128593_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_operation_useraddress`
--

LOCK TABLES `user_operation_useraddress` WRITE;
/*!40000 ALTER TABLE `user_operation_useraddress` DISABLE KEYS */;
INSERT INTO `user_operation_useraddress` VALUES (1,'湖南省','长沙市','岳麓区','中南大学7栋','luke','18912345678','2019-11-13 14:29:52.949740',1);
/*!40000 ALTER TABLE `user_operation_useraddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_operation_userfav`
--

DROP TABLE IF EXISTS `user_operation_userfav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_operation_userfav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_operation_userfav_user_id_goods_id_2dbadda7_uniq` (`user_id`,`goods_id`),
  KEY `user_operation_userfav_goods_id_57fc554f_fk_goods_goods_id` (`goods_id`),
  CONSTRAINT `user_operation_userfav_goods_id_57fc554f_fk_goods_goods_id` FOREIGN KEY (`goods_id`) REFERENCES `goods_goods` (`id`),
  CONSTRAINT `user_operation_userfav_user_id_4e4de070_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_operation_userfav`
--

LOCK TABLES `user_operation_userfav` WRITE;
/*!40000 ALTER TABLE `user_operation_userfav` DISABLE KEYS */;
INSERT INTO `user_operation_userfav` VALUES (5,'2019-11-12 11:03:18.197700',1,2),(7,'2019-11-13 10:53:44.122661',3,1),(9,'2019-11-18 17:16:52.610528',1,1),(10,'2019-11-18 17:24:52.515257',2,1);
/*!40000 ALTER TABLE `user_operation_userfav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_operation_userleavingmessage`
--

DROP TABLE IF EXISTS `user_operation_userleavingmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_operation_userleavingmessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_type` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `file` varchar(100) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_operation_userl_user_id_70d909d6_fk_users_use` (`user_id`),
  CONSTRAINT `user_operation_userl_user_id_70d909d6_fk_users_use` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_operation_userleavingmessage`
--

LOCK TABLES `user_operation_userleavingmessage` WRITE;
/*!40000 ALTER TABLE `user_operation_userleavingmessage` DISABLE KEYS */;
INSERT INTO `user_operation_userleavingmessage` VALUES (2,1,'第一条留言','第一条留言','message/images/meinv_tAHNFlB.jpg','2019-11-13 11:58:39.435243',1);
/*!40000 ALTER TABLE `user_operation_userleavingmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile`
--

DROP TABLE IF EXISTS `users_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile`
--

LOCK TABLES `users_userprofile` WRITE;
/*!40000 ALTER TABLE `users_userprofile` DISABLE KEYS */;
INSERT INTO `users_userprofile` VALUES (1,'pbkdf2_sha256$150000$uPcMCxv7jEi8$z27gHiC2dgkj2BEYUW8t+U85iZdhiaVoR9GXP292E8c=','2019-11-20 18:33:50.112234',1,'admin','用户6363525093','',1,1,'2019-10-30 19:34:00.000000','luke','2019-11-01','male',NULL,'admin@foxmail.com'),(2,'pbkdf2_sha256$150000$eBiwL9lsgbdi$ELmoBZp8wrzu26qwSWzAoKGlPwiiVBe8LQirR6eVM8s=','2019-11-13 16:43:26.600400',1,'admin2','','',1,1,'2019-11-06 11:07:38.949138',NULL,NULL,'female',NULL,'admin2@qq.com'),(27,'pbkdf2_sha256$150000$zG1VUEBUIMM3$/vLxmZHARhfanZ47AZEhH8j7v5f++X7x/AlMKN4P3+I=',NULL,0,'18912345678','','',0,1,'2019-11-14 22:16:23.523599',NULL,NULL,'female','18912345678',NULL);
/*!40000 ALTER TABLE `users_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_groups`
--

DROP TABLE IF EXISTS `users_userprofile_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_groups`
--

LOCK TABLES `users_userprofile_groups` WRITE;
/*!40000 ALTER TABLE `users_userprofile_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile_user_permissions`
--

DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile_user_permissions`
--

LOCK TABLES `users_userprofile_user_permissions` WRITE;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_userprofile_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_verifycode`
--

DROP TABLE IF EXISTS `users_verifycode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users_verifycode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_verifycode`
--

LOCK TABLES `users_verifycode` WRITE;
/*!40000 ALTER TABLE `users_verifycode` DISABLE KEYS */;
INSERT INTO `users_verifycode` VALUES (2,'1234','18912345678','2019-11-14 22:15:00.000000'),(3,'1234','18201223059','2019-11-08 19:11:00.000000');
/*!40000 ALTER TABLE `users_verifycode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_bookmark`
--

DROP TABLE IF EXISTS `xadmin_bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_bookmark`
--

LOCK TABLES `xadmin_bookmark` WRITE;
/*!40000 ALTER TABLE `xadmin_bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_log`
--

DROP TABLE IF EXISTS `xadmin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_log`
--

LOCK TABLES `xadmin_log` WRITE;
/*!40000 ALTER TABLE `xadmin_log` DISABLE KEYS */;
INSERT INTO `xadmin_log` VALUES (1,'2019-11-05 15:02:07.994196','192.168.0.104','1','生鲜食品','change','修改 desc 和 is_tab',9,1),(2,'2019-11-05 15:07:41.754032','192.168.0.104','24','酒水饮料','change','修改 desc 和 is_tab',9,1),(3,'2019-11-05 15:07:54.775965','192.168.0.104','40','粮油副食','change','修改 desc 和 is_tab',9,1),(4,'2019-11-05 15:08:16.874983','192.168.0.104','57','蔬菜水果','change','修改 desc 和 is_tab',9,1),(5,'2019-11-05 15:08:29.533133','192.168.0.104','74','休闲食品','change','修改 desc 和 is_tab',9,1),(6,'2019-11-05 15:08:48.128522','192.168.0.104','102','奶类食品','change','修改 desc 和 is_tab',9,1),(7,'2019-11-05 19:48:15.565567','192.168.0.104','2','田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛','change','修改 goods_sn 和 sold_num',8,1),(8,'2019-11-08 17:46:03.244336','192.168.0.104','2','1234','create','已添加。',6,1),(9,'2019-11-08 19:11:33.065197','192.168.0.104','3','1234','create','已添加。',6,1),(10,'2019-11-08 21:03:05.338591','192.168.0.104','2','1234','change','修改 add_time',6,1),(11,'2019-11-08 21:03:26.075782','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(12,'2019-11-08 21:05:34.870740','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(13,'2019-11-08 21:18:55.675740','192.168.0.104','2','1234','change','修改 add_time',6,1),(14,'2019-11-08 21:21:49.109822','192.168.0.104','2','1234','change','修改 add_time',6,1),(15,'2019-11-08 21:21:56.347969','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(16,'2019-11-08 21:48:34.934286','192.168.0.104','2','1234','change','修改 add_time',6,1),(17,'2019-11-08 21:48:48.894867','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(18,'2019-11-08 21:52:34.603863','192.168.0.104','2','1234','change','修改 add_time',6,1),(19,'2019-11-09 10:25:27.874404','192.168.0.104','2','1234','change','修改 add_time',6,1),(20,'2019-11-09 10:25:37.693139','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(21,'2019-11-09 10:26:05.984343','192.168.0.104','2','1234','change','修改 add_time',6,1),(22,'2019-11-09 10:28:22.059792','192.168.0.104','2','1234','change','修改 add_time',6,1),(23,'2019-11-09 10:30:02.562193','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(24,'2019-11-09 10:30:10.886091','192.168.0.104','2','1234','change','修改 add_time',6,1),(25,'2019-11-09 11:19:39.872328','192.168.0.104','2','1234','change','修改 add_time',6,1),(26,'2019-11-09 11:19:58.015386','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(27,'2019-11-09 17:07:09.038732','192.168.0.104','2','1234','change','修改 add_time',6,1),(28,'2019-11-09 17:13:04.966534','192.168.0.104','2','1234','change','修改 add_time',6,1),(29,'2019-11-09 17:13:15.717543','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(30,'2019-11-09 17:14:59.592186','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(31,'2019-11-09 17:29:50.930252','192.168.0.104','2','1234','change','修改 add_time',6,1),(32,'2019-11-09 17:29:58.760614','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(33,'2019-11-09 17:53:12.438188','192.168.0.104','2','1234','change','修改 add_time',6,1),(34,'2019-11-11 11:00:27.560401','192.168.0.104','2','田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛','change','没有字段被修改。',8,1),(35,'2019-11-11 21:27:24.055985','192.168.0.104','2','1234','change','修改 add_time',6,1),(36,'2019-11-11 21:27:32.479435','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(37,'2019-11-11 21:29:16.970252','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(38,'2019-11-11 21:32:17.363831','192.168.0.104','2','1234','change','修改 add_time',6,1),(39,'2019-11-11 21:38:20.609660','192.168.0.104','2','1234','change','修改 add_time',6,1),(40,'2019-11-11 21:38:31.179991','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(41,'2019-11-11 21:39:52.809575','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(42,'2019-11-11 21:46:06.701388','192.168.0.104','2','1234','change','修改 add_time',6,1),(43,'2019-11-12 11:30:35.316432','192.168.0.104','1','admin','change','修改 last_login 和 email',7,1),(44,'2019-11-12 11:50:48.462074','192.168.0.104','2','1234','change','修改 add_time',6,1),(45,'2019-11-12 11:50:55.287978','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(46,'2019-11-12 11:55:00.521819','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(47,'2019-11-12 11:55:17.330841','192.168.0.104','2','1234','change','修改 add_time',6,1),(48,'2019-11-12 16:33:27.062077','192.168.0.104',NULL,'','delete','批量删除 1 个 短信验证码',NULL,1),(49,'2019-11-12 16:33:46.699848','192.168.0.104','2','1234','change','修改 mobile',6,1),(50,'2019-11-12 16:34:02.229818','192.168.0.104','2','1234','change','修改 add_time',6,1),(51,'2019-11-12 16:34:11.061037','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(52,'2019-11-12 19:13:07.151648','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(53,'2019-11-12 19:13:54.322669','192.168.0.104','2','1234','change','修改 add_time',6,1),(54,'2019-11-12 21:38:57.210060','192.168.0.104','1','admin','change','修改 last_login 和 name',7,1),(55,'2019-11-14 20:37:20.470017','192.168.0.104','2','1234','change','修改 add_time',6,1),(56,'2019-11-14 20:37:28.410853','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(57,'2019-11-14 21:52:00.662108','192.168.0.104','52','融氏纯玉米胚芽油5l桶','change','修改 goods_sn，goods_brief 和 is_hot',8,1),(58,'2019-11-14 22:02:40.433821','192.168.0.104','2','1234','change','修改 add_time',6,1),(59,'2019-11-14 22:02:47.272093','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(60,'2019-11-14 22:04:29.910694','192.168.0.104','2','1234','change','修改 add_time',6,1),(61,'2019-11-14 22:04:36.746868','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(62,'2019-11-14 22:10:20.363544','192.168.0.104','2','1234','change','修改 add_time',6,1),(63,'2019-11-14 22:10:28.590652','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(64,'2019-11-14 22:15:49.586375','192.168.0.104','2','1234','change','修改 add_time',6,1),(65,'2019-11-14 22:15:57.721467','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(66,'2019-11-14 22:16:57.087023','192.168.0.104',NULL,'','delete','批量删除 1 个 用户',NULL,1),(67,'2019-11-16 17:37:40.919332','192.168.0.104','1','新鲜水果甜蜜香脆单果约800克','create','已添加。',14,1),(68,'2019-11-16 17:51:00.190021','192.168.0.104','2','田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛','create','已添加。',14,1),(69,'2019-11-16 17:51:10.250639','192.168.0.104','3','酣畅家庭菲力牛排10片澳洲生鲜牛肉团购套餐','create','已添加。',14,1),(70,'2019-11-16 18:44:51.564881','192.168.0.104','52','融氏纯玉米胚芽油5l桶','change','修改 is_new',8,1),(71,'2019-11-16 18:45:04.387510','192.168.0.104','51','稻园牌稻米油粮油米糠油绿色植物油','change','修改 goods_sn，goods_brief 和 is_new',8,1),(72,'2019-11-18 15:24:38.841126','192.168.0.104','1','新鲜水果甜蜜香脆单果约800克','create','已添加。',11,1),(73,'2019-11-18 15:37:25.076627','192.168.0.104','1','luke','create','已添加。',13,1),(74,'2019-11-18 15:54:08.823523','192.168.0.104','2','luke','create','已添加。',13,1),(75,'2019-11-18 15:55:10.963874','192.168.0.104','1','luke1','change','修改 name 和 image',13,1),(76,'2019-11-18 15:55:39.773435','192.168.0.104','3','luke2','create','已添加。',13,1),(77,'2019-11-18 16:04:15.532151','192.168.0.104','4','test','create','已添加。',13,1),(78,'2019-11-18 16:04:28.745107','192.168.0.104','5','test','create','已添加。',13,1),(79,'2019-11-18 16:04:42.491394','192.168.0.104','6','test3','create','已添加。',13,1),(80,'2019-11-18 16:05:50.072452','192.168.0.104','2','田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛','create','已添加。',11,1),(81,'2019-11-18 16:09:45.066901','192.168.0.104','2','田然牛肉大黄瓜条生鲜牛肉冷冻真空黄牛','change','修改 category',11,1);
/*!40000 ALTER TABLE `xadmin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_usersettings`
--

DROP TABLE IF EXISTS `xadmin_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_usersettings`
--

LOCK TABLES `xadmin_usersettings` WRITE;
/*!40000 ALTER TABLE `xadmin_usersettings` DISABLE KEYS */;
INSERT INTO `xadmin_usersettings` VALUES (1,'dashboard:home:pos','',1);
/*!40000 ALTER TABLE `xadmin_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xadmin_userwidget`
--

DROP TABLE IF EXISTS `xadmin_userwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xadmin_userwidget`
--

LOCK TABLES `xadmin_userwidget` WRITE;
/*!40000 ALTER TABLE `xadmin_userwidget` DISABLE KEYS */;
/*!40000 ALTER TABLE `xadmin_userwidget` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-08 19:25:10
