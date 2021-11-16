-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: db_test
-- ------------------------------------------------------
-- Server version	8.0.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `api_category`
--

DROP TABLE IF EXISTS `api_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_category`
--

LOCK TABLES `api_category` WRITE;
/*!40000 ALTER TABLE `api_category` DISABLE KEYS */;
INSERT INTO `api_category` VALUES (1,'imagenes');
/*!40000 ALTER TABLE `api_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_company`
--

DROP TABLE IF EXISTS `api_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `website` varchar(100) NOT NULL,
  `foundation` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `api_company_chk_1` CHECK ((`foundation` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_company`
--

LOCK TABLES `api_company` WRITE;
/*!40000 ALTER TABLE `api_company` DISABLE KEYS */;
INSERT INTO `api_company` VALUES (1,'Facebook','http://facebook.com',2004),(2,'Apple','http://apple.com/la/',1976),(3,'Twitters','http://twitter.com',2006),(5,'Instagram','http://instagram.com',2009);
/*!40000 ALTER TABLE `api_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_createpage`
--

DROP TABLE IF EXISTS `api_createpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_createpage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_createpage`
--

LOCK TABLES `api_createpage` WRITE;
/*!40000 ALTER TABLE `api_createpage` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_createpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_menuelements`
--

DROP TABLE IF EXISTS `api_menuelements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_menuelements` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_menuelements_category_id_221da976_fk_api_category_id` (`category_id`),
  CONSTRAINT `api_menuelements_category_id_221da976_fk_api_category_id` FOREIGN KEY (`category_id`) REFERENCES `api_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_menuelements`
--

LOCK TABLES `api_menuelements` WRITE;
/*!40000 ALTER TABLE `api_menuelements` DISABLE KEYS */;
INSERT INTO `api_menuelements` VALUES (1,'productos_ecQLccv.png','sadsad',1);
/*!40000 ALTER TABLE `api_menuelements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_otherelements`
--

DROP TABLE IF EXISTS `api_otherelements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_otherelements` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `link` varchar(500) NOT NULL,
  `menuElements_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menuElements_id` (`menuElements_id`),
  CONSTRAINT `api_otherelements_menuElements_id_4f3a531a_fk_api_menue` FOREIGN KEY (`menuElements_id`) REFERENCES `api_menuelements` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_otherelements`
--

LOCK TABLES `api_otherelements` WRITE;
/*!40000 ALTER TABLE `api_otherelements` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_otherelements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_products`
--

DROP TABLE IF EXISTS `api_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_products`
--

LOCK TABLES `api_products` WRITE;
/*!40000 ALTER TABLE `api_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add company',7,'add_company'),(26,'Can change company',7,'change_company'),(27,'Can delete company',7,'delete_company'),(28,'Can view company',7,'view_company'),(29,'Can add products',8,'add_products'),(30,'Can change products',8,'change_products'),(31,'Can delete products',8,'delete_products'),(32,'Can view products',8,'view_products'),(33,'Can add category',10,'add_category'),(34,'Can change category',10,'change_category'),(35,'Can delete category',10,'delete_category'),(36,'Can view category',10,'view_category'),(37,'Can add menu elements',9,'add_menuelements'),(38,'Can change menu elements',9,'change_menuelements'),(39,'Can delete menu elements',9,'delete_menuelements'),(40,'Can view menu elements',9,'view_menuelements'),(41,'Can add other elements',11,'add_otherelements'),(42,'Can change other elements',11,'change_otherelements'),(43,'Can delete other elements',11,'delete_otherelements'),(44,'Can view other elements',11,'view_otherelements'),(45,'Can add create page',12,'add_createpage'),(46,'Can change create page',12,'change_createpage'),(47,'Can delete create page',12,'delete_createpage'),(48,'Can view create page',12,'view_createpage');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$2XRrWT9g9yxZQQHFUr3Bwv$tJMv3f9G9JP3x9dLpksc1tlgnzwXwigt1115MBiE/7c=','2021-11-10 16:51:15.334856',1,'shengdong','','','shengdong100@gmail.com',1,1,'2021-11-03 16:40:18.266987'),(3,'pbkdf2_sha256$260000$LuCn8p7cjkL3tLgQVMUUjR$/jWEtn7HiXV7XsZ8hTGu+/uIekL6eWuCGiGJiahyhJo=','2021-11-09 17:36:48.000000',0,'juan','juan','','juan@gmail.com',0,1,'2021-11-09 17:35:27.000000'),(4,'pbkdf2_sha256$260000$exQ868L0Si9QUBJ89Lzt1A$7rOBNoyBp8IlxXtg3m7Ld7w11muOTcAE4ZVWiPQKAV4=','2021-11-10 16:45:23.725772',0,'pepes','pepes','','',1,1,'2021-11-10 16:44:14.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-11-03 16:47:50.046665','1','Company object (1)',1,'[{\"added\": {}}]',7,1),(2,'2021-11-03 16:48:40.801616','2','Company object (2)',1,'[{\"added\": {}}]',7,1),(3,'2021-11-09 16:33:49.922689','2','juan',1,'[{\"added\": {}}]',4,1),(4,'2021-11-09 17:35:02.081320','2','juan',3,'',4,1),(5,'2021-11-09 17:35:28.156461','3','juan',1,'[{\"added\": {}}]',4,1),(6,'2021-11-09 17:35:40.388246','3','juan',2,'[{\"changed\": {\"fields\": [\"First name\", \"Email address\"]}}]',4,1),(7,'2021-11-09 17:36:40.194578','3','juan',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]',4,1),(8,'2021-11-10 16:43:26.001597','3','juan',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]',4,1),(9,'2021-11-10 16:44:14.763331','4','pepes',1,'[{\"added\": {}}]',4,1),(10,'2021-11-10 16:44:22.070406','4','pepes',2,'[{\"changed\": {\"fields\": [\"First name\"]}}]',4,1),(11,'2021-11-10 16:45:12.988217','4','pepes',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1),(12,'2021-11-15 16:45:04.358219','1','Imagenes',1,'[{\"added\": {}}]',10,1),(13,'2021-11-15 16:48:57.663159','1','Productos',1,'[{\"added\": {}}]',9,1),(14,'2021-11-16 16:22:12.566304','1','Productos',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(15,'2021-11-16 18:57:06.238126','1','imagenes',1,'[{\"added\": {}}]',10,1),(16,'2021-11-16 18:57:26.793098','1','sadsad',1,'[{\"added\": {}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(10,'api','category'),(7,'api','company'),(12,'api','createpage'),(9,'api','menuelements'),(11,'api','otherelements'),(8,'api','products'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-11-03 16:37:00.304066'),(2,'auth','0001_initial','2021-11-03 16:37:01.137071'),(3,'admin','0001_initial','2021-11-03 16:37:01.315076'),(4,'admin','0002_logentry_remove_auto_add','2021-11-03 16:37:01.327043'),(5,'admin','0003_logentry_add_action_flag_choices','2021-11-03 16:37:01.337043'),(6,'contenttypes','0002_remove_content_type_name','2021-11-03 16:37:01.487074'),(7,'auth','0002_alter_permission_name_max_length','2021-11-03 16:37:01.578079'),(8,'auth','0003_alter_user_email_max_length','2021-11-03 16:37:01.617073'),(9,'auth','0004_alter_user_username_opts','2021-11-03 16:37:01.628042'),(10,'auth','0005_alter_user_last_login_null','2021-11-03 16:37:01.733646'),(11,'auth','0006_require_contenttypes_0002','2021-11-03 16:37:01.742684'),(12,'auth','0007_alter_validators_add_error_messages','2021-11-03 16:37:01.754644'),(13,'auth','0008_alter_user_username_max_length','2021-11-03 16:37:01.841643'),(14,'auth','0009_alter_user_last_name_max_length','2021-11-03 16:37:01.920680'),(15,'auth','0010_alter_group_name_max_length','2021-11-03 16:37:01.949649'),(16,'auth','0011_update_proxy_permissions','2021-11-03 16:37:01.964646'),(17,'auth','0012_alter_user_first_name_max_length','2021-11-03 16:37:02.038645'),(18,'sessions','0001_initial','2021-11-03 16:37:02.090687'),(19,'api','0001_initial','2021-11-03 16:42:25.352630'),(20,'api','0002_products','2021-11-09 17:11:18.734937'),(21,'api','0002_category_menuelements_otherelements','2021-11-16 18:26:30.857377'),(22,'api','0003_createpage_products','2021-11-16 18:26:30.865376'),(23,'api','0002_category_createpage_menuelements_otherelements_products','2021-11-16 18:42:52.676464');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('u30ge3njplyffhfk7q5yjkwr9dgocrah','.eJxVjEEOwiAQRe_C2hBaB4a6dO8ZyAwMUjU0Ke3KeHfbpAvdvvf-f6tA61LC2mQOY1IX1anTL2OKT6m7SA-q90nHqS7zyHpP9GGbvk1JXtej_Tso1Mq2FkGMxnmbQQgg2-wdekBgcwbg2IPtzGD7DQ_iGDgZhJw9JTaA5NXnC9PZN4w:1mkqod:HZtKzNkJbi3pz75uprJk_xSD6tKccUgPvqIgtfLbomE','2021-11-24 16:51:15.339806');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-16 19:05:09
