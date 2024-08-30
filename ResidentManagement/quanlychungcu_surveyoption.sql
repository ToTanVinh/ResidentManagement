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
-- Table structure for table `surveyoption`
--

DROP TABLE IF EXISTS `surveyoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyoption` (
  `id` int NOT NULL AUTO_INCREMENT,
  `questionId` int NOT NULL,
  `optionText` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `questionId` (`questionId`),
  CONSTRAINT `surveyoption_ibfk_1` FOREIGN KEY (`questionId`) REFERENCES `surveyquestion` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyoption`
--

LOCK TABLES `surveyoption` WRITE;
/*!40000 ALTER TABLE `surveyoption` DISABLE KEYS */;
INSERT INTO `surveyoption` VALUES (22,23,'Option 1'),(23,23,'Option 2'),(24,24,'1'),(25,24,'2'),(26,24,'3'),(27,24,'4'),(28,24,'5'),(29,25,'Option 1'),(30,25,'Option 2'),(31,26,'Option 1'),(32,26,'Option 2'),(33,26,'Option 3'),(34,27,'1'),(35,27,'2'),(36,27,'3'),(37,27,'4'),(38,27,'5'),(39,28,'Option 1'),(40,28,'Option 2'),(41,29,'Option 1 dd '),(42,29,'Option 2dd'),(43,30,'Option 1'),(44,30,'Option 2'),(45,30,'Option 3'),(46,31,'1'),(47,31,'2'),(48,31,'3'),(49,31,'4'),(50,31,'5'),(51,32,'Option 1rwerre'),(52,33,'Option 1'),(53,34,'Option 11'),(54,35,'Option 11'),(55,36,'Option 1'),(56,37,'Option 1');
/*!40000 ALTER TABLE `surveyoption` ENABLE KEYS */;
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
