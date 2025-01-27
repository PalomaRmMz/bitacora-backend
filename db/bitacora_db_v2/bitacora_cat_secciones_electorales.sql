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
-- Table structure for table `cat_secciones_electorales`
--

DROP TABLE IF EXISTS `cat_secciones_electorales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_secciones_electorales` (
  `id_seccion_electoral` int NOT NULL AUTO_INCREMENT,
  `nombre_seccion` char(4) NOT NULL,
  PRIMARY KEY (`id_seccion_electoral`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_secciones_electorales`
--

LOCK TABLES `cat_secciones_electorales` WRITE;
/*!40000 ALTER TABLE `cat_secciones_electorales` DISABLE KEYS */;
INSERT INTO `cat_secciones_electorales` VALUES (1,'1001'),(2,'1002'),(3,'1003'),(4,'1004'),(5,'1005'),(6,'1006'),(7,'1007'),(8,'1008'),(9,'1009'),(10,'1010'),(11,'1011'),(12,'1012'),(13,'1013'),(14,'1014'),(15,'1015'),(16,'1016'),(17,'1017'),(18,'1018'),(19,'1019'),(20,'1020'),(21,'1021'),(22,'1022'),(23,'1023'),(24,'1024'),(25,'1025'),(26,'1026'),(27,'1027'),(28,'1028'),(29,'1029'),(30,'1030'),(31,'1031'),(32,'1032'),(33,'1033'),(34,'1034'),(35,'1035'),(36,'1036'),(37,'1037'),(38,'1038'),(39,'1039'),(40,'1040'),(41,'1041'),(42,'1042'),(43,'1043'),(44,'1044'),(45,'1045'),(46,'1046'),(47,'1047'),(48,'1048'),(49,'1049'),(50,'1050');
/*!40000 ALTER TABLE `cat_secciones_electorales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-26 11:58:50
