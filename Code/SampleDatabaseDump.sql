CREATE DATABASE  IF NOT EXISTS `INFO6150Final` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `INFO6150Final`;
-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: INFO6150Final
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Table structure for table `File`
--

DROP TABLE IF EXISTS `File`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `File` (
  `FileID` int(11) NOT NULL AUTO_INCREMENT,
  `FilePath` varchar(255) DEFAULT NULL,
  `PostID` int(11) DEFAULT NULL,
  PRIMARY KEY (`FileID`),
  KEY `FK_7ymcc7hoi18wj48lpja5kvld` (`PostID`),
  CONSTRAINT `FK_7ymcc7hoi18wj48lpja5kvld` FOREIGN KEY (`PostID`) REFERENCES `Post` (`PostID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
/*!40000 ALTER TABLE `File` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Post`
--

DROP TABLE IF EXISTS `Post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Post` (
  `PostID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(45) NOT NULL,
  `Body` longtext,
  `UID` int(11) DEFAULT NULL,
  PRIMARY KEY (`PostID`),
  KEY `FK_7t998o9i03owx7ly5yh5i3l9t` (`UID`),
  CONSTRAINT `FK_7t998o9i03owx7ly5yh5i3l9t` FOREIGN KEY (`UID`) REFERENCES `User` (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Post`
--

LOCK TABLES `Post` WRITE;
/*!40000 ALTER TABLE `Post` DISABLE KEYS */;
INSERT INTO `Post` VALUES (60,'User Update Test Post Title 181','User Update Test Post Budy 181',181),(61,'Post Update Test Post Title 61','Post Update Test Post Budy 61',181),(62,'Post Update Test Post Title 62','Post Update Test Post Budy 62',181),(63,'Post Update Test Post Title 63','Post Update Test Post Budy 63',181);
/*!40000 ALTER TABLE `Post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `UID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(45) NOT NULL,
  `PassWord` varchar(45) NOT NULL,
  `Email` varchar(100) NOT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (181,'User Update Test User Name181','1','UserUpdateTestEmail181@mail.com');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserFile`
--

DROP TABLE IF EXISTS `UserFile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserFile` (
  `FileID` int(11) NOT NULL AUTO_INCREMENT,
  `FilePath` longtext,
  `PostID` int(11) DEFAULT NULL,
  PRIMARY KEY (`FileID`),
  KEY `FK_76l9opkmu21ghsur66fhpe35k` (`PostID`),
  CONSTRAINT `FK_76l9opkmu21ghsur66fhpe35k` FOREIGN KEY (`PostID`) REFERENCES `Post` (`PostID`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserFile`
--

LOCK TABLES `UserFile` WRITE;
/*!40000 ALTER TABLE `UserFile` DISABLE KEYS */;
INSERT INTO `UserFile` VALUES (77,'../static/IMG/1508267412032tree-archway-vienna-austria.adapt.1900.1.jpg',60),(78,'../static/IMG/1508267417676place_to_travel_1.jpeg',61),(79,'../static/IMG/1508267424571place_to_travel_2.jpeg',62),(80,'../static/IMG/1508267430702place_to_travel_6.jpeg',63),(81,'../static/IMG/1508269432608place_to_travel_7.jpeg',63);
/*!40000 ALTER TABLE `UserFile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'INFO6150Final'
--

--
-- Dumping routines for database 'INFO6150Final'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-17 15:46:45
