-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: gym
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `rutinaejercicio`
--

DROP TABLE IF EXISTS `rutinaejercicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rutinaejercicio` (
  `idRutinaEjercicio` int NOT NULL AUTO_INCREMENT,
  `Ejercicio_idEjercicio` int NOT NULL,
  `Rutina_idRutina` int NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`idRutinaEjercicio`,`Ejercicio_idEjercicio`,`Rutina_idRutina`),
  KEY `fk_Ejercicio_has_Rutina_Rutina1_idx` (`Rutina_idRutina`),
  KEY `fk_Ejercicio_has_Rutina_Ejercicio_idx` (`Ejercicio_idEjercicio`),
  CONSTRAINT `fk_Ejercicio_has_Rutina_Ejercicio` FOREIGN KEY (`Ejercicio_idEjercicio`) REFERENCES `ejercicio` (`idEjercicio`),
  CONSTRAINT `fk_Ejercicio_has_Rutina_Rutina1` FOREIGN KEY (`Rutina_idRutina`) REFERENCES `rutina` (`idRutina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rutinaejercicio`
--

LOCK TABLES `rutinaejercicio` WRITE;
/*!40000 ALTER TABLE `rutinaejercicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `rutinaejercicio` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-14 13:01:20
