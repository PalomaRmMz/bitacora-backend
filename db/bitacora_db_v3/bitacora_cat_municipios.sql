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
  `id_municipio` varchar(7) NOT NULL,
  `nombre_municipios` varchar(100) NOT NULL,
  PRIMARY KEY (`id_municipio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_municipios`
--

LOCK TABLES `cat_municipios` WRITE;
/*!40000 ALTER TABLE `cat_municipios` DISABLE KEYS */;
INSERT INTO `cat_municipios` VALUES ('CM01234','Municipio J'),('CM02468','Municipio T'),('CM02479','Municipio AD'),('CM02480','Municipio AN'),('CM02491','Municipio AX'),('CM12345','Municipio A'),('CM13502','Municipio AO'),('CM13579','Municipio K'),('CM13580','Municipio U'),('CM13591','Municipio AE'),('CM23456','Municipio B'),('CM24602','Municipio AF'),('CM24613','Municipio AP'),('CM24680','Municipio L'),('CM24691','Municipio V'),('CM34567','Municipio C'),('CM35702','Municipio W'),('CM35713','Municipio AG'),('CM35724','Municipio AQ'),('CM35791','Municipio M'),('CM45678','Municipio D'),('CM46802','Municipio N'),('CM46813','Municipio X'),('CM46824','Municipio AH'),('CM46835','Municipio AR'),('CM56789','Municipio E'),('CM57913','Municipio O'),('CM57924','Municipio Y'),('CM57935','Municipio AI'),('CM57946','Municipio AS'),('CM67890','Municipio F'),('CM68024','Municipio P'),('CM68035','Municipio Z'),('CM68046','Municipio AJ'),('CM68057','Municipio AT'),('CM78901','Municipio G'),('CM79135','Municipio Q'),('CM79146','Municipio AA'),('CM79157','Municipio AK'),('CM79168','Municipio AU'),('CM80246','Municipio R'),('CM80257','Municipio AB'),('CM80268','Municipio AL'),('CM80279','Municipio AV'),('CM89012','Municipio H'),('CM90123','Municipio I'),('CM91357','Municipio S'),('CM91368','Municipio AC'),('CM91379','Municipio AM'),('CM91380','Municipio AW');
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

-- Dump completed on 2025-01-27 11:38:27
