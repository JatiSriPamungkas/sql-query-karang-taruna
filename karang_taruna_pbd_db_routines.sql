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
-- Temporary view structure for view `v_approved_members`
--

DROP TABLE IF EXISTS `v_approved_members`;
/*!50001 DROP VIEW IF EXISTS `v_approved_members`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_approved_members` AS SELECT 
 1 AS `id_member`,
 1 AS `email`,
 1 AS `telephone`,
 1 AS `fullname`,
 1 AS `nickname`,
 1 AS `gender`,
 1 AS `date_of_birth`,
 1 AS `id_location_detail`,
 1 AS `request_date`,
 1 AS `is_active`,
 1 AS `status`,
 1 AS `status_action_date`,
 1 AS `creation_date`,
 1 AS `created_by`,
 1 AS `last_update_date`,
 1 AS `last_update_by`,
 1 AS `location_name`,
 1 AS `location_coordinates`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_contact_arya`
--

DROP TABLE IF EXISTS `v_contact_arya`;
/*!50001 DROP VIEW IF EXISTS `v_contact_arya`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_contact_arya` AS SELECT 
 1 AS `fullname`,
 1 AS `email`,
 1 AS `telephone`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_member_contact`
--

DROP TABLE IF EXISTS `v_member_contact`;
/*!50001 DROP VIEW IF EXISTS `v_member_contact`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_member_contact` AS SELECT 
 1 AS `fullname`,
 1 AS `email`,
 1 AS `telephone`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_approved_members`
--

/*!50001 DROP VIEW IF EXISTS `v_approved_members`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_approved_members` AS select `m`.`id_member` AS `id_member`,`m`.`email` AS `email`,`m`.`telephone` AS `telephone`,`m`.`fullname` AS `fullname`,`m`.`nickname` AS `nickname`,`m`.`gender` AS `gender`,`m`.`date_of_birth` AS `date_of_birth`,`m`.`id_location_detail` AS `id_location_detail`,`m`.`request_date` AS `request_date`,`m`.`is_active` AS `is_active`,`m`.`status` AS `status`,`m`.`status_action_date` AS `status_action_date`,`m`.`creation_date` AS `creation_date`,`m`.`created_by` AS `created_by`,`m`.`last_update_date` AS `last_update_date`,`m`.`last_update_by` AS `last_update_by`,`l`.`location_name` AS `location_name`,`ld`.`coordinates` AS `location_coordinates` from ((`members` `m` left join `location_details` `ld` on((`ld`.`id_location_detail` = `m`.`id_location_detail`))) left join `locations` `l` on((`l`.`id_location` = `ld`.`id_location`))) where (`m`.`status` = 'approved') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_contact_arya`
--

/*!50001 DROP VIEW IF EXISTS `v_contact_arya`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_contact_arya` AS select `v_member_contact`.`fullname` AS `fullname`,`v_member_contact`.`email` AS `email`,`v_member_contact`.`telephone` AS `telephone` from `v_member_contact` where (`v_member_contact`.`fullname` like '%Arya%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_member_contact`
--

/*!50001 DROP VIEW IF EXISTS `v_member_contact`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_member_contact` AS select `members`.`fullname` AS `fullname`,`members`.`email` AS `email`,`members`.`telephone` AS `telephone` from `members` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-01 16:34:39
