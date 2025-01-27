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
  `id_visitante` varchar(7) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `a_paterno` varchar(100) NOT NULL,
  `a_materno` varchar(100) NOT NULL,
  `fecha_cumpleanos` date DEFAULT NULL,
  `calle` varchar(150) DEFAULT NULL,
  `numero_interior` varchar(20) DEFAULT NULL,
  `numero_exterior` varchar(20) DEFAULT NULL,
  `id_colonia` varchar(7) DEFAULT NULL,
  `id_municipio` varchar(7) DEFAULT NULL,
  `id_estado` varchar(7) DEFAULT NULL,
  `id_cp` varchar(7) DEFAULT NULL,
  `id_seccion_electoral` varchar(7) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_visitantes`
--

LOCK TABLES `dt_visitantes` WRITE;
/*!40000 ALTER TABLE `dt_visitantes` DISABLE KEYS */;
INSERT INTO `dt_visitantes` VALUES ('DV00001','Juan','Perez','Lopez','1990-05-15','Av. Reforma','101','A','CC12345','CM12345','CE00001','CP12345','CS12345','juan.perez@example.com','5551234567'),('DV00002','Maria','Lopez','Hernandez','1988-10-22','Calle Juarez','102','B','CC23456','CM23456','CE00002','CP23456','CS23456','maria.lopez@example.com','5552345678'),('DV00003','Carlos','Hernandez','Martinez','1992-07-11','Av. Insurgentes','103','C','CC34567','CM34567','CE00003','CP34567','CS34567','carlos.hernandez@example.com','5553456789'),('DV00004','Ana','Martinez','Garcia','1995-12-08','Calle Morelos','104','D','CC45678','CM45678','CE00004','CP45678','CS45678','ana.martinez@example.com','5554567890'),('DV00005','Luis','Garcia','Gonzalez','1987-04-18','Calle Hidalgo','105','E','CC56789','CM56789','CE00005','CP56789','CS56789','luis.garcia@example.com','5555678901'),('DV00006','Laura','Gonzalez','Diaz','1993-03-25','Calle Independencia','106','F','CC67890','CM67890','CE00006','CP67890','CS67890','laura.gonzalez@example.com','5556789012'),('DV00007','Miguel','Diaz','Ramirez','1989-09-14','Av. Universidad','107','G','CC78901','CM78901','CE00007','CP78901','CS78901','miguel.diaz@example.com','5557890123'),('DV00008','Claudia','Ramirez','Sanchez','1991-06-05','Calle Benito Juarez','108','H','CC89012','CM89012','CE00008','CP89012','CS89012','claudia.ramirez@example.com','5558901234'),('DV00009','Roberto','Sanchez','Fernandez','1994-11-30','Calle Victoria','109','I','CC90123','CM90123','CE00009','CP90123','CS90123','roberto.sanchez@example.com','5559012345'),('DV00010','Veronica','Fernandez','Torres','1986-02-27','Av. Central','110','J','CC01234','CM01234','CE00010','CP01234','CS01234','veronica.fernandez@example.com','5550123456'),('DV00011','Felipe','Torres','Lopez','1985-01-13','Calle Progreso','111','K','CC13579','CM13579','CE00011','CP13579','CS13579','felipe.torres@example.com','5551112223'),('DV00012','Elena','Lopez','Perez','1998-08-24','Calle Esperanza','112','L','CC24680','CM24680','CE00012','CP24680','CS24680','elena.lopez@example.com','5552223334'),('DV00013','Ricardo','Perez','Martinez','1997-03-17','Av. Libertad','113','M','CC35791','CM35791','CE00013','CP35791','CS35791','ricardo.perez@example.com','5553334445'),('DV00014','Teresa','Martinez','Hernandez','1990-09-09','Calle Democracia','114','N','CC46802','CM46802','CE00014','CP46802','CS46802','teresa.martinez@example.com','5554445556'),('DV00015','Gerardo','Hernandez','Gomez','1983-04-29','Av. Reforma','115','O','CC57913','CM57913','CE00015','CP57913','CS57913','gerardo.hernandez@example.com','5555556667'),('DV00016','Patricia','Gomez','Lopez','1999-07-02','Calle Morelos','116','P','CC68024','CM68024','CE00016','CP68024','CS68024','patricia.gomez@example.com','5556667778'),('DV00017','Andres','Lopez','Vazquez','1995-05-21','Av. Hidalgo','117','Q','CC79135','CM79135','CE00017','CP79135','CS79135','andres.lopez@example.com','5557778889'),('DV00018','Marisol','Vazquez','Sanchez','1982-10-10','Calle Juarez','118','R','CC80246','CM80246','CE00018','CP80246','CS80246','marisol.vazquez@example.com','5558889990'),('DV00019','Sergio','Sanchez','Morales','1994-12-12','Calle Victoria','119','S','CC91357','CM91357','CE00019','CP91357','CS91357','sergio.sanchez@example.com','5559990001'),('DV00020','Francisco','Morales','Ramirez','1987-08-06','Av. Universidad','120','T','CC02468','CM02468','CE00020','CP02468','CS02468','francisco.morales@example.com','5550001112'),('DV49478','Paloma','sad','Meza','1989-01-01','Andador del Secretario Edificio','4','29','CC91379','CM80268','CE00029','CP02491','CS57913','34','34'),('DV99996','Paloma','ewer','Meza','1989-01-01','Andador del Secretario Edificio','4','29','CC12345','CM79157','CE00029','CP02479','CS46802','34','234234234'),('DV99997','Paloma','ewer','Meza','1989-01-01','Andador del Secretario Edificio','4','29','CC12345','CM79157','CE00029','CP02479','CS46802','34','234234234'),('DV99998','Paloma','ewer','Meza','1989-01-01','Andador del Secretario Edificio','4','29','CC12345','CM79157','CE00029','CP02479','CS46802','34','234234234'),('DV99999','Juan','Pérez','Gómez','1990-01-01','Calle Ficticia','100','10','CC01234','CM01234','CE00001','CP02480','CS13580','juanperez@gmail.com','1234567890');
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

-- Dump completed on 2025-01-27 11:38:28
