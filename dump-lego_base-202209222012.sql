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
  `second_color` varchar(50) DEFAULT NULL COMMENT 'Additional part color',
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
INSERT INTO `colors` VALUES (1,'white',_binary '\0',_binary '\0',NULL),(2,'black',_binary '\0',_binary '\0',NULL),(3,'red',_binary '\0',_binary '\0',NULL),(4,'yellow',_binary '\0',_binary '\0',NULL),(5,'blue',_binary '\0',_binary '\0',NULL),(6,'green',_binary '\0',_binary '\0',NULL),(7,'orange',_binary '\0',_binary '\0',NULL),(8,'brown',_binary '\0',_binary '\0',NULL),(9,'grey',_binary '\0',_binary '\0','red'),(10,'clear',_binary '',_binary '\0',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connectivities`
--

LOCK TABLES `connectivities` WRITE;
/*!40000 ALTER TABLE `connectivities` DISABLE KEYS */;
INSERT INTO `connectivities` VALUES (1,16,0,0,0,16,0,0,0),(2,2,0,0,0,4,0,0,0),(3,3,0,0,0,3,0,0,0),(4,8,0,0,0,8,0,0,0),(5,2,0,0,0,2,0,0,0),(6,6,0,0,0,6,0,0,0),(7,4,0,0,0,4,0,0,0),(8,4,0,2,0,4,0,0,0);
/*!40000 ALTER TABLE `connectivities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `image_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `part_type` bigint unsigned NOT NULL,
  `image` blob,
  PRIMARY KEY (`image_id`),
  KEY `part_type` (`part_type`),
  CONSTRAINT `images_ibfk_1` FOREIGN KEY (`part_type`) REFERENCES `part_types` (`part_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,1,NULL),(2,2,NULL),(3,3,NULL),(4,4,NULL),(5,5,NULL),(6,6,NULL),(7,7,NULL),(8,8,NULL),(9,9,NULL);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
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
  `part_width` bigint DEFAULT NULL,
  `part_depth` bigint DEFAULT NULL,
  PRIMARY KEY (`part_type_id`),
  KEY `part_categorie` (`part_categorie`),
  KEY `part_color` (`part_color`),
  KEY `part_connectivitie` (`part_connectivitie`),
  CONSTRAINT `part_types_ibfk_1` FOREIGN KEY (`part_categorie`) REFERENCES `categories` (`categorie_id`),
  CONSTRAINT `part_types_ibfk_2` FOREIGN KEY (`part_color`) REFERENCES `colors` (`color_id`),
  CONSTRAINT `part_types_ibfk_3` FOREIGN KEY (`part_connectivitie`) REFERENCES `connectivities` (`connectivitie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_types`
--

LOCK TABLES `part_types` WRITE;
/*!40000 ALTER TABLE `part_types` DISABLE KEYS */;
INSERT INTO `part_types` VALUES (1,'Gray Plate 2x4 with Red Wheels',9,9,8,1,4,2),(2,'Red Plate 2x8',4,3,1,NULL,8,2),(3,'Trans-Clear Slope 45 2x2',10,10,2,1,2,2),(4,'White Brick 2x3',1,1,6,1,3,2),(5,'White Plate 2x4',4,1,4,NULL,4,2),(6,'Yellow Plate 1x2',4,4,5,NULL,2,1),(7,'Yellow Plate 2x3',4,4,6,NULL,3,2),(8,'Yellow Plate 2x8',4,4,1,NULL,8,2),(9,'Yellow Mudguard 2x4',11,4,7,NULL,4,2);
/*!40000 ALTER TABLE `part_types` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sets_inventory`
--

LOCK TABLES `sets_inventory` WRITE;
/*!40000 ALTER TABLE `sets_inventory` DISABLE KEYS */;
INSERT INTO `sets_inventory` VALUES (1,604,1,2),(2,604,2,1),(3,604,3,1),(4,604,4,1),(5,604,5,1),(6,604,6,1),(7,604,7,3),(8,604,8,1),(9,604,9,2);
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
  `set_name` varchar(150) DEFAULT NULL,
  `number_of_parts` bigint DEFAULT NULL,
  `release_year` year DEFAULT NULL,
  PRIMARY KEY (`set_id`),
  UNIQUE KEY `set_lego_number` (`set_lego_number`),
  KEY `set_number` (`set_lego_number`),
  KEY `set_system` (`set_system`),
  CONSTRAINT `sets_list_ibfk_1` FOREIGN KEY (`set_system`) REFERENCES `lego_systems` (`lego_system_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sets_list`
--

LOCK TABLES `sets_list` WRITE;
/*!40000 ALTER TABLE `sets_list` DISABLE KEYS */;
INSERT INTO `sets_list` VALUES (1,604,2,'Shell Service Car',14,1978);
/*!40000 ALTER TABLE `sets_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'lego_base'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-22 20:12:13
