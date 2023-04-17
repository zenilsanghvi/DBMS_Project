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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `p_id` varchar(20) NOT NULL,
  `p_name` varchar(45) DEFAULT NULL,
  `p_desc` varchar(45) DEFAULT NULL,
  `p_category_id` varchar(45) DEFAULT NULL,
  `p_seller_id` varchar(45) DEFAULT NULL,
  `p_price` float DEFAULT NULL,
  `p_discount_id` varchar(45) DEFAULT 'disc0',
  `p_qty` int DEFAULT NULL,
  PRIMARY KEY (`p_id`),
  KEY `p_seller_id_idx` (`p_seller_id`),
  KEY `p_category_id_idx` (`p_category_id`),
  KEY `p_discount_id_idx` (`p_discount_id`),
  CONSTRAINT `p_category_id` FOREIGN KEY (`p_category_id`) REFERENCES `product_category` (`pc_id`),
  CONSTRAINT `p_discount_id` FOREIGN KEY (`p_discount_id`) REFERENCES `discount` (`d_id`),
  CONSTRAINT `p_seller_id` FOREIGN KEY (`p_seller_id`) REFERENCES `seller` (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('p1','Black Pant','Size:40','pc-1','s2',2199,'disc2',45),('p10','White Swoosh Cap','One Size','pc-8','s5',1099,'disc0',120),('p11','Olive Sweater','Size: S','pc-2','s7',1399,'disc3',35),('p12','White Club C Sneakers','Size: 10','pc-4','s1',6999,'disc0',15),('p13','Cream Chinos','Size:42','pc-1','s2',1299,'disc0',60),('p14','Socks x3','One Size','pc-8','s6',999,'disc0',60),('p15','Printed T-shirt','Size: L','pc-6','s8',899,'disc0',200),('p16','Scarf','Red,Blue','pc-8','s2',305,'disc0',7),('p2','Maroon Hoodie','Size: L','pc-2','s4',1799,'disc1',51),('p3','Grey Trousers','Size:38','pc-1','s3',2089,'disc3',29),('p4','Red striped shirt','Size: M','pc-3','s10',1499,'disc0',50),('p5','Nike pegasus shoes','Size: 9','pc-4','s5',3499,'disc0',12),('p6','Wayfarer classic Sunglasses','One Size','pc-5','s9',1799,'disc2',3),('p7','Blue Tshirt','Size: XL','pc-6','s6',1599,'disc0',30),('p8','Brown Leather Watch','One Size','pc-7','s3',4999,'disc1',18),('p9','Black Mask','One Size','pc-8','s1',299,'disc0',100);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-04 14:54:00
