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
-- Table structure for table `surveyquestion`
--

DROP TABLE IF EXISTS `surveyquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `surveyquestion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `surveyId` int NOT NULL,
  `questionText` text NOT NULL,
  `questionType` enum('Multiple choice','Single choice','Rating') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `surveyId` (`surveyId`),
  CONSTRAINT `surveyquestion_ibfk_1` FOREIGN KEY (`surveyId`) REFERENCES `survey` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestion`
--

LOCK TABLES `surveyquestion` WRITE;
/*!40000 ALTER TABLE `surveyquestion` DISABLE KEYS */;
INSERT INTO `surveyquestion` VALUES (23,22,'Q1','Single choice'),(24,22,'Q2','Rating'),(25,23,'Q1','Multiple choice'),(26,23,'Q2','Single choice'),(27,23,'Q3','Rating'),(28,23,'Q4','Multiple choice'),(29,24,'Question 1','Multiple choice'),(30,24,'Question 2','Single choice'),(31,24,'Question 3','Rating'),(32,25,'eqrqrtwet','Single choice'),(33,25,'rwete','Multiple choice'),(34,26,'queasio ','Single choice'),(35,27,'queasio ','Single choice'),(36,28,'fafagas','Single choice'),(37,29,'fafagas','Single choice');
/*!40000 ALTER TABLE `surveyquestion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-16 14:57:28
