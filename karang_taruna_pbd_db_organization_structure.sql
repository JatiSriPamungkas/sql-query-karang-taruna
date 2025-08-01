-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: karang_taruna_pbd_db
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `organization_structure`
--

DROP TABLE IF EXISTS `organization_structure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization_structure` (
  `id_organization_structure` int NOT NULL AUTO_INCREMENT,
  `id_organization_period` int NOT NULL,
  `id_organization_position` int NOT NULL,
  `id_member` int NOT NULL,
  `creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `last_update_date` datetime DEFAULT NULL,
  `last_update_by` int DEFAULT NULL,
  PRIMARY KEY (`id_organization_structure`),
  KEY `fk_structure_period` (`id_organization_period`),
  KEY `fk_structure_position` (`id_organization_position`),
  KEY `fk_structure_member` (`id_member`),
  CONSTRAINT `fk_structure_member` FOREIGN KEY (`id_member`) REFERENCES `members` (`id_member`),
  CONSTRAINT `fk_structure_period` FOREIGN KEY (`id_organization_period`) REFERENCES `organization_period` (`id_organization_period`),
  CONSTRAINT `fk_structure_position` FOREIGN KEY (`id_organization_position`) REFERENCES `organization_positions` (`id_organization_position`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_structure`
--

LOCK TABLES `organization_structure` WRITE;
/*!40000 ALTER TABLE `organization_structure` DISABLE KEYS */;
INSERT INTO `organization_structure` VALUES (1,1,1,1,'2025-07-28 23:53:11',NULL,NULL,NULL),(2,1,1,1,'2025-08-01 15:19:15',NULL,NULL,NULL),(3,1,2,2,'2025-08-01 15:19:15',NULL,NULL,NULL),(4,2,3,2,'2025-08-01 15:19:15',NULL,NULL,NULL),(5,2,1,4,'2025-08-01 15:19:15',NULL,NULL,NULL);
/*!40000 ALTER TABLE `organization_structure` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-01 16:34:39
