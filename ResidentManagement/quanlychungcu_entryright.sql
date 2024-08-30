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
-- Table structure for table `entryright`
--

DROP TABLE IF EXISTS `entryright`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entryright` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` varchar(50) DEFAULT NULL,
  `relativeId` int DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `relativeId` (`relativeId`),
  CONSTRAINT `entryright_ibfk_1` FOREIGN KEY (`relativeId`) REFERENCES `relative` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entryright`
--

LOCK TABLES `entryright` WRITE;
/*!40000 ALTER TABLE `entryright` DISABLE KEYS */;
INSERT INTO `entryright` VALUES (1,'Canceled',3,'2024-05-14 17:03:06','2024-05-27 14:59:40'),(3,'Pending',3,'2024-06-13 11:27:00',NULL),(4,'Pending',3,'2024-06-14 23:02:07',NULL),(5,'Pending',3,'2024-06-14 23:04:04',NULL),(6,'Pending',3,'2024-06-15 00:22:26',NULL),(7,'Pending',8,'2024-06-15 00:23:10',NULL),(8,'Pending',4,'2024-06-15 00:24:29',NULL),(9,'Pending',4,'2024-06-15 00:26:10',NULL),(10,'Pending',8,'2024-06-15 00:28:30',NULL),(11,'Pending',8,'2024-06-15 00:28:47',NULL),(12,'Pending',8,'2024-06-15 00:29:17',NULL),(13,'Pending',3,'2024-06-15 00:30:09',NULL);
/*!40000 ALTER TABLE `entryright` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-16 14:57:30
