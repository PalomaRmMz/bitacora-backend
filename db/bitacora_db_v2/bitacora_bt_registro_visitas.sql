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
-- Table structure for table `bt_registro_visitas`
--

DROP TABLE IF EXISTS `bt_registro_visitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bt_registro_visitas` (
  `id_registro_visita` int NOT NULL AUTO_INCREMENT,
  `id_visitante` int DEFAULT NULL,
  `id_recepcionista` int DEFAULT NULL,
  `fecha_visita` date NOT NULL,
  `hora_visita` time NOT NULL,
  `asunto` varchar(255) DEFAULT NULL,
  `observaciones` text,
  PRIMARY KEY (`id_registro_visita`),
  KEY `id_visitante` (`id_visitante`),
  KEY `id_recepcionista` (`id_recepcionista`),
  CONSTRAINT `bt_registro_visitas_ibfk_1` FOREIGN KEY (`id_visitante`) REFERENCES `dt_visitantes` (`id_visitante`),
  CONSTRAINT `bt_registro_visitas_ibfk_2` FOREIGN KEY (`id_recepcionista`) REFERENCES `rg_usuarios` (`id_rg_usuarios`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bt_registro_visitas`
--

LOCK TABLES `bt_registro_visitas` WRITE;
/*!40000 ALTER TABLE `bt_registro_visitas` DISABLE KEYS */;
INSERT INTO `bt_registro_visitas` VALUES (1,1,2,'2025-01-01','10:00:00','Reunión de trabajo','Llegó puntualmente'),(2,2,2,'2025-01-02','11:30:00','Entrega de documentos','Trajo toda la documentación requerida'),(3,3,4,'2025-01-03','09:00:00','Consulta','Requiere información adicional'),(4,4,4,'2025-01-04','12:45:00','Revisión de proyecto','Sugirió cambios importantes'),(5,5,2,'2025-01-05','08:15:00','Solicitud de apoyo','Se registró su solicitud correctamente');
/*!40000 ALTER TABLE `bt_registro_visitas` ENABLE KEYS */;
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
