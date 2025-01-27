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
-- Table structure for table `cat_municipios`
--

DROP TABLE IF EXISTS `cat_municipios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_municipios` (
  `id_municipio` int NOT NULL AUTO_INCREMENT,
  `nombre_municipios` varchar(100) NOT NULL,
  PRIMARY KEY (`id_municipio`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_municipios`
--

LOCK TABLES `cat_municipios` WRITE;
/*!40000 ALTER TABLE `cat_municipios` DISABLE KEYS */;
INSERT INTO `cat_municipios` VALUES (1,'Aguascalientes'),(2,'Mexicali'),(3,'La Paz'),(4,'Campeche'),(5,'Saltillo'),(6,'Colima'),(7,'Tuxtla Gutiérrez'),(8,'Chihuahua'),(9,'Durango'),(10,'Toluca'),(11,'Guanajuato'),(12,'Chilpancingo'),(13,'Pachuca'),(14,'Guadalajara'),(15,'Morelia'),(16,'Cuernavaca'),(17,'Tepic'),(18,'Monterrey'),(19,'Oaxaca de Juárez'),(20,'Puebla'),(21,'Querétaro'),(22,'Chetumal'),(23,'San Luis Potosí'),(24,'Culiacán'),(25,'Hermosillo'),(26,'Villahermosa'),(27,'Ciudad Victoria'),(28,'Tlaxcala'),(29,'Xalapa'),(30,'Mérida'),(31,'Zacatecas'),(32,'Tijuana'),(33,'Cancún'),(34,'Irapuato'),(35,'León'),(36,'Matamoros'),(37,'Mazatlán'),(38,'Nuevo Laredo'),(39,'Puerto Vallarta'),(40,'Reynosa'),(41,'San Cristóbal'),(42,'Tapachula'),(43,'Tehuacán'),(44,'Tequisquiapan'),(45,'Tepatitlán'),(46,'Uruapan'),(47,'Veracruz'),(48,'Zamora'),(49,'Zihuatanejo'),(50,'Nogales');
/*!40000 ALTER TABLE `cat_municipios` ENABLE KEYS */;
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
