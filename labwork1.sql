-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: LabworkReact
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `farmfileds`
--

DROP TABLE IF EXISTS `farmfileds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmfileds` (
  `idfarmfileds` int(11) NOT NULL AUTO_INCREMENT,
  `fileds` varchar(45) NOT NULL,
  PRIMARY KEY (`idfarmfileds`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmfileds`
--

LOCK TABLES `farmfileds` WRITE;
/*!40000 ALTER TABLE `farmfileds` DISABLE KEYS */;
INSERT INTO `farmfileds` VALUES (5,'field 1'),(11,'field 2'),(12,'filed 3'),(14,'filed 4'),(15,'field 5');
/*!40000 ALTER TABLE `farmfileds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farming`
--

DROP TABLE IF EXISTS `farming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farming` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farming`
--

LOCK TABLES `farming` WRITE;
/*!40000 ALTER TABLE `farming` DISABLE KEYS */;
INSERT INTO `farming` VALUES (1,'r','r','rr','r'),(3,'ekjot','ek@jot','2431321','qad323');
/*!40000 ALTER TABLE `farming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vegetables`
--

DROP TABLE IF EXISTS `vegetables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vegetables` (
  `idvegetables` int(11) NOT NULL,
  `farmfiled` varchar(45) NOT NULL,
  `vegetables` varchar(45) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`idvegetables`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vegetables`
--

LOCK TABLES `vegetables` WRITE;
/*!40000 ALTER TABLE `vegetables` DISABLE KEYS */;
INSERT INTO `vegetables` VALUES (1,'filed 1','peas',1000),(2,'filed 2','carrots',500),(3,'filed 3','corn',750),(4,'filed 4','broccoli',1000),(5,'filed 5','zucchini',1000);
/*!40000 ALTER TABLE `vegetables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vegprice`
--

DROP TABLE IF EXISTS `vegprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vegprice` (
  `idvegprice` int(11) NOT NULL,
  `veg` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  PRIMARY KEY (`idvegprice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vegprice`
--

LOCK TABLES `vegprice` WRITE;
/*!40000 ALTER TABLE `vegprice` DISABLE KEYS */;
INSERT INTO `vegprice` VALUES (1,'peas','14'),(2,'carrots','17'),(3,'corn','10'),(4,'broccoli','23'),(5,'zucchini','25');
/*!40000 ALTER TABLE `vegprice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-26 21:23:47
