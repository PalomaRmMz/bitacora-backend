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
-- Table structure for table `cat_estados`
--

DROP TABLE IF EXISTS `cat_estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_estados` (
  `id_estado` varchar(7) NOT NULL,
  `nombre_estado` varchar(100) NOT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_estados`
--

LOCK TABLES `cat_estados` WRITE;
/*!40000 ALTER TABLE `cat_estados` DISABLE KEYS */;
INSERT INTO `cat_estados` VALUES ('CE00001','Aguascalientes'),('CE00002','Baja California'),('CE00003','Baja California Sur'),('CE00004','Campeche'),('CE00005','Chiapas'),('CE00006','Chihuahua'),('CE00007','Coahuila'),('CE00008','Colima'),('CE00009','Durango'),('CE00010','Guanajuato'),('CE00011','Guerrero'),('CE00012','Hidalgo'),('CE00013','Jalisco'),('CE00014','Mexico City'),('CE00015','Mexico State'),('CE00016','Michoacán'),('CE00017','Morelos'),('CE00018','Nayarit'),('CE00019','Nuevo León'),('CE00020','Oaxaca'),('CE00021','Puebla'),('CE00022','Querétaro'),('CE00023','Quintana Roo'),('CE00024','San Luis Potosí'),('CE00025','Sinaloa'),('CE00026','Sonora'),('CE00027','Tabasco'),('CE00028','Tamaulipas'),('CE00029','Tlaxcala'),('CE00030','Veracruz'),('CE00031','Yucatán'),('CE00032','Zacatecas');
/*!40000 ALTER TABLE `cat_estados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-27 11:38:27
