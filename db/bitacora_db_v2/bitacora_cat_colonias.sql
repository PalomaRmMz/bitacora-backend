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
-- Table structure for table `cat_colonias`
--

DROP TABLE IF EXISTS `cat_colonias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_colonias` (
  `id_colonia` int NOT NULL AUTO_INCREMENT,
  `nombre_colonias` varchar(100) NOT NULL,
  PRIMARY KEY (`id_colonia`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_colonias`
--

LOCK TABLES `cat_colonias` WRITE;
/*!40000 ALTER TABLE `cat_colonias` DISABLE KEYS */;
INSERT INTO `cat_colonias` VALUES (1,'San Ángel'),(2,'Coyoacán Centro'),(3,'La Condesa'),(4,'Polanco'),(5,'Santa Fe'),(6,'Tlalpan'),(7,'Coapa'),(8,'Roma Norte'),(9,'Roma Sur'),(10,'Del Valle'),(11,'Nápoles'),(12,'Narvarte'),(13,'Juárez'),(14,'Mixcoac'),(15,'Tacuba'),(16,'San Pedro'),(17,'San Isidro'),(18,'Lomas de Chapultepec'),(19,'Bosques de las Lomas'),(20,'San Jerónimo'),(21,'Reforma'),(22,'Guerrero'),(23,'Tacubaya'),(24,'Escandón'),(25,'Anáhuac'),(26,'Obrera'),(27,'Portales'),(28,'Vista Hermosa'),(29,'El Rosedal'),(30,'Xochimilco'),(31,'Azcapotzalco Centro'),(32,'Tepeyac'),(33,'Lindavista'),(34,'Industrial'),(35,'Tlacoquemecatl'),(36,'Zapotitlán'),(37,'El Rosario'),(38,'Euzkadi'),(39,'Clavería'),(40,'La Pastora'),(41,'Acatitla'),(42,'Iztapalapa Centro'),(43,'Santa Martha Acatitla'),(44,'La Nopalera'),(45,'Chalco'),(46,'Nezahualcóyotl Centro'),(47,'Texcoco Centro'),(48,'Tultitlán'),(49,'Valle Dorado'),(50,'Atizapán');
/*!40000 ALTER TABLE `cat_colonias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-26 11:58:48
