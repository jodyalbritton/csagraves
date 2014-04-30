-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: example
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.13.10.1

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
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `about` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `imageable_id` int(11) DEFAULT NULL,
  `imageable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_attachments_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,'2014-04-29 23:58:57','2014-04-29 23:58:57','KL(3).jpg','image/jpeg',33918,'2014-04-29 23:58:57'),(2,NULL,NULL,NULL,NULL,NULL,NULL,'2014-04-30 00:10:19','2014-04-30 00:10:19','entrance.jpg','image/jpeg',135253,'2014-04-30 00:10:18'),(3,NULL,NULL,NULL,NULL,NULL,NULL,'2014-04-30 00:11:44','2014-04-30 00:11:44','entrance.jpg','image/jpeg',135253,'2014-04-30 00:11:44'),(4,NULL,NULL,1,'1',NULL,NULL,'2014-04-30 00:13:13','2014-04-30 00:13:13','entrance.jpg','image/jpeg',135253,'2014-04-30 00:13:12'),(5,NULL,NULL,1,'Plot',NULL,NULL,'2014-04-30 00:14:27','2014-04-30 00:14:27','entrance.jpg','image/jpeg',135253,'2014-04-30 00:14:26'),(6,NULL,NULL,1,'Plot',NULL,NULL,'2014-04-30 00:14:36','2014-04-30 00:14:36','KL(3).jpg','image/jpeg',33918,'2014-04-30 00:14:36'),(7,NULL,NULL,1,'Plot',NULL,NULL,'2014-04-30 00:14:49','2014-04-30 00:14:49','3d.JPG','image/jpeg',32397,'2014-04-30 00:14:49'),(8,NULL,NULL,1,'Plot',NULL,NULL,'2014-04-30 04:10:15','2014-04-30 04:10:15','1524688327_48b7de3f82.jpg','image/jpeg',92435,'2014-04-30 04:10:15');
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-04-30 15:58:59
