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
  `id_colonia` varchar(7) NOT NULL,
  `nombre_colonias` varchar(100) NOT NULL,
  PRIMARY KEY (`id_colonia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_colonias`
--

LOCK TABLES `cat_colonias` WRITE;
/*!40000 ALTER TABLE `cat_colonias` DISABLE KEYS */;
INSERT INTO `cat_colonias` VALUES ('CC01234','Colonia J'),('CC02468','Colonia T'),('CC02479','Colonia AD'),('CC02480','Colonia AN'),('CC02491','Colonia AX'),('CC12345','Colonia A'),('CC13502','Colonia AO'),('CC13579','Colonia K'),('CC13580','Colonia U'),('CC13591','Colonia AE'),('CC23456','Colonia B'),('CC24602','Colonia AF'),('CC24613','Colonia AP'),('CC24680','Colonia L'),('CC24691','Colonia V'),('CC34567','Colonia C'),('CC35702','Colonia W'),('CC35713','Colonia AG'),('CC35724','Colonia AQ'),('CC35791','Colonia M'),('CC45678','Colonia D'),('CC46802','Colonia N'),('CC46813','Colonia X'),('CC46824','Colonia AH'),('CC46835','Colonia AR'),('CC56789','Colonia E'),('CC57913','Colonia O'),('CC57924','Colonia Y'),('CC57935','Colonia AI'),('CC57946','Colonia AS'),('CC67890','Colonia F'),('CC68024','Colonia P'),('CC68035','Colonia Z'),('CC68046','Colonia AJ'),('CC68057','Colonia AT'),('CC78901','Colonia G'),('CC79135','Colonia Q'),('CC79146','Colonia AA'),('CC79157','Colonia AK'),('CC79168','Colonia AU'),('CC80246','Colonia R'),('CC80257','Colonia AB'),('CC80268','Colonia AL'),('CC80279','Colonia AV'),('CC89012','Colonia H'),('CC90123','Colonia I'),('CC91357','Colonia S'),('CC91368','Colonia AC'),('CC91379','Colonia AM'),('CC91380','Colonia AW');
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

-- Dump completed on 2025-01-27 11:38:27
