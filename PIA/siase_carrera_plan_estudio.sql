-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: siase
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carrera_plan_estudio`
--

DROP TABLE IF EXISTS `carrera_plan_estudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera_plan_estudio` (
  `ID` int(11) NOT NULL,
  `ID_CARRERA` int(11) NOT NULL,
  `ID_PLAN_ESTUDIO` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_CARRERA` (`ID_CARRERA`),
  KEY `ID_PLAN_ESTUDIO` (`ID_PLAN_ESTUDIO`),
  CONSTRAINT `carrera_plan_estudio_ibfk_1` FOREIGN KEY (`ID_CARRERA`) REFERENCES `carrera` (`ID`),
  CONSTRAINT `carrera_plan_estudio_ibfk_2` FOREIGN KEY (`ID_PLAN_ESTUDIO`) REFERENCES `plan_estudio` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera_plan_estudio`
--

LOCK TABLES `carrera_plan_estudio` WRITE;
/*!40000 ALTER TABLE `carrera_plan_estudio` DISABLE KEYS */;
INSERT INTO `carrera_plan_estudio` VALUES (1,1,1);
/*!40000 ALTER TABLE `carrera_plan_estudio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-07  7:40:13