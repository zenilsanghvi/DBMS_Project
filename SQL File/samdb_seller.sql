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
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller` (
  `s_id` varchar(20) NOT NULL,
  `s_name` varchar(45) DEFAULT NULL,
  `s_shopno` varchar(45) DEFAULT NULL,
  `s_add1` varchar(45) DEFAULT NULL,
  `s_add2` varchar(45) DEFAULT NULL,
  `s_city` varchar(45) DEFAULT NULL,
  `s_pincode` int DEFAULT NULL,
  `s_mobile_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES ('s1','Adidas','13','GC Complex','Satellite','Ahmedabad',380051,'6723747298'),('s10','Hrx','18','Himalaya Mall','Palanpur','Surat',456333,'4875333333'),('s2','Levis','67','SB Plaza','Paldi','Ahmedabad',380051,'2464221242'),('s3','Lee Cooper','D-10','Haven Plaza','MG road','Mumbai',360046,'3489622898'),('s4','UCB','198','CT Complex','SP ring road','Delhi',350078,'8947895427'),('s5','Nike','12','Alpha Mall','Vastrapur','Ahmedabad',380006,'8437598437'),('s6','Puma','14','VR Mall','Dumas Road','Surat',393010,'4756573333'),('s7','Skechers','15','Rahulraj Mall','Parle Point','Surat',329000,'3495749565'),('s8','Being Human','16','Valentine Mall','Kargil Chowk','Surat',235091,'3485794857'),('s9','Wrogn','17','Central Mall','Pal','Surat',348322,'3497564857');
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-04 14:53:58
