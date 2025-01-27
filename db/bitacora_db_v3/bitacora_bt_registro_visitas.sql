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
  `id_registro_visita` varchar(7) NOT NULL,
  `id_visitante` varchar(7) NOT NULL,
  `id_recepcionista` varchar(7) NOT NULL,
  `fecha_visita` date NOT NULL,
  `hora_visita` time NOT NULL,
  `asunto` varchar(255) NOT NULL,
  `observaciones` text,
  PRIMARY KEY (`id_registro_visita`),
  KEY `id_visitante` (`id_visitante`),
  KEY `id_recepcionista` (`id_recepcionista`),
  CONSTRAINT `bt_registro_visitas_ibfk_1` FOREIGN KEY (`id_visitante`) REFERENCES `dt_visitantes` (`id_visitante`),
  CONSTRAINT `bt_registro_visitas_ibfk_2` FOREIGN KEY (`id_recepcionista`) REFERENCES `rg_usuarios` (`id_rg_usuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bt_registro_visitas`
--

LOCK TABLES `bt_registro_visitas` WRITE;
/*!40000 ALTER TABLE `bt_registro_visitas` DISABLE KEYS */;
INSERT INTO `bt_registro_visitas` VALUES ('RV00001','DV00001','RU00001','2025-01-01','09:00:00','Entrega de documentación','Ninguna'),('RV00002','DV00002','RU00002','2025-01-02','10:15:00','Reunión de seguimiento','Se acordó nueva fecha para entrega'),('RV00003','DV00003','RU00003','2025-01-03','11:30:00','Consulta de trámites','Se proporcionaron formatos requeridos'),('RV00004','DV00004','RU00004','2025-01-04','08:45:00','Revisión de proyecto','Se entregaron observaciones'),('RV00005','DV00005','RU00005','2025-01-05','14:00:00','Reunión informativa','Se distribuyeron materiales'),('RV00006','DV00006','RU00001','2025-01-06','15:30:00','Entrega de solicitud','Solicitud incompleta'),('RV00007','DV00007','RU00002','2025-01-07','16:45:00','Consulta general','Se brindó asesoría'),('RV00008','DV00008','RU00003','2025-01-08','13:00:00','Firma de convenio','Convenio firmado sin cambios'),('RV00009','DV00009','RU00004','2025-01-09','11:15:00','Presentación de informe','Informe entregado y revisado'),('RV00010','DV00010','RU00005','2025-01-10','09:30:00','Reunión extraordinaria','Asistieron todos los involucrados'),('RV00011','DV00011','RU00001','2025-01-11','10:00:00','Solicitud de información','Solicitud procesada'),('RV00012','DV00012','RU00002','2025-01-12','14:15:00','Consulta de avances','Se proporcionó estatus actualizado'),('RV00013','DV00013','RU00003','2025-01-13','12:30:00','Entrega de proyecto','Proyecto en condiciones aceptables'),('RV00014','DV00014','RU00004','2025-01-14','08:50:00','Revisión de actas','Documentos completos'),('RV00015','DV00015','RU00005','2025-01-15','11:00:00','Firma de contrato','Contrato firmado con comentarios mínimos'),('RV00016','DV00016','RU00001','2025-01-16','13:45:00','Consulta administrativa','Consulta atendida en ventanilla'),('RV00017','DV00017','RU00002','2025-01-17','09:10:00','Entrega de credenciales','Credenciales entregadas a tiempo'),('RV00018','DV00018','RU00003','2025-01-18','16:00:00','Revisión de manual','Manual actualizado entregado'),('RV00019','DV00019','RU00004','2025-01-19','14:30:00','Entrega de informe','Informe revisado y aceptado'),('RV00020','DV00020','RU00005','2025-01-20','15:00:00','Presentación de solicitud','Solicitud aceptada con modificaciones'),('RV63633','DV49478','RU00001','2025-01-27','11:22:00','asdasd','asdasd'),('RV99999','DV99999','RU00025','2025-01-30','10:00:00','Visita de prueba','Ninguna');
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

-- Dump completed on 2025-01-27 11:38:26
