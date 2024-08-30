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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `roleName` varchar(50) DEFAULT NULL,
  `room` int DEFAULT NULL,
  `locker` int DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `room` (`room`),
  KEY `locker` (`locker`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`room`) REFERENCES `room` (`id`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`locker`) REFERENCES `locker` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user01','$2a$10$k3yJsBEiDmL8OwTnUNeH8eI576cAufRfLBQ/.fJ.htm1pKEgDvaZG','hduy4345@gmail.com','1326147865','https://res.cloudinary.com/dpc4ckhqs/image/upload/v1718392849/quanlychungcu/n1p1w2g3mpjgu2q7h8mo.jpg','Active','ROLE_CUSTOMER',1,1,'Duy','Hoàng'),(2,'user02','$2a$10$IRl9ki3ug8NBL.CZCjKZWel7RVRaVA3W.PkopztIO61bwmtW36pE.','hdudy4345@gmail.com','3533634634','https://res.cloudinary.com/dpc4ckhqs/image/upload/v1715667432/quanlychungcu/x9tqql1z2rl9rzm2lozm.jpg','Active','ROLE_CUSTOMER',NULL,NULL,'Vinh','Tô'),(3,'user03','$2a$10$U2nlmxCj06ltImsPFWWdpegcvSjQ3Cg8wb9Sn6K8tysxRl6gNONs6','hduy45@gmail.com','35336346344',NULL,'Block','ROLE_CUSTOMER',NULL,NULL,'Lâm','Lê'),(4,'admin123','$2a$10$64fdQZTfaAcmrIGCM1Z5TOAUVWi9JnpMDrhpSxHrioHMTpeRePcqy','admin@gmail.com','0123456789',NULL,'Active','ROLE_ADMIN',NULL,NULL,'Duy','Hoàng'),(5,'vinhto','$2a$10$65XzJ1aqxseLoj3abO9MVe6Urtk5wQLxeVrcmXwo5jZmDsfbAuuxy','vinhtanto300@gmail.com','13261427126','https://res.cloudinary.com/dpc4ckhqs/image/upload/v1718095865/quanlychungcu/ieyzkyldylxlf05cayij.jpg','Active','ROLE_CUSTOMER',3,3,'Vịnh ','Nguyễn');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
