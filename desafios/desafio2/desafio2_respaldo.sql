-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: desafio2
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
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `factura` (
  `id` bigint(100) unsigned NOT NULL AUTO_INCREMENT,
  `numero` bigint(20) unsigned NOT NULL,
  `id_cliente` int(10) unsigned NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `monto` float(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero_UNIQUE` (`numero`),
  KEY `idcliente_idx` (`id_cliente`),
  KEY `fecha_idx` (`fecha`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,1,1,'2019-06-05 04:00:00',1000.00),(2,2,2,'2019-06-06 04:00:00',2000.00),(3,3,3,'2019-06-07 04:00:00',3000.00),(4,4,4,'2019-06-08 04:00:00',4000.00),(5,5,5,'2019-06-09 04:00:00',5000.00);
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `producto` (
  `id` bigint(100) unsigned NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `descripcion` text,
  `existencia` int(10) unsigned NOT NULL,
  `precio` decimal(10,2) unsigned NOT NULL,
  `fecha_vencimiento` datetime DEFAULT NULL,
  `codigo` int(10) unsigned zerofill NOT NULL,
  `foto` blob,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`),
  KEY `codigo_idx` (`codigo`),
  KEY `fecha_idx` (`fecha_vencimiento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'faro hilux 12','faro de hilux de 2012 a 2018',10,1000.00,'2020-07-07 00:00:00',0000000123,NULL),(2,'faro hilux 09-11','faro de hilux de 2009 a 2011',8,1000.00,'2020-07-07 00:00:00',0000000456,NULL),(3,'stop hilux 12','stop de hilux de 2012 a 2018',20,500.00,'2020-12-10 00:00:00',0000000147,NULL),(4,'stop hilux 09-11','stop de hilux de 02009 a 2011',20,500.00,'2020-12-10 00:00:00',0000000258,NULL),(5,'faro generico 12','faro reemplazo de hilux de 2012 a 2018',7,700.00,'2020-05-05 00:00:00',0000000789,NULL);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_factura`
--

DROP TABLE IF EXISTS `producto_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `producto_factura` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_producto` bigint(20) unsigned NOT NULL,
  `id_factura` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idpro_x_idfac_idx` (`id_producto`,`id_factura`),
  KEY `idproducto_idx` (`id_producto`),
  KEY `idfactura_idx` (`id_factura`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_factura`
--

LOCK TABLES `producto_factura` WRITE;
/*!40000 ALTER TABLE `producto_factura` DISABLE KEYS */;
INSERT INTO `producto_factura` VALUES (1,3,1),(2,5,2),(3,2,3),(4,3,4),(5,1,5);
/*!40000 ALTER TABLE `producto_factura` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-16  9:08:52
