-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: quanlychungcu
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `dueDate` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `room` int DEFAULT NULL,
  `invoiceType` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `room` (`room`),
  KEY `invoiceType` (`invoiceType`),
  CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`room`) REFERENCES `room` (`id`),
  CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`invoiceType`) REFERENCES `invoicetype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (1,'',10000.00,'2024-05-19 00:00:00','Paid','2024-05-14 14:00:00','2024-05-14 19:09:33',1,3),(2,'',25000.00,'2024-05-17 23:59:00','Unpaid','2024-05-14 14:00:01','2024-05-14 18:40:16',1,3),(3,'...',12000.00,'2024-05-18 23:59:00','Unpaid','2024-05-14 18:11:41','2024-05-14 18:26:13',1,1),(4,'Accelerate',15000.00,'2024-05-16 23:59:00','Paid','2024-05-14 18:30:45','2024-05-21 14:35:33',1,1),(5,'',20000.00,'2024-05-19 23:59:00','Unpaid','2024-05-14 18:47:00',NULL,1,3),(6,'',25000.00,'2024-05-19 23:59:00','Unpaid','2024-05-14 18:47:00',NULL,2,3),(7,'Sáº¯p tá»i háº¡n...',12000.00,'2024-05-30 23:59:00','Unpaid','2024-05-27 15:02:45',NULL,2,5);
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-16 14:57:29
