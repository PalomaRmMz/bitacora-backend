-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bitacora
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `cat_codigos_postales`
--

DROP TABLE IF EXISTS `cat_codigos_postales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_codigos_postales` (
  `id_cp` int NOT NULL AUTO_INCREMENT,
  `codigo_postal` varchar(5) NOT NULL,
  PRIMARY KEY (`id_cp`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_codigos_postales`
--

LOCK TABLES `cat_codigos_postales` WRITE;
/*!40000 ALTER TABLE `cat_codigos_postales` DISABLE KEYS */;
INSERT INTO `cat_codigos_postales` VALUES (1,'01000'),(2,'02000'),(3,'03000'),(4,'04000'),(5,'05000'),(6,'06000'),(7,'07000'),(8,'08000'),(9,'09000'),(10,'10000'),(11,'11000'),(12,'12000'),(13,'13000'),(14,'14000'),(15,'15000'),(16,'16000'),(17,'17000'),(18,'18000'),(19,'19000'),(20,'20000'),(21,'21000'),(22,'22000'),(23,'23000'),(24,'24000'),(25,'25000'),(26,'26000'),(27,'27000'),(28,'28000'),(29,'29000'),(30,'30000'),(31,'31000'),(32,'32000'),(33,'33000'),(34,'34000'),(35,'35000'),(36,'36000'),(37,'37000'),(38,'38000'),(39,'39000'),(40,'40000'),(41,'41000'),(42,'42000'),(43,'43000'),(44,'44000'),(45,'45000'),(46,'46000'),(47,'47000'),(48,'48000'),(49,'49000'),(50,'50000');
/*!40000 ALTER TABLE `cat_codigos_postales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-26 11:58:49
