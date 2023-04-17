CREATE DATABASE  IF NOT EXISTS `samdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `samdb`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: samdb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `u_id` varchar(20) NOT NULL,
  `u_username` varchar(45) DEFAULT NULL,
  `u_password` varchar(45) DEFAULT NULL,
  `u_firstname` varchar(45) DEFAULT NULL,
  `u_lastname` varchar(45) DEFAULT NULL,
  `u_mobile_no` varchar(10) DEFAULT NULL,
  `u_created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `u_modified_at` date DEFAULT NULL,
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_mobile_no_UNIQUE` (`u_mobile_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','samarth1302','1234','Samarth','Chauhan','1234567890','2022-04-25 10:32:33',NULL),('10','yp12','3456','Yagnesh','Patel','2347637832','2022-04-25 10:51:11',NULL),('11','rs67','097','Ram','Shah','8963268653','2022-04-25 10:51:11',NULL),('12','ssh98','789','Shyam','Shah','3298234543','2022-04-25 10:51:11',NULL),('13','sp98','134','Sita','Patel','9233891244','2022-04-25 10:51:11',NULL),('14','gp99','5678','Gita','Patel','1238942323','2022-04-25 10:51:11',NULL),('15','sp100','54y','Smita','Pawar','4329834874','2022-04-25 10:51:11',NULL),('16','raju76','232','Raju','Patel','9713243925','2022-04-30 11:19:43',NULL),('17','abc','324','Akbar','Khan','4389589454','2022-05-04 14:12:30',NULL),('2','vatsaldp','4321','Vatsal','Patel','9876543210','2022-04-25 10:37:44',NULL),('3','digantp','3210','Digant','Patel','9876534210','2022-04-25 10:37:44',NULL),('4','vatsals','4567','Vatsal','Shah','8769543210','2022-04-25 10:37:44',NULL),('5','yugp72','8766','Yug','Patel','3428975632','2022-04-25 10:51:11',NULL),('6','ss22','345','Spandan','Shah','8734798493','2022-04-25 10:51:11',NULL),('7','jj12','768','Jevin','Jivani','9862425324','2022-04-25 10:51:11',NULL),('8','rs34','564','Ronit','Shah','9832146231','2022-04-25 10:51:11',NULL),('9','ss09','345','Shrey','Somani','2896314534','2022-04-25 10:51:11',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `users_AFTER_INSERT` AFTER INSERT ON `users` FOR EACH ROW BEGIN
insert into cart(c_user_id) values (new.u_id);
END */;;
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

-- Dump completed on 2022-05-04 14:53:58
