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
-- Table structure for table `rg_usuarios`
--

DROP TABLE IF EXISTS `rg_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rg_usuarios` (
  `id_rg_usuarios` varchar(7) NOT NULL,
  `id_dt_usuario` varchar(7) NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `id_tipo` varchar(7) NOT NULL,
  PRIMARY KEY (`id_rg_usuarios`),
  KEY `id_dt_usuario` (`id_dt_usuario`),
  KEY `id_tipo` (`id_tipo`),
  CONSTRAINT `rg_usuarios_ibfk_1` FOREIGN KEY (`id_dt_usuario`) REFERENCES `dt_usuario` (`id_dt_usuario`) ON DELETE CASCADE,
  CONSTRAINT `rg_usuarios_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `cat_usuario` (`id_tipo`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rg_usuarios`
--

LOCK TABLES `rg_usuarios` WRITE;
/*!40000 ALTER TABLE `rg_usuarios` DISABLE KEYS */;
INSERT INTO `rg_usuarios` VALUES ('RU00001','DU00001','juan.perez','CU23456'),('RU00002','DU00002','ana.martinez','CU23456'),('RU00003','DU00003','carlos.rodriguez','CU23456'),('RU00004','DU00004','luis.gonzalez','CU23456'),('RU00005','DU00005','maria.lopez','CU23456'),('RU00006','DU00006','jose.hernandez','CU23456'),('RU00007','DU00007','pedro.torres','CU23456'),('RU00008','DU00008','laura.diaz','CU23456'),('RU00009','DU00009','miguel.ramirez','CU23456'),('RU00010','DU00010','claudia.fernandez','CU23456'),('RU00011','DU00011','roberto.sanchez','CU23456'),('RU00012','DU00012','veronica.rios','CU23456'),('RU00013','DU00013','felipe.rodriguez','CU23456'),('RU00014','DU00014','elena.gonzalez','CU23456'),('RU00015','DU00015','ricardo.perez','CU23456'),('RU00016','DU00016','teresa.martinez','CU23456'),('RU00017','DU00017','gerardo.gomez','CU23456'),('RU00018','DU00018','patricia.vazquez','CU23456'),('RU00019','DU00019','andres.sanchez','CU23456'),('RU00020','DU00020','marisol.diaz','CU23456'),('RU00021','DU00021','sergio.morales','CU23456'),('RU00022','DU00022','francisco.torres','CU23456'),('RU00023','DU00023','rocio.lopez','CU23456'),('RU00024','DU00024','juanita.vega','CU23456'),('RU00025','DU00025','ricardo.morales','CU23456');
/*!40000 ALTER TABLE `rg_usuarios` ENABLE KEYS */;
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
