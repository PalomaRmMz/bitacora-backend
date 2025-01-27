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
-- Table structure for table `dt_visitantes`
--

DROP TABLE IF EXISTS `dt_visitantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dt_visitantes` (
  `id_visitante` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `a_paterno` varchar(100) NOT NULL,
  `a_materno` varchar(100) NOT NULL,
  `fecha_cumpleanos` date NOT NULL,
  `calle` varchar(150) NOT NULL,
  `numero_interior` varchar(20) DEFAULT NULL,
  `numero_exterior` varchar(20) DEFAULT NULL,
  `id_colonia` int DEFAULT NULL,
  `id_municipio` int DEFAULT NULL,
  `id_estado` int DEFAULT NULL,
  `id_cp` int DEFAULT NULL,
  `id_seccion_electoral` int DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `numero_celular` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_visitante`),
  KEY `id_colonia` (`id_colonia`),
  KEY `id_municipio` (`id_municipio`),
  KEY `id_estado` (`id_estado`),
  KEY `id_seccion_electoral` (`id_seccion_electoral`),
  KEY `id_cp` (`id_cp`),
  CONSTRAINT `dt_visitantes_ibfk_1` FOREIGN KEY (`id_colonia`) REFERENCES `cat_colonias` (`id_colonia`),
  CONSTRAINT `dt_visitantes_ibfk_2` FOREIGN KEY (`id_municipio`) REFERENCES `cat_municipios` (`id_municipio`),
  CONSTRAINT `dt_visitantes_ibfk_3` FOREIGN KEY (`id_estado`) REFERENCES `cat_estados` (`id_estado`),
  CONSTRAINT `dt_visitantes_ibfk_4` FOREIGN KEY (`id_seccion_electoral`) REFERENCES `cat_secciones_electorales` (`id_seccion_electoral`),
  CONSTRAINT `dt_visitantes_ibfk_5` FOREIGN KEY (`id_cp`) REFERENCES `cat_codigos_postales` (`id_cp`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_visitantes`
--

LOCK TABLES `dt_visitantes` WRITE;
/*!40000 ALTER TABLE `dt_visitantes` DISABLE KEYS */;
INSERT INTO `dt_visitantes` VALUES (1,'Luis','García','Pérez','1980-05-15','Calle Principal','10','20',1,1,1,1,1,'luis.garcia@example.com','5551234567'),(2,'Ana','Martínez','López','1990-10-25','Calle Secundaria','15','25',2,2,2,2,2,'ana.martinez@example.com','5559876543'),(3,'José','Hernández','Gómez','1985-03-12','Avenida Central','S/N','50',3,3,3,3,3,'jose.hernandez@example.com','5556543210'),(4,'María','Ramírez','Hernández','1995-07-08','Boulevard Reforma','S/N','S/N',4,4,4,4,4,'maria.ramirez@example.com','5553456789'),(5,'Carlos','Sánchez','Ruiz','2000-01-20','Callejón Juárez','S/N','30',5,5,5,5,5,'carlos.sanchez@example.com','5556789123');
/*!40000 ALTER TABLE `dt_visitantes` ENABLE KEYS */;
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
