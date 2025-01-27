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
-- Table structure for table `dt_usuario`
--

DROP TABLE IF EXISTS `dt_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dt_usuario` (
  `id_dt_usuario` varchar(7) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `a_paterno` varchar(50) NOT NULL,
  `a_materno` varchar(50) NOT NULL,
  PRIMARY KEY (`id_dt_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_usuario`
--

LOCK TABLES `dt_usuario` WRITE;
/*!40000 ALTER TABLE `dt_usuario` DISABLE KEYS */;
INSERT INTO `dt_usuario` VALUES ('DU00001','Juan','Pérez','Gómez'),('DU00002','Ana','Martínez','López'),('DU00003','Carlos','Rodríguez','Sánchez'),('DU00004','Luis','González','Hernández'),('DU00005','María','López','Ramírez'),('DU00006','José','Hernández','Vega'),('DU00007','Pedro','Torres','Morales'),('DU00008','Laura','Díaz','Pérez'),('DU00009','Miguel','Ramírez','Flores'),('DU00010','Claudia','Fernández','Gutiérrez'),('DU00011','Roberto','Sánchez','García'),('DU00012','Verónica','Ríos','Martínez'),('DU00013','Felipe','Rodríguez','Martínez'),('DU00014','Elena','González','Vázquez'),('DU00015','Ricardo','Pérez','López'),('DU00016','Teresa','Martínez','Sánchez'),('DU00017','Gerardo','Gómez','Ramírez'),('DU00018','Patricia','Vázquez','Torres'),('DU00019','Andrés','Sánchez','Vega'),('DU00020','Marisol','Díaz','González'),('DU00021','Sergio','Morales','Gómez'),('DU00022','Francisco','Torres','Hernández'),('DU00023','Rocío','López','Ramírez'),('DU00024','Juanita','Vega','Gómez'),('DU00025','Ricardo','Morales','Flores'),('DU00026','Carmen','Sánchez','Rodríguez'),('DU00027','Antonio','López','Vázquez'),('DU00029','Julio','González','Morales'),('DU00030','Esteban','Ramírez','Vega'),('DU0028','Isabel','Torres','Gutiérrez');
/*!40000 ALTER TABLE `dt_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-27 11:38:28
