CREATE DATABASE  IF NOT EXISTS `desafio4` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `desafio4`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: desafio4
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `alumno` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,'Jorge L. Guanipa S.'),(2,'Daniel A. Hernandez P.'),(3,'Carlos A. Albornoz R. '),(4,'Franklin A. Barco. l '),(5,' 	Luis Eduardo J. Ramirez O. '),(6,'Miguel A. Yustiz C. '),(7,'Daniel Chinchilla '),(8,'Christopher Gomez '),(9,'Eduardo L. Mejias A. '),(10,'Jesús Rojas Dellan ');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `alumno_mes_pasado`
--

DROP TABLE IF EXISTS `alumno_mes_pasado`;
/*!50001 DROP VIEW IF EXISTS `alumno_mes_pasado`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `alumno_mes_pasado` AS SELECT 
 1 AS `Seccion`,
 1 AS `Nombre`,
 1 AS `Curso`,
 1 AS `fecha_inscripcion`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `alumno_seccion`
--

DROP TABLE IF EXISTS `alumno_seccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `alumno_seccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alumno_id` int(11) NOT NULL,
  `seccion_id` int(11) NOT NULL,
  `fecha_inscripcion` date NOT NULL,
  `al_sec_costo` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno_seccion`
--

LOCK TABLES `alumno_seccion` WRITE;
/*!40000 ALTER TABLE `alumno_seccion` DISABLE KEYS */;
INSERT INTO `alumno_seccion` VALUES (1,1,7,'2019-05-16',99000),(2,2,6,'2019-05-15',85000),(3,3,5,'2019-05-18',101000),(4,4,4,'2019-05-11',90000),(5,5,3,'2019-05-16',95000),(6,6,2,'2019-05-18',101000),(7,5,1,'2019-05-16',80000),(8,6,7,'2019-05-16',75000),(9,7,1,'2019-05-16',101000),(10,8,2,'2019-05-16',110000),(11,9,3,'2019-05-11',99000),(12,10,3,'2019-05-11',95000),(13,4,2,'2019-05-15',85000),(23,5,5,'2019-03-15',10000);
/*!40000 ALTER TABLE `alumno_seccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `curso_costo` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'MySQL',105000),(2,'Php',101000),(3,'HTML ',112000),(4,'LOGICA1',120000),(5,'POO1',125000),(6,'GIT',200000),(7,'Javascript',150000);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `profesor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (1,'Jose L Rojas Dellan'),(2,'Darwist Rivero'),(3,'Andrea Hernandez'),(4,'Eduardo Mejias'),(5,'Miguel'),(6,'Jesus'),(7,'Jose'),(8,'Carlos'),(9,'Darwist'),(10,'Luis');
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seccion`
--

DROP TABLE IF EXISTS `seccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `seccion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date DEFAULT NULL,
  `curso_id` tinyint(5) NOT NULL,
  `profesor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2931 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seccion`
--

LOCK TABLES `seccion` WRITE;
/*!40000 ALTER TABLE `seccion` DISABLE KEYS */;
INSERT INTO `seccion` VALUES (1,'2019-05-18',1,1),(2,'2019-05-20',2,2),(3,'2019-05-20',4,8),(4,'2019-04-15',5,3),(5,'2019-04-20',6,7),(6,'2019-04-10',7,8),(7,'2019-03-20',3,5),(8,'2019-03-15',1,4),(9,'2019-03-10',2,9),(10,'2019-02-20',4,10);
/*!40000 ALTER TABLE `seccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'desafio4'
--

--
-- Dumping routines for database 'desafio4'
--

--
-- Final view structure for view `alumno_mes_pasado`
--

/*!50001 DROP VIEW IF EXISTS `alumno_mes_pasado`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alumno_mes_pasado` AS select `alumno_seccion`.`seccion_id` AS `Seccion`,`alumno`.`nombre` AS `Nombre`,`curso`.`nombre` AS `Curso`,`alumno_seccion`.`fecha_inscripcion` AS `fecha_inscripcion` from (((`alumno_seccion` join `alumno` on((`alumno_seccion`.`alumno_id` = `alumno`.`id`))) join `seccion` on((`alumno_seccion`.`seccion_id` = `seccion`.`id`))) join `curso` on((`seccion`.`curso_id` = `curso`.`id`))) where (`alumno_seccion`.`fecha_inscripcion` between '2019-04-01' and '2019-06-01') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-23  8:58:30
