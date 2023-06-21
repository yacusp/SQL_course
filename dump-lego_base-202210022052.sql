-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: lego_base
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `categorie_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lego_system` bigint unsigned NOT NULL,
  `categorie` varchar(50) NOT NULL,
  PRIMARY KEY (`categorie_id`),
  KEY `lego_system` (`lego_system`),
  CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`lego_system`) REFERENCES `lego_systems` (`lego_system_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,2,'bricks'),(2,3,'bricks'),(3,2,'cylinders'),(4,2,'plates'),(5,2,'glasses'),(7,2,'tiles'),(8,3,'liftarms'),(9,2,'wheels'),(10,2,'slopes'),(11,2,'vehicles');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `color_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(50) NOT NULL COMMENT 'Main part color',
  `transparency` bit(1) NOT NULL DEFAULT b'0',
  `printing` bit(1) NOT NULL DEFAULT b'0',
  `printing_discription` varchar(150) DEFAULT NULL,
  `second_color` varchar(50) DEFAULT NULL COMMENT 'Additional part color',
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'white',_binary '\0',_binary '\0',NULL,NULL),(2,'black',_binary '\0',_binary '\0',NULL,NULL),(3,'red',_binary '\0',_binary '\0',NULL,NULL),(4,'yellow',_binary '\0',_binary '\0',NULL,NULL),(5,'blue',_binary '\0',_binary '\0',NULL,NULL),(6,'green',_binary '\0',_binary '\0',NULL,NULL),(7,'white',_binary '\0',_binary '','Eye',NULL),(8,'blue',_binary '',_binary '\0',NULL,NULL),(9,'grey',_binary '\0',_binary '\0',NULL,'red'),(10,'clear',_binary '',_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connectivities`
--

DROP TABLE IF EXISTS `connectivities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `connectivities` (
  `connectivitie_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `top_studs_amount` bigint NOT NULL,
  `buttom_studs_amount` bigint NOT NULL DEFAULT '0',
  `side_studs_amount` bigint NOT NULL DEFAULT '0',
  `top_tubes_amount` bigint NOT NULL DEFAULT '0',
  `buttom_tubes_amount` bigint NOT NULL,
  `side_tubes_amount` bigint NOT NULL DEFAULT '0',
  `horizontal_holes` bigint NOT NULL DEFAULT '0',
  `vertical_holes` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`connectivitie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connectivities`
--

LOCK TABLES `connectivities` WRITE;
/*!40000 ALTER TABLE `connectivities` DISABLE KEYS */;
INSERT INTO `connectivities` VALUES (1,16,0,0,0,16,0,0,0),(2,2,0,0,0,4,0,0,0),(3,3,0,0,0,3,0,0,0),(4,8,0,0,0,8,0,0,0),(5,2,0,0,0,2,0,0,0),(6,6,0,0,0,6,0,0,0),(7,4,0,0,0,4,0,0,0),(8,6,0,0,0,6,0,0,0),(9,1,0,0,0,1,0,0,0),(10,12,0,0,0,12,0,0,0);
/*!40000 ALTER TABLE `connectivities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lego_series`
--

DROP TABLE IF EXISTS `lego_series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lego_series` (
  `series_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lego_theme` varchar(150) NOT NULL,
  `lego_series` varchar(150) NOT NULL,
  PRIMARY KEY (`series_id`),
  UNIQUE KEY `lego_series` (`lego_series`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lego_series`
--

LOCK TABLES `lego_series` WRITE;
/*!40000 ALTER TABLE `lego_series` DISABLE KEYS */;
INSERT INTO `lego_series` VALUES (1,'Town','Traffic'),(2,'Town','Fire'),(3,'Town','Hospital'),(4,'Creator','Basic');
/*!40000 ALTER TABLE `lego_series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lego_systems`
--

DROP TABLE IF EXISTS `lego_systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lego_systems` (
  `lego_system_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lego_system` varchar(50) NOT NULL,
  PRIMARY KEY (`lego_system_id`),
  UNIQUE KEY `lego_system` (`lego_system`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lego_systems`
--

LOCK TABLES `lego_systems` WRITE;
/*!40000 ALTER TABLE `lego_systems` DISABLE KEYS */;
INSERT INTO `lego_systems` VALUES (6,'bionicke'),(1,'duplo'),(4,'electric'),(2,'system'),(3,'technic'),(5,'znap');
/*!40000 ALTER TABLE `lego_systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part_images`
--

DROP TABLE IF EXISTS `part_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part_images` (
  `part_image_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `part_type` bigint unsigned NOT NULL,
  `part_image` blob,
  PRIMARY KEY (`part_image_id`),
  KEY `part_type` (`part_type`),
  CONSTRAINT `part_images_ibfk_1` FOREIGN KEY (`part_type`) REFERENCES `part_types` (`part_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_images`
--

LOCK TABLES `part_images` WRITE;
/*!40000 ALTER TABLE `part_images` DISABLE KEYS */;
INSERT INTO `part_images` VALUES (1,1,NULL),(2,2,NULL),(3,3,NULL),(4,4,NULL),(5,5,NULL),(6,6,NULL),(7,7,NULL),(8,8,NULL),(9,9,NULL),(10,10,NULL),(11,11,NULL),(12,12,NULL),(13,13,NULL),(14,14,NULL),(15,15,NULL),(16,16,NULL),(17,17,NULL),(18,18,NULL),(19,19,NULL),(20,20,NULL),(21,21,NULL),(22,22,NULL),(23,23,NULL),(24,24,NULL),(25,25,NULL);
/*!40000 ALTER TABLE `part_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part_types`
--

DROP TABLE IF EXISTS `part_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part_types` (
  `part_type_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `part_name` varchar(150) DEFAULT NULL,
  `part_categorie` bigint unsigned NOT NULL,
  `part_color` bigint unsigned NOT NULL,
  `part_connectivitie` bigint unsigned NOT NULL,
  `part_height` bigint DEFAULT NULL,
  `part_plate_height` bigint DEFAULT NULL,
  `part_width` bigint DEFAULT NULL,
  `part_depth` bigint DEFAULT NULL,
  PRIMARY KEY (`part_type_id`),
  KEY `part_categorie` (`part_categorie`),
  KEY `part_color` (`part_color`),
  KEY `part_connectivitie` (`part_connectivitie`),
  CONSTRAINT `part_types_ibfk_1` FOREIGN KEY (`part_categorie`) REFERENCES `categories` (`categorie_id`),
  CONSTRAINT `part_types_ibfk_2` FOREIGN KEY (`part_color`) REFERENCES `colors` (`color_id`),
  CONSTRAINT `part_types_ibfk_3` FOREIGN KEY (`part_connectivitie`) REFERENCES `connectivities` (`connectivitie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_types`
--

LOCK TABLES `part_types` WRITE;
/*!40000 ALTER TABLE `part_types` DISABLE KEYS */;
INSERT INTO `part_types` VALUES (1,'Gray Plate 2x4 with Red Wheels',9,9,8,1,3,4,2),(2,'Red Plate 2x8',4,3,1,NULL,1,8,2),(3,'Trans-Clear Slope 45 2x2',10,10,2,1,3,2,2),(4,'White Brick 2x3',1,1,6,1,3,3,2),(5,'White Plate 2x4',4,1,4,NULL,1,4,2),(6,'Yellow Plate 1x2',4,4,5,NULL,1,2,1),(7,'Yellow Plate 2x3',4,4,6,NULL,1,3,2),(8,'Yellow Plate 2x8',4,4,1,NULL,1,8,2),(9,'Yellow Mudguard 2x4',11,4,7,NULL,2,4,2),(10,'Red Plate 1x2',4,3,5,NULL,1,2,1),(11,'Red Plate 2x3',4,3,6,NULL,1,3,2),(12,'Red Mudguard 2x4',11,3,7,NULL,2,4,2),(13,'Trans-Clear Brick 2x2',1,10,4,1,3,2,2),(14,'Trans-Blue Cylinder',1,8,9,1,3,1,1),(15,'White Brick 1x2',1,1,5,1,3,1,2),(16,'White Plate 2x2',4,1,7,NULL,1,2,2),(17,'Yellow Plate 2x3',4,1,6,NULL,1,3,2),(18,'White Plate 2x8',4,1,1,NULL,1,8,2),(19,'Red Plate 2x6',4,3,10,NULL,1,6,2),(20,'Red Slope 45 2x2',10,3,2,1,3,2,2),(21,'Trans-Clear Brick 1x2',1,10,5,1,3,1,2),(22,'Black Brick 1x2',1,2,5,1,3,1,2),(23,'Black Brick 2x2',1,2,7,1,3,2,2),(24,'White Brick 2x2 with Eye',1,7,7,1,3,2,2),(25,'White Brick 2x4',1,1,4,1,3,4,2);
/*!40000 ALTER TABLE `part_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `set_images`
--

DROP TABLE IF EXISTS `set_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `set_images` (
  `set_image_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `set_id` bigint unsigned NOT NULL,
  `set_image` blob,
  PRIMARY KEY (`set_image_id`),
  KEY `set_id` (`set_id`),
  CONSTRAINT `set_images_ibfk_1` FOREIGN KEY (`set_id`) REFERENCES `sets_list` (`set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `set_images`
--

LOCK TABLES `set_images` WRITE;
/*!40000 ALTER TABLE `set_images` DISABLE KEYS */;
INSERT INTO `set_images` VALUES (1,1,NULL),(2,2,NULL),(3,3,NULL),(4,4,NULL);
/*!40000 ALTER TABLE `set_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sets_inventory`
--

DROP TABLE IF EXISTS `sets_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sets_inventory` (
  `sets_inventory_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `set_number` bigint unsigned NOT NULL,
  `part_type` bigint unsigned NOT NULL,
  `number_of_parts` bigint unsigned NOT NULL,
  PRIMARY KEY (`sets_inventory_id`),
  KEY `set_number` (`set_number`),
  KEY `part_type` (`part_type`),
  CONSTRAINT `sets_inventory_ibfk_1` FOREIGN KEY (`set_number`) REFERENCES `sets_list` (`set_lego_number`),
  CONSTRAINT `sets_inventory_ibfk_2` FOREIGN KEY (`part_type`) REFERENCES `part_types` (`part_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sets_inventory`
--

LOCK TABLES `sets_inventory` WRITE;
/*!40000 ALTER TABLE `sets_inventory` DISABLE KEYS */;
INSERT INTO `sets_inventory` VALUES (1,604,1,2),(2,604,2,1),(3,604,3,1),(4,604,4,1),(5,604,5,1),(6,604,6,1),(7,604,7,3),(8,604,8,1),(9,604,9,2),(10,6602,1,2),(11,6602,10,2),(12,6602,11,4),(13,6602,19,2),(14,6602,20,1),(15,6602,12,2),(16,6602,21,1),(17,6602,3,1),(18,6602,14,1),(19,606,1,2),(20,606,10,1),(21,606,11,3),(22,606,2,1),(23,606,12,2),(24,606,13,1),(25,606,3,1),(26,606,14,1),(27,606,15,2),(28,606,16,1),(29,606,17,1),(30,606,18,1),(31,1828,22,2),(32,1828,23,1),(33,1828,15,2),(34,1828,24,1),(35,1828,25,1);
/*!40000 ALTER TABLE `sets_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sets_list`
--

DROP TABLE IF EXISTS `sets_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sets_list` (
  `set_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `set_lego_number` bigint unsigned NOT NULL,
  `set_system` bigint unsigned NOT NULL,
  `set_series` bigint unsigned NOT NULL,
  `set_name` varchar(150) DEFAULT NULL,
  `number_of_minifigures` bigint unsigned DEFAULT NULL,
  `number_of_parts` bigint unsigned NOT NULL,
  `set_price` bigint unsigned DEFAULT NULL,
  `release_year` year DEFAULT NULL,
  PRIMARY KEY (`set_id`),
  UNIQUE KEY `set_lego_number` (`set_lego_number`),
  KEY `set_number` (`set_lego_number`),
  KEY `set_system` (`set_system`),
  KEY `set_series` (`set_series`),
  CONSTRAINT `sets_list_ibfk_1` FOREIGN KEY (`set_system`) REFERENCES `lego_systems` (`lego_system_id`),
  CONSTRAINT `sets_list_ibfk_2` FOREIGN KEY (`set_series`) REFERENCES `lego_series` (`series_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sets_list`
--

LOCK TABLES `sets_list` WRITE;
/*!40000 ALTER TABLE `sets_list` DISABLE KEYS */;
INSERT INTO `sets_list` VALUES (1,604,2,1,'Shell Service Car',1,13,12,1978),(2,6602,2,2,'Fire Unit',1,16,20,1981),(3,606,2,3,'Ambulance',1,17,15,1978),(4,1828,2,4,'Sheep',0,7,5,1995);
/*!40000 ALTER TABLE `sets_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'lego_base'
--
/*!50003 DROP PROCEDURE IF EXISTS `count_all_parts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `count_all_parts`()
BEGIN
		SELECT pt.part_name AS 'Part', c.color, SUM(si.number_of_parts) AS 'Total Qty.' 
			FROM part_types pt 
				JOIN colors c ON pt.part_color  = c.color_id
				JOIN sets_inventory si ON pt.part_type_id = si.part_type
			GROUP BY pt.part_type_id
			ORDER BY SUM(si.number_of_parts) desc
		; 
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-02 20:52:23
