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
-- Table structure for table `monthly_meeting_lines`
--

DROP TABLE IF EXISTS `monthly_meeting_lines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monthly_meeting_lines` (
  `id_monthly_meeting_lines` int NOT NULL AUTO_INCREMENT,
  `id_monthly_meeting` int NOT NULL,
  `id_member` int NOT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `creation_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL,
  `last_update_date` datetime DEFAULT NULL,
  `last_update_by` int DEFAULT NULL,
  PRIMARY KEY (`id_monthly_meeting_lines`),
  KEY `fk_meeting_line_meeting` (`id_monthly_meeting`),
  KEY `fk_meeting_line_member` (`id_member`),
  KEY `fk_meeting_line_created_by` (`created_by`),
  KEY `fk_meeting_line_updated_by` (`last_update_by`),
  CONSTRAINT `fk_meeting_line_created_by` FOREIGN KEY (`created_by`) REFERENCES `organization_structure` (`id_organization_structure`),
  CONSTRAINT `fk_meeting_line_meeting` FOREIGN KEY (`id_monthly_meeting`) REFERENCES `monthly_meetings` (`id_monthly_meeting`),
  CONSTRAINT `fk_meeting_line_member` FOREIGN KEY (`id_member`) REFERENCES `members` (`id_member`),
  CONSTRAINT `fk_meeting_line_updated_by` FOREIGN KEY (`last_update_by`) REFERENCES `organization_structure` (`id_organization_structure`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_meeting_lines`
--

LOCK TABLES `monthly_meeting_lines` WRITE;
/*!40000 ALTER TABLE `monthly_meeting_lines` DISABLE KEYS */;
INSERT INTO `monthly_meeting_lines` VALUES (1,1,1,50000,'2025-07-28 23:56:50',1,NULL,NULL),(2,1,1,50000,'2025-08-01 15:19:49',1,NULL,NULL),(3,1,2,50000,'2025-08-01 15:19:49',1,NULL,NULL),(4,2,2,100000,'2025-08-01 15:19:49',3,NULL,NULL),(5,2,4,100000,'2025-08-01 15:19:49',3,NULL,NULL);
/*!40000 ALTER TABLE `monthly_meeting_lines` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-01 16:34:38
