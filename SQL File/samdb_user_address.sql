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
-- Table structure for table `user_address`
--

DROP TABLE IF EXISTS `user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_address` (
  `ua_id` varchar(20) NOT NULL,
  `ua_user_id` varchar(45) DEFAULT NULL,
  `ua_house_no` varchar(45) DEFAULT NULL,
  `ua_add1` varchar(45) DEFAULT NULL,
  `ua_add2` varchar(45) DEFAULT NULL,
  `ua_city` varchar(45) DEFAULT NULL,
  `ua_pincode` int DEFAULT NULL,
  `ua_mobile_no` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ua_id`),
  KEY `ua_user_id_idx` (`ua_user_id`),
  CONSTRAINT `ua_user_id` FOREIGN KEY (`ua_user_id`) REFERENCES `users` (`u_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_address`
--

LOCK TABLES `user_address` WRITE;
/*!40000 ALTER TABLE `user_address` DISABLE KEYS */;
INSERT INTO `user_address` VALUES ('u1','1','23','Gala aria','MG road','Ahmedabad',380051,'+123456'),('u10','10','34','Rees Colony','Paldi','Ahmedabad',380051,'+456678'),('u11','11','A-53','Sky Heritage','Bopal','Ahmedabad',380051,'+985789'),('u12','12','23','Trish Appartments','Bopal','Ahmedabad',380051,'+238489'),('u13','13','B-102','Iscon Park','Satellite','Ahmedabad',380051,'+230949'),('u14','14','C-101','Gala Florence','Bopal','Ahmedabad',380051,'+213998'),('u15','15','D-601','Krupal Heritage','Makarba','Ahmedabad',380051,'+238312'),('u2','2','12','Sky Heights','SG road','Ahmedabad',380051,'+232342'),('u3','3','A-302','Richmond Grand','Vejalpur','Ahmedabad',380051,'+214822'),('u4','4','22','ABC colony','Paldi','Ahmedabad',380051,'+987244'),('u5','5','56','ABC colony','Paldi','Ahmedabad',380051,'+324984'),('u6','6','B-202','Aryan Heights','Satellite','Ahmedabad',380051,'+324931'),('u7','7','C-504','Iscon Park','Satellite ','Ahmedabad',380051,'+987424'),('u8','8','D-89','SD Residency','Sola','Ahmedabad',380051,'+238478'),('u9','9','J-101','Safal Parisar','Prahladnagar','Ahmedabad',380051,'+843947');
/*!40000 ALTER TABLE `user_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-04 14:53:59
