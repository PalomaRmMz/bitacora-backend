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
  `id_rg_usuarios` int NOT NULL AUTO_INCREMENT,
  `id_dt_usuario` int NOT NULL,
  `nombre_usuario` varchar(50) NOT NULL,
  `id_tipo` int NOT NULL,
  PRIMARY KEY (`id_rg_usuarios`),
  KEY `id_dt_usuario` (`id_dt_usuario`),
  KEY `id_tipo` (`id_tipo`),
  CONSTRAINT `rg_usuarios_ibfk_1` FOREIGN KEY (`id_dt_usuario`) REFERENCES `dt_usuario` (`id_dt_usuario`) ON DELETE CASCADE,
  CONSTRAINT `rg_usuarios_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `cat_usuario` (`id_tipo`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rg_usuarios`
--

LOCK TABLES `rg_usuarios` WRITE;
/*!40000 ALTER TABLE `rg_usuarios` DISABLE KEYS */;
INSERT INTO `rg_usuarios` VALUES (1,1,'capturista1',4),(2,2,'capturista2',4),(3,3,'capturista3',4),(4,4,'recepcionista1',2),(5,5,'recepcionista2',2);
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

-- Dump completed on 2025-01-26 11:58:49
