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
-- Table structure for table `surveyanswer`
--

DROP TABLE IF EXISTS `surveyanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyanswer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `responseId` int NOT NULL,
  `questionId` int NOT NULL,
  `optionId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `responseId` (`responseId`),
  KEY `questionId` (`questionId`),
  KEY `optionId` (`optionId`),
  CONSTRAINT `surveyanswer_ibfk_1` FOREIGN KEY (`responseId`) REFERENCES `surveyresponse` (`id`) ON DELETE CASCADE,
  CONSTRAINT `surveyanswer_ibfk_2` FOREIGN KEY (`questionId`) REFERENCES `surveyquestion` (`id`) ON DELETE CASCADE,
  CONSTRAINT `surveyanswer_ibfk_3` FOREIGN KEY (`optionId`) REFERENCES `surveyoption` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyanswer`
--

LOCK TABLES `surveyanswer` WRITE;
/*!40000 ALTER TABLE `surveyanswer` DISABLE KEYS */;
INSERT INTO `surveyanswer` VALUES (1,1,25,30),(2,1,26,32),(3,1,27,37),(5,2,26,32),(8,2,26,31),(9,5,23,23),(10,1,26,31),(11,1,26,33),(12,1,27,38);
/*!40000 ALTER TABLE `surveyanswer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-16 14:57:27
